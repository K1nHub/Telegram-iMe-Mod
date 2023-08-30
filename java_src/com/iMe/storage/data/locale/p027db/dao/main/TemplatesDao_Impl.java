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
import com.iMe.storage.data.locale.p027db.model.templates.TemplatesDb;
import com.iMe.storage.domain.model.templates.TemplateModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.TemplatesDao_Impl */
/* loaded from: classes3.dex */
public final class TemplatesDao_Impl extends TemplatesDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<TemplatesDb> __insertionAdapterOfTemplatesDb;
    private final SharedSQLiteStatement __preparedStmtOfClearAllTemplates;

    public TemplatesDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfTemplatesDb = new EntityInsertionAdapter<TemplatesDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TemplatesDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `TemplatesDb` (`userId`,`messageId`,`groupId`,`templateName`,`creationDate`,`usageRating`,`sent`) VALUES (?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, TemplatesDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getMessageId());
                stmt.bindLong(3, value.getGroupId());
                if (value.getTemplateName() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getTemplateName());
                }
                stmt.bindLong(5, value.getCreationDate());
                stmt.bindLong(6, value.getUsageRating());
                stmt.bindLong(7, value.getSent() ? 1L : 0L);
            }
        };
        new EntityDeletionOrUpdateAdapter<TemplatesDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TemplatesDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `TemplatesDb` WHERE `userId` = ? AND `messageId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, TemplatesDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getMessageId());
            }
        };
        new EntityDeletionOrUpdateAdapter<TemplatesDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TemplatesDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `TemplatesDb` SET `userId` = ?,`messageId` = ?,`groupId` = ?,`templateName` = ?,`creationDate` = ?,`usageRating` = ?,`sent` = ? WHERE `userId` = ? AND `messageId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, TemplatesDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getMessageId());
                stmt.bindLong(3, value.getGroupId());
                if (value.getTemplateName() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getTemplateName());
                }
                stmt.bindLong(5, value.getCreationDate());
                stmt.bindLong(6, value.getUsageRating());
                stmt.bindLong(7, value.getSent() ? 1L : 0L);
                stmt.bindLong(8, value.getUserId());
                stmt.bindLong(9, value.getMessageId());
            }
        };
        this.__preparedStmtOfClearAllTemplates = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TemplatesDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM TemplatesDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public long insert(final TemplatesDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfTemplatesDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public void insert(final List<? extends TemplatesDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfTemplatesDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao
    public void restoreBackup(final long userId, final List<TemplateModel> templates) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, templates);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao
    public void clearAllTemplates(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfClearAllTemplates.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfClearAllTemplates.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao
    public List<TemplatesDb> getAllTemplatesForUser(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM TemplatesDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "userId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "messageId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "groupId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "templateName");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "creationDate");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "usageRating");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "sent");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new TemplatesDb(query.getLong(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.getLong(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6), query.getInt(columnIndexOrThrow7) != 0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TemplatesDao
    public void removeTemplates(final List<Long> messageIds, final long userId) {
        this.__db.assertNotSuspendingTransaction();
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("DELETE FROM TemplatesDb WHERE userId = ");
        newStringBuilder.append("?");
        newStringBuilder.append(" AND messageId IN (");
        StringUtil.appendPlaceholders(newStringBuilder, messageIds.size());
        newStringBuilder.append(")");
        SupportSQLiteStatement compileStatement = this.__db.compileStatement(newStringBuilder.toString());
        compileStatement.bindLong(1, userId);
        int i = 2;
        for (Long l : messageIds) {
            if (l == null) {
                compileStatement.bindNull(i);
            } else {
                compileStatement.bindLong(i, l.longValue());
            }
            i++;
        }
        this.__db.beginTransaction();
        try {
            compileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
