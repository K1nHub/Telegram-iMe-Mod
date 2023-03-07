package com.smedialink.storage.data.locale.p027db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.smedialink.storage.data.locale.p027db.database.converter.AppMainConverter;
import com.smedialink.storage.data.locale.p027db.model.bookmarks.BookmarksDb;
import com.smedialink.storage.domain.model.bookmarks.BookmarksModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.smedialink.storage.data.locale.db.dao.main.BookmarksDao_Impl */
/* loaded from: classes3.dex */
public final class BookmarksDao_Impl extends BookmarksDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<BookmarksDb> __insertionAdapterOfBookmarksDb;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllBookmarksByUserId;

    public BookmarksDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfBookmarksDb = new EntityInsertionAdapter<BookmarksDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.main.BookmarksDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `BookmarksDb` (`messageIds`,`dialogId`,`userId`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, BookmarksDb value) {
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
        new EntityDeletionOrUpdateAdapter<BookmarksDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.main.BookmarksDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `BookmarksDb` WHERE `dialogId` = ? AND `userId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, BookmarksDb value) {
                stmt.bindLong(1, value.getDialogId());
                stmt.bindLong(2, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<BookmarksDb>(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.main.BookmarksDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `BookmarksDb` SET `messageIds` = ?,`dialogId` = ?,`userId` = ? WHERE `dialogId` = ? AND `userId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, BookmarksDb value) {
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
        this.__preparedStmtOfDeleteAllBookmarksByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.smedialink.storage.data.locale.db.dao.main.BookmarksDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM BookmarksDb WHERE userId = ?";
            }
        };
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.base.BaseDao
    public long insert(final BookmarksDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfBookmarksDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.base.BaseDao
    public void insert(final List<? extends BookmarksDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfBookmarksDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.main.BookmarksDao
    public void restoreBackup(final long userId, final List<BookmarksModel> settings) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, settings);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.main.BookmarksDao
    public void deleteAllBookmarksByUserId(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAllBookmarksByUserId.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllBookmarksByUserId.release(acquire);
        }
    }

    @Override // com.smedialink.storage.data.locale.p027db.dao.main.BookmarksDao
    public List<BookmarksDb> getAllBookmarksForUser(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BookmarksDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "messageIds");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "dialogId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "userId");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new BookmarksDb(AppMainConverter.convertStringToIntList(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow)), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3)));
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
