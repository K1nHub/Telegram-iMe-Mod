package com.microsoft.appcenter.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteQueryBuilder;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.microsoft.appcenter.Constants;
import com.microsoft.appcenter.Flags;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import com.microsoft.appcenter.ingestion.models.one.PartAUtils;
import com.microsoft.appcenter.persistence.Persistence;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import com.microsoft.appcenter.utils.storage.DatabaseManager;
import com.microsoft.appcenter.utils.storage.FileManager;
import com.microsoft.appcenter.utils.storage.SQLiteUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class DatabasePersistence extends Persistence {
    static final ContentValues SCHEMA = getContentValues("", "", "", "", "", 0);
    private final Context mContext;
    final DatabaseManager mDatabaseManager;
    private final File mLargePayloadDirectory;
    private long mLargePayloadsSize;
    final Set<Long> mPendingDbIdentifiers;
    final Map<String, List<Long>> mPendingDbIdentifiersGroups;

    public DatabasePersistence(Context context) {
        this(context, 6, SCHEMA);
    }

    DatabasePersistence(Context context, int version, final ContentValues schema) {
        this.mContext = context;
        this.mPendingDbIdentifiersGroups = new HashMap();
        this.mPendingDbIdentifiers = new HashSet();
        this.mDatabaseManager = new DatabaseManager(context, "com.microsoft.appcenter.persistence", "logs", version, schema, "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);", new DatabaseManager.Listener(this) { // from class: com.microsoft.appcenter.persistence.DatabasePersistence.1
            @Override // com.microsoft.appcenter.utils.storage.DatabaseManager.Listener
            public void onCreate(SQLiteDatabase db) {
                db.execSQL("CREATE INDEX `ix_logs_priority` ON logs (`priority`)");
            }

            @Override // com.microsoft.appcenter.utils.storage.DatabaseManager.Listener
            public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
                db.execSQL("DROP TABLE `logs`");
                db.execSQL("CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);");
                db.execSQL("CREATE INDEX `ix_logs_priority` ON logs (`priority`)");
            }
        });
        File file = new File(Constants.FILES_PATH + "/appcenter/database_large_payloads");
        this.mLargePayloadDirectory = file;
        file.mkdirs();
        this.mLargePayloadsSize = checkLargePayloadFilesAndCollectTheirSize();
    }

    private static ContentValues getContentValues(String group, String logJ, String targetToken, String type, String targetKey, int priority) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("persistence_group", group);
        contentValues.put("log", logJ);
        contentValues.put("target_token", targetToken);
        contentValues.put(SessionDescription.ATTR_TYPE, type);
        contentValues.put("target_key", targetKey);
        contentValues.put("priority", Integer.valueOf(priority));
        return contentValues;
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public boolean setMaxStorageSize(long maxStorageSizeInBytes) {
        boolean maxSize = this.mDatabaseManager.setMaxSize(maxStorageSizeInBytes);
        deleteLogsThatNotFitMaxSize();
        return maxSize;
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public long putLog(Log log, String group, int flags) throws Persistence.PersistenceException {
        String str;
        String str2;
        try {
            try {
                AppCenterLog.debug("AppCenter", "Storing a log to the Persistence database for log type " + log.getType() + " with flags=" + flags);
                String serializeLog = getLogSerializer().serializeLog(log);
                int length = serializeLog.getBytes("UTF-8").length;
                boolean z = length >= 1992294;
                Long l = null;
                if (!(log instanceof CommonSchemaLog)) {
                    str = null;
                    str2 = null;
                } else if (z) {
                    throw new Persistence.PersistenceException("Log is larger than 1992294 bytes, cannot send to OneCollector.");
                } else {
                    String next = log.getTransmissionTargetTokens().iterator().next();
                    String targetKey = PartAUtils.getTargetKey(next);
                    str = CryptoUtils.getInstance(this.mContext).encrypt(next);
                    str2 = targetKey;
                }
                long maxSize = this.mDatabaseManager.getMaxSize();
                if (maxSize != -1) {
                    long j = length;
                    if (maxSize <= j) {
                        throw new Persistence.PersistenceException("Log is too large (" + length + " bytes) to store in database. Current maximum database size is " + maxSize + " bytes.");
                    }
                    int persistenceFlag = Flags.getPersistenceFlag(flags, false);
                    long j2 = maxSize;
                    try {
                        ContentValues contentValues = getContentValues(group, z ? null : serializeLog, str, log.getType(), str2, persistenceFlag);
                        while (z) {
                            if (getStoredDataSize() + j <= j2) {
                                break;
                            }
                            AppCenterLog.debug("AppCenter", "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log.");
                            long j3 = j2;
                            if (deleteTheOldestLog(persistenceFlag) == -1) {
                                throw new Persistence.PersistenceException("Failed to clear space for new log record.");
                            }
                            j2 = j3;
                        }
                        while (l == null) {
                            try {
                                l = Long.valueOf(this.mDatabaseManager.put(contentValues));
                            } catch (SQLiteFullException unused) {
                                AppCenterLog.debug("AppCenter", "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log.");
                                if (deleteTheOldestLog(persistenceFlag) == -1) {
                                    l = -1L;
                                }
                            }
                        }
                        if (l.longValue() == -1) {
                            throw new Persistence.PersistenceException("Failed to store a log to the Persistence database for log type " + log.getType() + ".");
                        }
                        AppCenterLog.debug("AppCenter", "Stored a log to the Persistence database for log type " + log.getType() + " with databaseId=" + l);
                        if (z) {
                            AppCenterLog.debug("AppCenter", "Payload is larger than what SQLite supports, storing payload in a separate file.");
                            File largePayloadGroupDirectory = getLargePayloadGroupDirectory(group);
                            largePayloadGroupDirectory.mkdir();
                            File largePayloadFile = getLargePayloadFile(largePayloadGroupDirectory, l.longValue());
                            try {
                                FileManager.write(largePayloadFile, serializeLog);
                                this.mLargePayloadsSize += largePayloadFile.length();
                                AppCenterLog.verbose("AppCenter", "Store extra " + largePayloadFile.length() + " KB as a separated payload file.");
                                AppCenterLog.debug("AppCenter", "Payload written to " + largePayloadFile);
                            } catch (IOException e) {
                                this.mDatabaseManager.delete(l.longValue());
                                throw e;
                            }
                        }
                        deleteLogsThatNotFitMaxSize();
                        return l.longValue();
                    } catch (IOException e2) {
                        e = e2;
                        throw new Persistence.PersistenceException("Cannot save large payload in a file.", e);
                    } catch (JSONException e3) {
                        e = e3;
                        throw new Persistence.PersistenceException("Cannot convert to JSON string.", e);
                    }
                }
                throw new Persistence.PersistenceException("Failed to store a log to the Persistence database.");
            } catch (IOException e4) {
                e = e4;
            }
        } catch (JSONException e5) {
            e = e5;
        }
    }

    File getLargePayloadGroupDirectory(String group) {
        return new File(this.mLargePayloadDirectory, group);
    }

    File getLargePayloadFile(File directory, long databaseId) {
        return new File(directory, databaseId + ".json");
    }

    private void deleteLog(File groupLargePayloadDirectory, long id) {
        getLargePayloadFile(groupLargePayloadDirectory, id).delete();
        this.mDatabaseManager.delete(id);
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public void deleteLogs(String group, String id) {
        AppCenterLog.debug("AppCenter", "Deleting logs from the Persistence database for " + group + " with " + id);
        AppCenterLog.debug("AppCenter", "The IDs for deleting log(s) is/are:");
        Map<String, List<Long>> map = this.mPendingDbIdentifiersGroups;
        List<Long> remove = map.remove(group + id);
        File largePayloadGroupDirectory = getLargePayloadGroupDirectory(group);
        if (remove != null) {
            for (Long l : remove) {
                AppCenterLog.debug("AppCenter", "\t" + l);
                deleteLog(largePayloadGroupDirectory, l.longValue());
                this.mPendingDbIdentifiers.remove(l);
            }
        }
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public void deleteLogs(String group) {
        AppCenterLog.debug("AppCenter", "Deleting all logs from the Persistence database for " + group);
        File largePayloadGroupDirectory = getLargePayloadGroupDirectory(group);
        File[] listFiles = largePayloadGroupDirectory.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                file.delete();
            }
        }
        largePayloadGroupDirectory.delete();
        AppCenterLog.debug("AppCenter", "Deleted " + this.mDatabaseManager.delete("persistence_group", group) + " logs.");
        Iterator<String> it = this.mPendingDbIdentifiersGroups.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().startsWith(group)) {
                it.remove();
            }
        }
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public int countLogs(String group) {
        SQLiteQueryBuilder newSQLiteQueryBuilder = SQLiteUtils.newSQLiteQueryBuilder();
        newSQLiteQueryBuilder.appendWhere("persistence_group = ?");
        int i = 0;
        try {
            Cursor cursor = this.mDatabaseManager.getCursor(newSQLiteQueryBuilder, new String[]{"COUNT(*)"}, new String[]{group}, null);
            cursor.moveToNext();
            i = cursor.getInt(0);
            cursor.close();
        } catch (RuntimeException e) {
            AppCenterLog.error("AppCenter", "Failed to get logs count: ", e);
        }
        return i;
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public String getLogs(String group, Collection<String> pausedTargetKeys, int limit, List<Log> outLogs) {
        int i;
        Cursor cursor;
        AppCenterLog.debug("AppCenter", "Trying to get " + limit + " logs from the Persistence database for " + group);
        SQLiteQueryBuilder newSQLiteQueryBuilder = SQLiteUtils.newSQLiteQueryBuilder();
        newSQLiteQueryBuilder.appendWhere("persistence_group = ?");
        ArrayList arrayList = new ArrayList();
        arrayList.add(group);
        if (!pausedTargetKeys.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < pausedTargetKeys.size(); i2++) {
                sb.append("?,");
            }
            sb.deleteCharAt(sb.length() - 1);
            newSQLiteQueryBuilder.appendWhere(" AND ");
            newSQLiteQueryBuilder.appendWhere("target_key NOT IN (" + sb.toString() + ")");
            arrayList.addAll(pausedTargetKeys);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<Long> arrayList2 = new ArrayList();
        File largePayloadGroupDirectory = getLargePayloadGroupDirectory(group);
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        try {
            i = 0;
            cursor = this.mDatabaseManager.getCursor(newSQLiteQueryBuilder, null, strArr, "priority DESC, oid");
        } catch (RuntimeException e) {
            AppCenterLog.error("AppCenter", "Failed to get logs: ", e);
            i = 0;
            cursor = null;
        }
        while (cursor != null) {
            ContentValues nextValues = this.mDatabaseManager.nextValues(cursor);
            if (nextValues == null || i >= limit) {
                break;
            }
            Long asLong = nextValues.getAsLong("oid");
            if (asLong == null) {
                AppCenterLog.error("AppCenter", "Empty database record, probably content was larger than 2MB, need to delete as it's now corrupted.");
                Iterator<Long> it = getLogsIds(newSQLiteQueryBuilder, strArr).iterator();
                while (true) {
                    if (it.hasNext()) {
                        Long next = it.next();
                        if (!this.mPendingDbIdentifiers.contains(next) && !linkedHashMap.containsKey(next)) {
                            deleteLog(largePayloadGroupDirectory, next.longValue());
                            AppCenterLog.error("AppCenter", "Empty database corrupted empty record deleted, id=" + next);
                            break;
                        }
                    }
                }
            } else if (!this.mPendingDbIdentifiers.contains(asLong)) {
                try {
                    String asString = nextValues.getAsString("log");
                    if (asString == null) {
                        File largePayloadFile = getLargePayloadFile(largePayloadGroupDirectory, asLong.longValue());
                        AppCenterLog.debug("AppCenter", "Read payload file " + largePayloadFile);
                        asString = FileManager.read(largePayloadFile);
                        if (asString == null) {
                            throw new JSONException("Log payload is null and not stored as a file.");
                            break;
                        }
                    }
                    Log deserializeLog = getLogSerializer().deserializeLog(asString, nextValues.getAsString(SessionDescription.ATTR_TYPE));
                    String asString2 = nextValues.getAsString("target_token");
                    if (asString2 != null) {
                        deserializeLog.addTransmissionTarget(CryptoUtils.getInstance(this.mContext).decrypt(asString2).getDecryptedData());
                    }
                    linkedHashMap.put(asLong, deserializeLog);
                    i++;
                } catch (JSONException e2) {
                    AppCenterLog.error("AppCenter", "Cannot deserialize a log in the database", e2);
                    arrayList2.add(asLong);
                }
            }
        }
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException unused) {
            }
        }
        if (arrayList2.size() > 0) {
            for (Long l : arrayList2) {
                deleteLog(largePayloadGroupDirectory, l.longValue());
            }
            AppCenterLog.warn("AppCenter", "Deleted logs that cannot be deserialized");
        }
        if (linkedHashMap.size() <= 0) {
            AppCenterLog.debug("AppCenter", "No logs found in the Persistence database at the moment");
            return null;
        }
        String uuid = UUID.randomUUID().toString();
        AppCenterLog.debug("AppCenter", "Returning " + linkedHashMap.size() + " log(s) with an ID, " + uuid);
        AppCenterLog.debug("AppCenter", "The SID/ID pairs for returning log(s) is/are:");
        ArrayList arrayList3 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Long l2 = (Long) entry.getKey();
            this.mPendingDbIdentifiers.add(l2);
            arrayList3.add(l2);
            outLogs.add((Log) entry.getValue());
            AppCenterLog.debug("AppCenter", "\t" + ((Log) entry.getValue()).getSid() + " / " + l2);
        }
        this.mPendingDbIdentifiersGroups.put(group + uuid, arrayList3);
        return uuid;
    }

    @Override // com.microsoft.appcenter.persistence.Persistence
    public void clearPendingLogState() {
        this.mPendingDbIdentifiers.clear();
        this.mPendingDbIdentifiersGroups.clear();
        AppCenterLog.debug("AppCenter", "Cleared pending log states");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mDatabaseManager.close();
    }

    public void deleteLogsThatNotFitMaxSize() {
        int persistenceFlag = Flags.getPersistenceFlag(1, false);
        while (getStoredDataSize() >= this.mDatabaseManager.getMaxSize() && deleteTheOldestLog(persistenceFlag) != -1) {
        }
    }

    private long getStoredDataSize() {
        return this.mDatabaseManager.getCurrentSize() + this.mLargePayloadsSize;
    }

    private long deleteTheOldestLog(int priority) {
        HashSet hashSet = new HashSet();
        hashSet.add("oid");
        hashSet.add("persistence_group");
        ContentValues deleteTheOldestRecord = this.mDatabaseManager.deleteTheOldestRecord(hashSet, "priority", priority);
        if (deleteTheOldestRecord == null) {
            return -1L;
        }
        long longValue = deleteTheOldestRecord.getAsLong("oid").longValue();
        File largePayloadFile = getLargePayloadFile(getLargePayloadGroupDirectory(deleteTheOldestRecord.getAsString("persistence_group")), longValue);
        if (largePayloadFile.exists()) {
            long length = largePayloadFile.length();
            if (largePayloadFile.delete()) {
                this.mLargePayloadsSize -= length;
                AppCenterLog.verbose("AppCenter", "Large payload file with id " + longValue + " has been deleted. " + length + " KB of memory has been freed.");
            } else {
                AppCenterLog.warn("AppCenter", "Cannot delete large payload file with id " + longValue);
            }
            return longValue;
        }
        return longValue;
    }

    private long checkLargePayloadFilesAndCollectTheirSize() {
        FilenameFilter filenameFilter = new FilenameFilter(this) { // from class: com.microsoft.appcenter.persistence.DatabasePersistence.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String fileName) {
                return fileName.endsWith(".json");
            }
        };
        int i = 0;
        Set<Long> logsIds = getLogsIds(SQLiteUtils.newSQLiteQueryBuilder(), new String[0]);
        File[] listFiles = this.mLargePayloadDirectory.listFiles();
        long j = 0;
        if (listFiles == null) {
            return 0L;
        }
        int length = listFiles.length;
        int i2 = 0;
        while (i2 < length) {
            File[] listFiles2 = listFiles[i2].listFiles(filenameFilter);
            if (listFiles2 != null) {
                int length2 = listFiles2.length;
                for (int i3 = i; i3 < length2; i3++) {
                    File file = listFiles2[i3];
                    try {
                        long parseInt = Integer.parseInt(FileManager.getNameWithoutExtension(file));
                        if (logsIds.contains(Long.valueOf(parseInt))) {
                            j += file.length();
                        } else if (file.delete()) {
                            AppCenterLog.debug("AppCenter", "Lasted large payload file with name " + file.getName() + " has been deleted.");
                        } else {
                            AppCenterLog.warn("AppCenter", "Cannot delete redundant large payload file with id " + parseInt);
                        }
                    } catch (NumberFormatException unused) {
                        AppCenterLog.warn("AppCenter", "A file was found whose name does not match the pattern of naming log files: " + file.getName());
                    }
                }
            }
            i2++;
            i = 0;
        }
        return j;
    }

    private Set<Long> getLogsIds(SQLiteQueryBuilder builder, String... selectionArgs) {
        HashSet hashSet = new HashSet();
        try {
            Cursor cursor = this.mDatabaseManager.getCursor(builder, DatabaseManager.SELECT_PRIMARY_KEY, selectionArgs, null);
            while (cursor.moveToNext()) {
                hashSet.add(this.mDatabaseManager.buildValues(cursor).getAsLong("oid"));
            }
            cursor.close();
        } catch (RuntimeException e) {
            AppCenterLog.error("AppCenter", "Failed to get corrupted ids: ", e);
        }
        return hashSet;
    }
}
