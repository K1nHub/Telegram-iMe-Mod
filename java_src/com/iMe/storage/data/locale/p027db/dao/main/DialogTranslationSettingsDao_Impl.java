package com.iMe.storage.data.locale.p027db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p027db.model.translation.DialogTranslationSettingsDb;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao_Impl */
/* loaded from: classes4.dex */
public final class DialogTranslationSettingsDao_Impl extends DialogTranslationSettingsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<DialogTranslationSettingsDb> __insertionAdapterOfDialogTranslationSettingsDb;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllTranslationSettingsByUserId;

    public DialogTranslationSettingsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfDialogTranslationSettingsDb = new EntityInsertionAdapter<DialogTranslationSettingsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `DialogTranslationSettingsDb` (`isInTextTranslateEnabled`,`inTextTranslateTargetLangCode`,`isOutTextTranslateEnabled`,`outTextTranslateTargetLangCode`,`dialogId`,`userId`) VALUES (?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, DialogTranslationSettingsDb value) {
                stmt.bindLong(1, value.isInTextTranslateEnabled() ? 1L : 0L);
                if (value.getInTextTranslateTargetLangCode() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getInTextTranslateTargetLangCode());
                }
                stmt.bindLong(3, value.isOutTextTranslateEnabled() ? 1L : 0L);
                if (value.getOutTextTranslateTargetLangCode() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getOutTextTranslateTargetLangCode());
                }
                stmt.bindLong(5, value.getDialogId());
                stmt.bindLong(6, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<DialogTranslationSettingsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `DialogTranslationSettingsDb` WHERE `dialogId` = ? AND `userId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, DialogTranslationSettingsDb value) {
                stmt.bindLong(1, value.getDialogId());
                stmt.bindLong(2, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<DialogTranslationSettingsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `DialogTranslationSettingsDb` SET `isInTextTranslateEnabled` = ?,`inTextTranslateTargetLangCode` = ?,`isOutTextTranslateEnabled` = ?,`outTextTranslateTargetLangCode` = ?,`dialogId` = ?,`userId` = ? WHERE `dialogId` = ? AND `userId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, DialogTranslationSettingsDb value) {
                stmt.bindLong(1, value.isInTextTranslateEnabled() ? 1L : 0L);
                if (value.getInTextTranslateTargetLangCode() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getInTextTranslateTargetLangCode());
                }
                stmt.bindLong(3, value.isOutTextTranslateEnabled() ? 1L : 0L);
                if (value.getOutTextTranslateTargetLangCode() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getOutTextTranslateTargetLangCode());
                }
                stmt.bindLong(5, value.getDialogId());
                stmt.bindLong(6, value.getUserId());
                stmt.bindLong(7, value.getDialogId());
                stmt.bindLong(8, value.getUserId());
            }
        };
        this.__preparedStmtOfDeleteAllTranslationSettingsByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM DialogTranslationSettingsDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public long insert(final DialogTranslationSettingsDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfDialogTranslationSettingsDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public void insert(final List<? extends DialogTranslationSettingsDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfDialogTranslationSettingsDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao
    public void restoreBackup(final long userId, final List<DialogTranslationSettings> settings) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, settings);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao
    public void deleteAllTranslationSettingsByUserId(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAllTranslationSettingsByUserId.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllTranslationSettingsByUserId.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao
    public List<DialogTranslationSettingsDb> getAllTranslationSettingsForUser(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM DialogTranslationSettingsDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "isInTextTranslateEnabled");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "inTextTranslateTargetLangCode");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "isOutTextTranslateEnabled");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "outTextTranslateTargetLangCode");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "dialogId");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "userId");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new DialogTranslationSettingsDb(query.getInt(columnIndexOrThrow) != 0, query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3) != 0, query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.getLong(columnIndexOrThrow5), query.getLong(columnIndexOrThrow6)));
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
