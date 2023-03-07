package com.smedialink.storage.data.locale.p027db.dao.minor.wallet;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.smedialink.bots.data.database.converter.Converter;
import com.smedialink.storage.data.locale.p027db.model.wallet.WalletConnectSessionDb;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl */
/* loaded from: classes3.dex */
public final class WalletConnectSessionsDao_Impl extends WalletConnectSessionsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WalletConnectSessionDb> __insertionAdapterOfWalletConnectSessionDb;
    private final SharedSQLiteStatement __preparedStmtOfRxDeleteAllSession;
    private final SharedSQLiteStatement __preparedStmtOfRxDeleteBySessionKey;

    public WalletConnectSessionsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWalletConnectSessionDb = new EntityInsertionAdapter<WalletConnectSessionDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WalletConnectSessionDb` (`tgUserId`,`sessionTopic`,`sessionVersion`,`sessionBridge`,`sessionKey`,`chainId`,`peerId`,`remotePeerId`,`remotePeerMetaName`,`remotePeerMetaUrl`,`remotePeerMetaDescription`,`remotePeerMetaIcons`,`isAutoSign`,`date`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, WalletConnectSessionDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getSessionTopic() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSessionTopic());
                }
                if (value.getSessionVersion() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getSessionVersion());
                }
                if (value.getSessionBridge() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getSessionBridge());
                }
                if (value.getSessionKey() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getSessionKey());
                }
                stmt.bindLong(6, value.getChainId());
                if (value.getPeerId() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getPeerId());
                }
                if (value.getRemotePeerId() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getRemotePeerId());
                }
                if (value.getRemotePeerMetaName() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getRemotePeerMetaName());
                }
                if (value.getRemotePeerMetaUrl() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindString(10, value.getRemotePeerMetaUrl());
                }
                if (value.getRemotePeerMetaDescription() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindString(11, value.getRemotePeerMetaDescription());
                }
                String fromStrings = Converter.fromStrings(value.getRemotePeerMetaIcons());
                if (fromStrings == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, fromStrings);
                }
                stmt.bindLong(13, value.isAutoSign() ? 1L : 0L);
                Long fromDate = Converter.fromDate(value.getDate());
                if (fromDate == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindLong(14, fromDate.longValue());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<WalletConnectSessionDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `WalletConnectSessionDb` WHERE `tgUserId` = ? AND `sessionKey` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, WalletConnectSessionDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getSessionKey() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSessionKey());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<WalletConnectSessionDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `WalletConnectSessionDb` SET `tgUserId` = ?,`sessionTopic` = ?,`sessionVersion` = ?,`sessionBridge` = ?,`sessionKey` = ?,`chainId` = ?,`peerId` = ?,`remotePeerId` = ?,`remotePeerMetaName` = ?,`remotePeerMetaUrl` = ?,`remotePeerMetaDescription` = ?,`remotePeerMetaIcons` = ?,`isAutoSign` = ?,`date` = ? WHERE `tgUserId` = ? AND `sessionKey` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, WalletConnectSessionDb value) {
                stmt.bindLong(1, value.getTgUserId());
                if (value.getSessionTopic() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSessionTopic());
                }
                if (value.getSessionVersion() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getSessionVersion());
                }
                if (value.getSessionBridge() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getSessionBridge());
                }
                if (value.getSessionKey() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getSessionKey());
                }
                stmt.bindLong(6, value.getChainId());
                if (value.getPeerId() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getPeerId());
                }
                if (value.getRemotePeerId() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getRemotePeerId());
                }
                if (value.getRemotePeerMetaName() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getRemotePeerMetaName());
                }
                if (value.getRemotePeerMetaUrl() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindString(10, value.getRemotePeerMetaUrl());
                }
                if (value.getRemotePeerMetaDescription() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindString(11, value.getRemotePeerMetaDescription());
                }
                String fromStrings = Converter.fromStrings(value.getRemotePeerMetaIcons());
                if (fromStrings == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, fromStrings);
                }
                stmt.bindLong(13, value.isAutoSign() ? 1L : 0L);
                Long fromDate = Converter.fromDate(value.getDate());
                if (fromDate == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindLong(14, fromDate.longValue());
                }
                stmt.bindLong(15, value.getTgUserId());
                if (value.getSessionKey() == null) {
                    stmt.bindNull(16);
                } else {
                    stmt.bindString(16, value.getSessionKey());
                }
            }
        };
        this.__preparedStmtOfRxDeleteBySessionKey = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM WalletConnectSessionDb WHERE tgUserId = ? AND sessionKey = ?";
            }
        };
        this.__preparedStmtOfRxDeleteAllSession = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM WalletConnectSessionDb WHERE tgUserId = ?";
            }
        };
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.base.BaseDao
    public Completable rxInsert(final WalletConnectSessionDb obj) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                WalletConnectSessionsDao_Impl.this.__db.beginTransaction();
                try {
                    WalletConnectSessionsDao_Impl.this.__insertionAdapterOfWalletConnectSessionDb.insert((EntityInsertionAdapter) obj);
                    WalletConnectSessionsDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletConnectSessionsDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao
    public Completable rxDeleteBySessionKey(final long userId, final String sessionKey) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.11
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = WalletConnectSessionsDao_Impl.this.__preparedStmtOfRxDeleteBySessionKey.acquire();
                acquire.bindLong(1, userId);
                String str = sessionKey;
                if (str == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindString(2, str);
                }
                WalletConnectSessionsDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    WalletConnectSessionsDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletConnectSessionsDao_Impl.this.__db.endTransaction();
                    WalletConnectSessionsDao_Impl.this.__preparedStmtOfRxDeleteBySessionKey.release(acquire);
                }
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao
    public Completable rxDeleteAllSession(final long userId) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = WalletConnectSessionsDao_Impl.this.__preparedStmtOfRxDeleteAllSession.acquire();
                acquire.bindLong(1, userId);
                WalletConnectSessionsDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    WalletConnectSessionsDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    WalletConnectSessionsDao_Impl.this.__db.endTransaction();
                    WalletConnectSessionsDao_Impl.this.__preparedStmtOfRxDeleteAllSession.release(acquire);
                }
            }
        });
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao
    public Flowable<List<WalletConnectSessionDb>> getAllSessions(final long userId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM WalletConnectSessionDb WHERE tgUserId = ?", 1);
        acquire.bindLong(1, userId);
        return RxRoom.createFlowable(this.__db, false, new String[]{"WalletConnectSessionDb"}, new Callable<List<WalletConnectSessionDb>>() { // from class: com.smedialink.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<WalletConnectSessionDb> call() throws Exception {
                int i;
                boolean z;
                Cursor query = DBUtil.query(WalletConnectSessionsDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "tgUserId");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sessionTopic");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "sessionVersion");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "sessionBridge");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "sessionKey");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "chainId");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "peerId");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "remotePeerId");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "remotePeerMetaName");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "remotePeerMetaUrl");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "remotePeerMetaDescription");
                    int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "remotePeerMetaIcons");
                    int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "isAutoSign");
                    int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "date");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        long j = query.getLong(columnIndexOrThrow);
                        String string = query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2);
                        String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                        String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                        String string4 = query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5);
                        int i2 = query.getInt(columnIndexOrThrow6);
                        String string5 = query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7);
                        String string6 = query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8);
                        String string7 = query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9);
                        String string8 = query.isNull(columnIndexOrThrow10) ? null : query.getString(columnIndexOrThrow10);
                        String string9 = query.isNull(columnIndexOrThrow11) ? null : query.getString(columnIndexOrThrow11);
                        List<String> fromString = Converter.fromString(query.isNull(columnIndexOrThrow12) ? null : query.getString(columnIndexOrThrow12));
                        if (query.getInt(columnIndexOrThrow13) != 0) {
                            i = columnIndexOrThrow14;
                            z = true;
                        } else {
                            i = columnIndexOrThrow14;
                            z = false;
                        }
                        int i3 = columnIndexOrThrow;
                        arrayList.add(new WalletConnectSessionDb(j, string, string2, string3, string4, i2, string5, string6, string7, string8, string9, fromString, z, Converter.fromTimeStamp(query.isNull(i) ? null : Long.valueOf(query.getLong(i)))));
                        columnIndexOrThrow = i3;
                        columnIndexOrThrow14 = i;
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
