package com.iMe.storage.data.locale.p027db.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import androidx.sqlite.p011db.SupportSQLiteOpenHelper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.main.FiltersDao;
import com.iMe.storage.data.locale.p027db.dao.main.FiltersDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao;
import com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.main.PlaylistsDao;
import com.iMe.storage.data.locale.p027db.dao.main.PlaylistsDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao;
import com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p027db.dao.main.TopicsDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao_Impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.iMe.storage.data.locale.db.database.AppMainDatabase_Impl */
/* loaded from: classes3.dex */
public final class AppMainDatabase_Impl extends AppMainDatabase {
    private volatile DialogTranslationSettingsDao _dialogTranslationSettingsDao;
    private volatile FiltersDao _filtersDao;
    private volatile HiddenChatsDao _hiddenChatsDao;
    private volatile HistoryDialogDao _historyDialogDao;
    private volatile PlaylistsDao _playlistsDao;
    private volatile TemplatesDao _templatesDao;
    private volatile TopicsDao _topicsDao;
    private volatile WalletConnectSessionsDao _walletConnectSessionsDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration configuration) {
        return configuration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(configuration.context).name(configuration.name).callback(new RoomOpenHelper(configuration, new RoomOpenHelper.Delegate(17) { // from class: com.iMe.storage.data.locale.db.database.AppMainDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase _db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("CREATE TABLE IF NOT EXISTS `FilterSettingsDb` (`filterId` INTEGER NOT NULL, `fabs` TEXT NOT NULL, `icon` TEXT, `userId` INTEGER NOT NULL, PRIMARY KEY(`filterId`, `userId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `DialogTranslationSettingsDb` (`isInTextTranslateEnabled` INTEGER NOT NULL, `inTextTranslateTargetLangCode` TEXT, `isOutTextTranslateEnabled` INTEGER NOT NULL, `outTextTranslateTargetLangCode` TEXT NOT NULL, `dialogId` INTEGER NOT NULL, `userId` INTEGER NOT NULL, PRIMARY KEY(`dialogId`, `userId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `TopicDb` (`topicId` INTEGER NOT NULL, `name` TEXT, `icon` TEXT, `order` INTEGER NOT NULL, `presets` TEXT NOT NULL, `dialogs` TEXT NOT NULL, `userId` INTEGER NOT NULL, PRIMARY KEY(`userId`, `topicId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `WalletConnectSessionDb` (`tgUserId` INTEGER NOT NULL, `sessionTopic` TEXT NOT NULL, `sessionVersion` TEXT NOT NULL, `sessionBridge` TEXT NOT NULL, `sessionKey` TEXT NOT NULL, `chainId` INTEGER NOT NULL, `peerId` TEXT NOT NULL, `remotePeerId` TEXT NOT NULL, `remotePeerMetaName` TEXT NOT NULL, `remotePeerMetaUrl` TEXT NOT NULL, `remotePeerMetaDescription` TEXT, `remotePeerMetaIcons` TEXT NOT NULL, `isAutoSign` INTEGER NOT NULL, `date` INTEGER NOT NULL, PRIMARY KEY(`tgUserId`, `sessionKey`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `TemplatesDb` (`userId` INTEGER NOT NULL, `messageId` INTEGER NOT NULL, `groupId` INTEGER NOT NULL, `templateName` TEXT NOT NULL, `creationDate` INTEGER NOT NULL, `usageRating` INTEGER NOT NULL, `sent` INTEGER NOT NULL, PRIMARY KEY(`userId`, `messageId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `PlaylistsDb` (`messageIds` TEXT NOT NULL, `dialogId` INTEGER NOT NULL, `userId` INTEGER NOT NULL, PRIMARY KEY(`dialogId`, `userId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `HistoryDialogDb` (`userId` INTEGER NOT NULL, `dialogId` INTEGER NOT NULL, `creationDate` INTEGER NOT NULL, `isPinned` INTEGER NOT NULL, PRIMARY KEY(`userId`, `dialogId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `HiddenChatsDb` (`userId` INTEGER NOT NULL, `dialogId` INTEGER NOT NULL, PRIMARY KEY(`userId`, `dialogId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                _db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'd26c30a66c211afebfa310894b978450')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("DROP TABLE IF EXISTS `FilterSettingsDb`");
                _db.execSQL("DROP TABLE IF EXISTS `DialogTranslationSettingsDb`");
                _db.execSQL("DROP TABLE IF EXISTS `TopicDb`");
                _db.execSQL("DROP TABLE IF EXISTS `WalletConnectSessionDb`");
                _db.execSQL("DROP TABLE IF EXISTS `TemplatesDb`");
                _db.execSQL("DROP TABLE IF EXISTS `PlaylistsDb`");
                _db.execSQL("DROP TABLE IF EXISTS `HistoryDialogDb`");
                _db.execSQL("DROP TABLE IF EXISTS `HiddenChatsDb`");
                if (((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks.get(i)).onDestructiveMigration(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase _db) {
                if (((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks.get(i)).onCreate(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase _db) {
                ((RoomDatabase) AppMainDatabase_Impl.this).mDatabase = _db;
                AppMainDatabase_Impl.this.internalInitInvalidationTracker(_db);
                if (((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) AppMainDatabase_Impl.this).mCallbacks.get(i)).onOpen(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase _db) {
                DBUtil.dropFtsSyncTriggers(_db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase _db) {
                HashMap hashMap = new HashMap(4);
                hashMap.put("filterId", new TableInfo.Column("filterId", "INTEGER", true, 1, null, 1));
                hashMap.put("fabs", new TableInfo.Column("fabs", "TEXT", true, 0, null, 1));
                hashMap.put("icon", new TableInfo.Column("icon", "TEXT", false, 0, null, 1));
                hashMap.put("userId", new TableInfo.Column("userId", "INTEGER", true, 2, null, 1));
                TableInfo tableInfo = new TableInfo("FilterSettingsDb", hashMap, new HashSet(0), new HashSet(0));
                TableInfo read = TableInfo.read(_db, "FilterSettingsDb");
                if (!tableInfo.equals(read)) {
                    return new RoomOpenHelper.ValidationResult(false, "FilterSettingsDb(com.iMe.storage.data.locale.db.model.filter.FilterSettingsDb).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                HashMap hashMap2 = new HashMap(6);
                hashMap2.put("isInTextTranslateEnabled", new TableInfo.Column("isInTextTranslateEnabled", "INTEGER", true, 0, null, 1));
                hashMap2.put("inTextTranslateTargetLangCode", new TableInfo.Column("inTextTranslateTargetLangCode", "TEXT", false, 0, null, 1));
                hashMap2.put("isOutTextTranslateEnabled", new TableInfo.Column("isOutTextTranslateEnabled", "INTEGER", true, 0, null, 1));
                hashMap2.put("outTextTranslateTargetLangCode", new TableInfo.Column("outTextTranslateTargetLangCode", "TEXT", true, 0, null, 1));
                hashMap2.put("dialogId", new TableInfo.Column("dialogId", "INTEGER", true, 1, null, 1));
                hashMap2.put("userId", new TableInfo.Column("userId", "INTEGER", true, 2, null, 1));
                TableInfo tableInfo2 = new TableInfo("DialogTranslationSettingsDb", hashMap2, new HashSet(0), new HashSet(0));
                TableInfo read2 = TableInfo.read(_db, "DialogTranslationSettingsDb");
                if (!tableInfo2.equals(read2)) {
                    return new RoomOpenHelper.ValidationResult(false, "DialogTranslationSettingsDb(com.iMe.storage.data.locale.db.model.translation.DialogTranslationSettingsDb).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
                }
                HashMap hashMap3 = new HashMap(7);
                hashMap3.put("topicId", new TableInfo.Column("topicId", "INTEGER", true, 2, null, 1));
                hashMap3.put(AppMeasurementSdk.ConditionalUserProperty.NAME, new TableInfo.Column(AppMeasurementSdk.ConditionalUserProperty.NAME, "TEXT", false, 0, null, 1));
                hashMap3.put("icon", new TableInfo.Column("icon", "TEXT", false, 0, null, 1));
                hashMap3.put("order", new TableInfo.Column("order", "INTEGER", true, 0, null, 1));
                hashMap3.put("presets", new TableInfo.Column("presets", "TEXT", true, 0, null, 1));
                hashMap3.put("dialogs", new TableInfo.Column("dialogs", "TEXT", true, 0, null, 1));
                hashMap3.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                TableInfo tableInfo3 = new TableInfo("TopicDb", hashMap3, new HashSet(0), new HashSet(0));
                TableInfo read3 = TableInfo.read(_db, "TopicDb");
                if (!tableInfo3.equals(read3)) {
                    return new RoomOpenHelper.ValidationResult(false, "TopicDb(com.iMe.storage.data.locale.db.model.topics.TopicDb).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
                }
                HashMap hashMap4 = new HashMap(14);
                hashMap4.put("tgUserId", new TableInfo.Column("tgUserId", "INTEGER", true, 1, null, 1));
                hashMap4.put("sessionTopic", new TableInfo.Column("sessionTopic", "TEXT", true, 0, null, 1));
                hashMap4.put("sessionVersion", new TableInfo.Column("sessionVersion", "TEXT", true, 0, null, 1));
                hashMap4.put("sessionBridge", new TableInfo.Column("sessionBridge", "TEXT", true, 0, null, 1));
                hashMap4.put("sessionKey", new TableInfo.Column("sessionKey", "TEXT", true, 2, null, 1));
                hashMap4.put("chainId", new TableInfo.Column("chainId", "INTEGER", true, 0, null, 1));
                hashMap4.put("peerId", new TableInfo.Column("peerId", "TEXT", true, 0, null, 1));
                hashMap4.put("remotePeerId", new TableInfo.Column("remotePeerId", "TEXT", true, 0, null, 1));
                hashMap4.put("remotePeerMetaName", new TableInfo.Column("remotePeerMetaName", "TEXT", true, 0, null, 1));
                hashMap4.put("remotePeerMetaUrl", new TableInfo.Column("remotePeerMetaUrl", "TEXT", true, 0, null, 1));
                hashMap4.put("remotePeerMetaDescription", new TableInfo.Column("remotePeerMetaDescription", "TEXT", false, 0, null, 1));
                hashMap4.put("remotePeerMetaIcons", new TableInfo.Column("remotePeerMetaIcons", "TEXT", true, 0, null, 1));
                hashMap4.put("isAutoSign", new TableInfo.Column("isAutoSign", "INTEGER", true, 0, null, 1));
                hashMap4.put("date", new TableInfo.Column("date", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo4 = new TableInfo("WalletConnectSessionDb", hashMap4, new HashSet(0), new HashSet(0));
                TableInfo read4 = TableInfo.read(_db, "WalletConnectSessionDb");
                if (!tableInfo4.equals(read4)) {
                    return new RoomOpenHelper.ValidationResult(false, "WalletConnectSessionDb(com.iMe.storage.data.locale.db.model.wallet.WalletConnectSessionDb).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4);
                }
                HashMap hashMap5 = new HashMap(7);
                hashMap5.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                hashMap5.put("messageId", new TableInfo.Column("messageId", "INTEGER", true, 2, null, 1));
                hashMap5.put("groupId", new TableInfo.Column("groupId", "INTEGER", true, 0, null, 1));
                hashMap5.put("templateName", new TableInfo.Column("templateName", "TEXT", true, 0, null, 1));
                hashMap5.put("creationDate", new TableInfo.Column("creationDate", "INTEGER", true, 0, null, 1));
                hashMap5.put("usageRating", new TableInfo.Column("usageRating", "INTEGER", true, 0, null, 1));
                hashMap5.put("sent", new TableInfo.Column("sent", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("TemplatesDb", hashMap5, new HashSet(0), new HashSet(0));
                TableInfo read5 = TableInfo.read(_db, "TemplatesDb");
                if (!tableInfo5.equals(read5)) {
                    return new RoomOpenHelper.ValidationResult(false, "TemplatesDb(com.iMe.storage.data.locale.db.model.templates.TemplatesDb).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5);
                }
                HashMap hashMap6 = new HashMap(3);
                hashMap6.put("messageIds", new TableInfo.Column("messageIds", "TEXT", true, 0, null, 1));
                hashMap6.put("dialogId", new TableInfo.Column("dialogId", "INTEGER", true, 1, null, 1));
                hashMap6.put("userId", new TableInfo.Column("userId", "INTEGER", true, 2, null, 1));
                TableInfo tableInfo6 = new TableInfo("PlaylistsDb", hashMap6, new HashSet(0), new HashSet(0));
                TableInfo read6 = TableInfo.read(_db, "PlaylistsDb");
                if (!tableInfo6.equals(read6)) {
                    return new RoomOpenHelper.ValidationResult(false, "PlaylistsDb(com.iMe.storage.data.locale.db.model.music.PlaylistsDb).\n Expected:\n" + tableInfo6 + "\n Found:\n" + read6);
                }
                HashMap hashMap7 = new HashMap(4);
                hashMap7.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                hashMap7.put("dialogId", new TableInfo.Column("dialogId", "INTEGER", true, 2, null, 1));
                hashMap7.put("creationDate", new TableInfo.Column("creationDate", "INTEGER", true, 0, null, 1));
                hashMap7.put("isPinned", new TableInfo.Column("isPinned", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo7 = new TableInfo("HistoryDialogDb", hashMap7, new HashSet(0), new HashSet(0));
                TableInfo read7 = TableInfo.read(_db, "HistoryDialogDb");
                if (!tableInfo7.equals(read7)) {
                    return new RoomOpenHelper.ValidationResult(false, "HistoryDialogDb(com.iMe.storage.data.locale.db.model.recent_chats.HistoryDialogDb).\n Expected:\n" + tableInfo7 + "\n Found:\n" + read7);
                }
                HashMap hashMap8 = new HashMap(2);
                hashMap8.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                hashMap8.put("dialogId", new TableInfo.Column("dialogId", "INTEGER", true, 2, null, 1));
                TableInfo tableInfo8 = new TableInfo("HiddenChatsDb", hashMap8, new HashSet(0), new HashSet(0));
                TableInfo read8 = TableInfo.read(_db, "HiddenChatsDb");
                if (!tableInfo8.equals(read8)) {
                    return new RoomOpenHelper.ValidationResult(false, "HiddenChatsDb(com.iMe.storage.data.locale.db.model.hidden_chats.HiddenChatsDb).\n Expected:\n" + tableInfo8 + "\n Found:\n" + read8);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "d26c30a66c211afebfa310894b978450", "0a634f93cb59203e2d7d49f349826b7d")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "FilterSettingsDb", "DialogTranslationSettingsDb", "TopicDb", "WalletConnectSessionDb", "TemplatesDb", "PlaylistsDb", "HistoryDialogDb", "HiddenChatsDb");
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(FiltersDao.class, FiltersDao_Impl.getRequiredConverters());
        hashMap.put(DialogTranslationSettingsDao.class, DialogTranslationSettingsDao_Impl.getRequiredConverters());
        hashMap.put(TopicsDao.class, TopicsDao_Impl.getRequiredConverters());
        hashMap.put(TemplatesDao.class, TemplatesDao_Impl.getRequiredConverters());
        hashMap.put(WalletConnectSessionsDao.class, WalletConnectSessionsDao_Impl.getRequiredConverters());
        hashMap.put(PlaylistsDao.class, PlaylistsDao_Impl.getRequiredConverters());
        hashMap.put(HistoryDialogDao.class, HistoryDialogDao_Impl.getRequiredConverters());
        hashMap.put(HiddenChatsDao.class, HiddenChatsDao_Impl.getRequiredConverters());
        return hashMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecsMap) {
        return Arrays.asList(new Migration[0]);
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public FiltersDao filtersDao() {
        FiltersDao filtersDao;
        if (this._filtersDao != null) {
            return this._filtersDao;
        }
        synchronized (this) {
            if (this._filtersDao == null) {
                this._filtersDao = new FiltersDao_Impl(this);
            }
            filtersDao = this._filtersDao;
        }
        return filtersDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public DialogTranslationSettingsDao dialogTranslationSettingsDao() {
        DialogTranslationSettingsDao dialogTranslationSettingsDao;
        if (this._dialogTranslationSettingsDao != null) {
            return this._dialogTranslationSettingsDao;
        }
        synchronized (this) {
            if (this._dialogTranslationSettingsDao == null) {
                this._dialogTranslationSettingsDao = new DialogTranslationSettingsDao_Impl(this);
            }
            dialogTranslationSettingsDao = this._dialogTranslationSettingsDao;
        }
        return dialogTranslationSettingsDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public TopicsDao topicsDao() {
        TopicsDao topicsDao;
        if (this._topicsDao != null) {
            return this._topicsDao;
        }
        synchronized (this) {
            if (this._topicsDao == null) {
                this._topicsDao = new TopicsDao_Impl(this);
            }
            topicsDao = this._topicsDao;
        }
        return topicsDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public TemplatesDao templatesDao() {
        TemplatesDao templatesDao;
        if (this._templatesDao != null) {
            return this._templatesDao;
        }
        synchronized (this) {
            if (this._templatesDao == null) {
                this._templatesDao = new TemplatesDao_Impl(this);
            }
            templatesDao = this._templatesDao;
        }
        return templatesDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public WalletConnectSessionsDao walletConnectSessionsDao() {
        WalletConnectSessionsDao walletConnectSessionsDao;
        if (this._walletConnectSessionsDao != null) {
            return this._walletConnectSessionsDao;
        }
        synchronized (this) {
            if (this._walletConnectSessionsDao == null) {
                this._walletConnectSessionsDao = new WalletConnectSessionsDao_Impl(this);
            }
            walletConnectSessionsDao = this._walletConnectSessionsDao;
        }
        return walletConnectSessionsDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public PlaylistsDao playlistsDao() {
        PlaylistsDao playlistsDao;
        if (this._playlistsDao != null) {
            return this._playlistsDao;
        }
        synchronized (this) {
            if (this._playlistsDao == null) {
                this._playlistsDao = new PlaylistsDao_Impl(this);
            }
            playlistsDao = this._playlistsDao;
        }
        return playlistsDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public HistoryDialogDao historyDialogDao() {
        HistoryDialogDao historyDialogDao;
        if (this._historyDialogDao != null) {
            return this._historyDialogDao;
        }
        synchronized (this) {
            if (this._historyDialogDao == null) {
                this._historyDialogDao = new HistoryDialogDao_Impl(this);
            }
            historyDialogDao = this._historyDialogDao;
        }
        return historyDialogDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppMainDatabase
    public HiddenChatsDao hiddenChatsDao() {
        HiddenChatsDao hiddenChatsDao;
        if (this._hiddenChatsDao != null) {
            return this._hiddenChatsDao;
        }
        synchronized (this) {
            if (this._hiddenChatsDao == null) {
                this._hiddenChatsDao = new HiddenChatsDao_Impl(this);
            }
            hiddenChatsDao = this._hiddenChatsDao;
        }
        return hiddenChatsDao;
    }
}
