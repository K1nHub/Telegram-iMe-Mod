package com.iMe.bots.data.database;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.bots.data.model.database.RecentDbModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public final class RecentDao_Impl extends RecentDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<RecentDbModel> __insertionAdapterOfRecentDbModel;

    public RecentDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfRecentDbModel = new EntityInsertionAdapter<RecentDbModel>(this, __db) { // from class: com.iMe.bots.data.database.RecentDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `RecentDbModel` (`botId`,`tag`,`position`,`counter`) VALUES (?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, RecentDbModel value) {
                if (value.getBotId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getBotId());
                }
                if (value.getTag() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTag());
                }
                stmt.bindLong(3, value.getPosition());
                stmt.bindLong(4, value.getCounter());
            }
        };
    }

    @Override // com.iMe.bots.data.database.RecentDao
    public long insertOrReplace(final RecentDbModel entity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfRecentDbModel.insertAndReturnId(entity);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.RecentDao
    public void increaseCounter(final String botId, final String tag, final int position) {
        this.__db.beginTransaction();
        try {
            super.increaseCounter(botId, tag, position);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.RecentDao
    public Integer getCounter(final String botId, final String tag, final int position) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT counter FROM RecentDbModel WHERE botId LIKE ? AND tag LIKE ? AND position LIKE ?", 3);
        if (botId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, botId);
        }
        if (tag == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, tag);
        }
        acquire.bindLong(3, position);
        this.__db.assertNotSuspendingTransaction();
        Integer num = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst() && !query.isNull(0)) {
                num = Integer.valueOf(query.getInt(0));
            }
            return num;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // com.iMe.bots.data.database.RecentDao
    public List<Integer> getSortedPositions(final String botId, final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT position FROM RecentDbModel WHERE botId LIKE ? AND tag LIKE ? ORDER BY counter DESC", 2);
        if (botId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, botId);
        }
        if (tag == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, tag);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : Integer.valueOf(query.getInt(0)));
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
