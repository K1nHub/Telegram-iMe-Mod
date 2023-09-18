package com.iMe.storage.data.locale.p027db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p027db.model.recent_chats.HistoryDialogDb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl */
/* loaded from: classes4.dex */
public final class HistoryDialogDao_Impl extends HistoryDialogDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<HistoryDialogDb> __insertionAdapterOfHistoryDialogDb;
    private final SharedSQLiteStatement __preparedStmtOfClearRecentChatHistory;
    private final SharedSQLiteStatement __preparedStmtOfRemoveAllRecentChatHistory;
    private final SharedSQLiteStatement __preparedStmtOfRemoveRecentChatHistory;
    private final SharedSQLiteStatement __preparedStmtOfUpdatePinned;

    public HistoryDialogDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfHistoryDialogDb = new EntityInsertionAdapter<HistoryDialogDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `HistoryDialogDb` (`userId`,`dialogId`,`creationDate`,`isPinned`) VALUES (?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, HistoryDialogDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
                stmt.bindLong(3, value.getCreationDate());
                stmt.bindLong(4, value.isPinned() ? 1L : 0L);
            }
        };
        new EntityDeletionOrUpdateAdapter<HistoryDialogDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `HistoryDialogDb` WHERE `userId` = ? AND `dialogId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, HistoryDialogDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
            }
        };
        new EntityDeletionOrUpdateAdapter<HistoryDialogDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `HistoryDialogDb` SET `userId` = ?,`dialogId` = ?,`creationDate` = ?,`isPinned` = ? WHERE `userId` = ? AND `dialogId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, HistoryDialogDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
                stmt.bindLong(3, value.getCreationDate());
                stmt.bindLong(4, value.isPinned() ? 1L : 0L);
                stmt.bindLong(5, value.getUserId());
                stmt.bindLong(6, value.getDialogId());
            }
        };
        new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE HistoryDialogDb SET creationDate = ? WHERE dialogId = ?";
            }
        };
        this.__preparedStmtOfClearRecentChatHistory = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM HistoryDialogDb WHERE isPinned = ?";
            }
        };
        this.__preparedStmtOfRemoveRecentChatHistory = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM HistoryDialogDb WHERE userId = ? AND dialogId = ?";
            }
        };
        this.__preparedStmtOfUpdatePinned = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE HistoryDialogDb SET isPinned = ? WHERE dialogId = ? AND userId = ?";
            }
        };
        this.__preparedStmtOfRemoveAllRecentChatHistory = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM HistoryDialogDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public long insert(final HistoryDialogDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfHistoryDialogDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public void insert(final List<? extends HistoryDialogDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfHistoryDialogDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public void restoreBackup(final long userId, final List<HistoryDialogDb> pinnedRecentChats) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, pinnedRecentChats);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public void clearRecentChatHistory(final boolean isPinned) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfClearRecentChatHistory.acquire();
        acquire.bindLong(1, isPinned ? 1L : 0L);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfClearRecentChatHistory.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public void removeRecentChatHistory(final long userId, final long dialogId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveRecentChatHistory.acquire();
        acquire.bindLong(1, userId);
        acquire.bindLong(2, dialogId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveRecentChatHistory.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public void updatePinned(final long userId, final long dialogId, final boolean pinned) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfUpdatePinned.acquire();
        acquire.bindLong(1, pinned ? 1L : 0L);
        acquire.bindLong(2, dialogId);
        acquire.bindLong(3, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfUpdatePinned.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public void removeAllRecentChatHistory(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveAllRecentChatHistory.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveAllRecentChatHistory.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public List<HistoryDialogDb> getHistoryDialog(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM HistoryDialogDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "userId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "dialogId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "creationDate");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "isPinned");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new HistoryDialogDb(query.getLong(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4) != 0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao
    public int deleteByIdList(final List<Long> idList, final long userId) {
        this.__db.assertNotSuspendingTransaction();
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("DELETE from HistoryDialogDb WHERE dialogId IN (");
        int size = idList.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(") AND userId = ");
        newStringBuilder.append("?");
        SupportSQLiteStatement compileStatement = this.__db.compileStatement(newStringBuilder.toString());
        int i = 1;
        for (Long l : idList) {
            if (l == null) {
                compileStatement.bindNull(i);
            } else {
                compileStatement.bindLong(i, l.longValue());
            }
            i++;
        }
        compileStatement.bindLong(size + 1, userId);
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = compileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
