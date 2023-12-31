package com.iMe.storage.data.locale.p026db.dao.main;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p026db.database.converter.AppMainConverter;
import com.iMe.storage.data.locale.p026db.model.filter.FilterSettingsDb;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.FiltersDao_Impl */
/* loaded from: classes3.dex */
public final class FiltersDao_Impl extends FiltersDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<FilterSettingsDb> __insertionAdapterOfFilterSettingsDb;
    private final SharedSQLiteStatement __preparedStmtOfRemoveFilterSettings;
    private final SharedSQLiteStatement __preparedStmtOfResetSettings;

    public FiltersDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfFilterSettingsDb = new EntityInsertionAdapter<FilterSettingsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.FiltersDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `FilterSettingsDb` (`filterId`,`fabs`,`icon`,`isHidden`,`userId`) VALUES (?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, FilterSettingsDb value) {
                stmt.bindLong(1, value.getFilterId());
                String convertStringListToString = AppMainConverter.convertStringListToString(value.getFabs());
                if (convertStringListToString == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, convertStringListToString);
                }
                if (value.getIcon() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getIcon());
                }
                stmt.bindLong(4, value.isHidden() ? 1L : 0L);
                stmt.bindLong(5, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<FilterSettingsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.FiltersDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `FilterSettingsDb` WHERE `filterId` = ? AND `userId` = ?";
            }
        };
        new EntityDeletionOrUpdateAdapter<FilterSettingsDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.FiltersDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `FilterSettingsDb` SET `filterId` = ?,`fabs` = ?,`icon` = ?,`isHidden` = ?,`userId` = ? WHERE `filterId` = ? AND `userId` = ?";
            }
        };
        this.__preparedStmtOfRemoveFilterSettings = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.FiltersDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM FilterSettingsDb WHERE filterId = ? AND userId = ?";
            }
        };
        this.__preparedStmtOfResetSettings = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.FiltersDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM FilterSettingsDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.base.BaseDao
    public long insert(final FilterSettingsDb obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfFilterSettingsDb.insertAndReturnId(obj);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.base.BaseDao
    public void insert(final List<? extends FilterSettingsDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfFilterSettingsDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.FiltersDao
    public void restoreBackup(final long userId, final List<FilterSettingsModel> filters) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, filters);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.FiltersDao
    public void removeFilterSettings(final int filterId, final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveFilterSettings.acquire();
        acquire.bindLong(1, filterId);
        acquire.bindLong(2, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveFilterSettings.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.FiltersDao
    public void resetSettings(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetSettings.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetSettings.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.main.FiltersDao
    public List<FilterSettingsDb> getFilterSettings(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM FilterSettingsDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "filterId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "fabs");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "icon");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "isHidden");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "userId");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new FilterSettingsDb(query.getInt(columnIndexOrThrow), AppMainConverter.convertStringToStringList(query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2)), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4) != 0, query.getLong(columnIndexOrThrow5)));
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
