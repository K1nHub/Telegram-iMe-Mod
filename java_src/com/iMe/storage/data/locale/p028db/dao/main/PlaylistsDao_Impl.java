package com.iMe.storage.data.locale.p028db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p028db.database.converter.AppMainConverter;
import com.iMe.storage.data.locale.p028db.model.music.PlaylistsDb;
import com.iMe.storage.domain.model.music.PlaylistModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.PlaylistsDao_Impl */
/* loaded from: classes3.dex */
public final class PlaylistsDao_Impl extends PlaylistsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<PlaylistsDb> __insertionAdapterOfPlaylistsDb;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllPlaylistsByUserId;

    public PlaylistsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfPlaylistsDb = new EntityInsertionAdapter<PlaylistsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.PlaylistsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `PlaylistsDb` (`messageIds`,`dialogId`,`userId`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, PlaylistsDb value) {
                String convertIntListToString = AppMainConverter.convertIntListToString(value.getMessageIds());
                if (convertIntListToString == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, convertIntListToString);
                }
                stmt.bindLong(2, value.getDialogId());
                stmt.bindLong(3, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<PlaylistsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.PlaylistsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `PlaylistsDb` WHERE `dialogId` = ? AND `userId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, PlaylistsDb value) {
                stmt.bindLong(1, value.getDialogId());
                stmt.bindLong(2, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<PlaylistsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.PlaylistsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `PlaylistsDb` SET `messageIds` = ?,`dialogId` = ?,`userId` = ? WHERE `dialogId` = ? AND `userId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, PlaylistsDb value) {
                String convertIntListToString = AppMainConverter.convertIntListToString(value.getMessageIds());
                if (convertIntListToString == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, convertIntListToString);
                }
                stmt.bindLong(2, value.getDialogId());
                stmt.bindLong(3, value.getUserId());
                stmt.bindLong(4, value.getDialogId());
                stmt.bindLong(5, value.getUserId());
            }
        };
        this.__preparedStmtOfDeleteAllPlaylistsByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.PlaylistsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM PlaylistsDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.base.BaseDao
    public long insert(final PlaylistsDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfPlaylistsDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.base.BaseDao
    public void insert(final List<? extends PlaylistsDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfPlaylistsDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.main.PlaylistsDao
    public void restoreBackup(final long userId, final List<PlaylistModel> settings) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, settings);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.main.PlaylistsDao
    public void deleteAllPlaylistsByUserId(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAllPlaylistsByUserId.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllPlaylistsByUserId.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.main.PlaylistsDao
    public List<PlaylistsDb> getAllPlaylistsForUser(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM PlaylistsDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "messageIds");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "dialogId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "userId");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new PlaylistsDb(AppMainConverter.convertStringToIntList(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow)), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
