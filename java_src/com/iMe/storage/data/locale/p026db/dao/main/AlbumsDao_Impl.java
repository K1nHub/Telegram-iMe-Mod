package com.iMe.storage.data.locale.p026db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p026db.model.cloud.AlbumsDb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.AlbumsDao_Impl */
/* loaded from: classes3.dex */
public final class AlbumsDao_Impl extends AlbumsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<AlbumsDb> __insertionAdapterOfAlbumsDb;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllAlbumsByUserId;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByAlbumId;

    public AlbumsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfAlbumsDb = new EntityInsertionAdapter<AlbumsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.AlbumsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `AlbumsDb` (`userId`,`dialogId`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, AlbumsDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
            }
        };
        new EntityDeletionOrUpdateAdapter<AlbumsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.AlbumsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `AlbumsDb` WHERE `userId` = ? AND `dialogId` = ?";
            }
        };
        new EntityDeletionOrUpdateAdapter<AlbumsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.AlbumsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `AlbumsDb` SET `userId` = ?,`dialogId` = ? WHERE `userId` = ? AND `dialogId` = ?";
            }
        };
        this.__preparedStmtOfDeleteByAlbumId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.AlbumsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM AlbumsDb WHERE userId = ? AND dialogId = ?";
            }
        };
        this.__preparedStmtOfDeleteAllAlbumsByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.AlbumsDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM AlbumsDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.base.BaseDao
    public long insert(final AlbumsDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfAlbumsDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.base.BaseDao
    public void insert(final List<? extends AlbumsDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfAlbumsDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.AlbumsDao
    public void restoreBackup(final long userId, final List<Long> albums) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, albums);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.AlbumsDao
    public void deleteByAlbumId(final long userId, final long albumId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteByAlbumId.acquire();
        acquire.bindLong(1, userId);
        acquire.bindLong(2, albumId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteByAlbumId.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.AlbumsDao
    public void deleteAllAlbumsByUserId(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAllAlbumsByUserId.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllAlbumsByUserId.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.AlbumsDao
    public List<Long> getAllAlbumsForUser(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT dialogId FROM AlbumsDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : Long.valueOf(query.getLong(0)));
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
