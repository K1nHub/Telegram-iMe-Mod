package com.iMe.storage.data.locale.p027db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p027db.model.hidden_chats.HiddenChatsDb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao_Impl */
/* loaded from: classes3.dex */
public final class HiddenChatsDao_Impl extends HiddenChatsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<HiddenChatsDb> __insertionAdapterOfHiddenChatsDb;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllHiddenChatsByUserId;

    public HiddenChatsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfHiddenChatsDb = new EntityInsertionAdapter<HiddenChatsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `HiddenChatsDb` (`userId`,`dialogId`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, HiddenChatsDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
            }
        };
        new EntityDeletionOrUpdateAdapter<HiddenChatsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `HiddenChatsDb` WHERE `userId` = ? AND `dialogId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, HiddenChatsDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
            }
        };
        new EntityDeletionOrUpdateAdapter<HiddenChatsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `HiddenChatsDb` SET `userId` = ?,`dialogId` = ? WHERE `userId` = ? AND `dialogId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, HiddenChatsDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getDialogId());
                stmt.bindLong(3, value.getUserId());
                stmt.bindLong(4, value.getDialogId());
            }
        };
        this.__preparedStmtOfDeleteAllHiddenChatsByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM HiddenChatsDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public void insert(final List<? extends HiddenChatsDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfHiddenChatsDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao
    public void restoreBackup(final long userId, final List<Long> hiddenChatDialogs) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, hiddenChatDialogs);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao
    public void deleteAllHiddenChatsByUserId(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAllHiddenChatsByUserId.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllHiddenChatsByUserId.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao
    public List<Long> getHiddenChats(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT dialogId FROM HiddenChatsDb WHERE userId = ?", 1);
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

    @Override // com.iMe.storage.data.locale.p027db.dao.main.HiddenChatsDao
    public int deleteByIdList(final List<Long> idList, final long userId) {
        this.__db.assertNotSuspendingTransaction();
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("DELETE FROM HiddenChatsDb WHERE dialogId IN (");
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
