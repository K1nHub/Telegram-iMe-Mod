package com.iMe.bots.data.database;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.bots.data.model.database.HolidaysDbModel;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes4.dex */
public final class HolidaysDao_Impl extends HolidaysDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<HolidaysDbModel> __insertionAdapterOfHolidaysDbModel;

    public HolidaysDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfHolidaysDbModel = new EntityInsertionAdapter<HolidaysDbModel>(this, __db) { // from class: com.iMe.bots.data.database.HolidaysDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `HolidaysDbModel` (`userId`,`tags`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, HolidaysDbModel value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getTags() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTags());
                }
            }
        };
    }

    @Override // com.iMe.bots.data.database.HolidaysDao
    public long insertOrReplace(final HolidaysDbModel entity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfHolidaysDbModel.insertAndReturnId(entity);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.HolidaysDao
    public void saveForUser(final long userId, final String fullTag) {
        this.__db.beginTransaction();
        try {
            super.saveForUser(userId, fullTag);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.HolidaysDao
    public Set<String> getTagsForUser(final long userId) {
        this.__db.beginTransaction();
        try {
            Set<String> tagsForUser = super.getTagsForUser(userId);
            this.__db.setTransactionSuccessful();
            return tagsForUser;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.HolidaysDao
    public String getByUserId(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT tags FROM HolidaysDbModel WHERE userId LIKE ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        String str = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst() && !query.isNull(0)) {
                str = query.getString(0);
            }
            return str;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
