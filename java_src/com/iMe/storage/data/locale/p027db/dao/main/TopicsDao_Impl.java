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
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.iMe.storage.data.locale.p027db.database.converter.AppMainConverter;
import com.iMe.storage.data.locale.p027db.model.topics.TopicDb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.main.TopicsDao_Impl */
/* loaded from: classes3.dex */
public final class TopicsDao_Impl extends TopicsDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<TopicDb> __insertionAdapterOfTopicDb;
    private final SharedSQLiteStatement __preparedStmtOfRemoveTopic;
    private final SharedSQLiteStatement __preparedStmtOfRemoveTopics;

    public TopicsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfTopicDb = new EntityInsertionAdapter<TopicDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TopicsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `TopicDb` (`topicId`,`name`,`icon`,`order`,`presets`,`dialogs`,`userId`) VALUES (?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, TopicDb value) {
                stmt.bindLong(1, value.getTopicId());
                if (value.getName() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getName());
                }
                if (value.getIcon() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getIcon());
                }
                stmt.bindLong(4, value.getOrder());
                String convertLongListToString = AppMainConverter.convertLongListToString(value.getPresets());
                if (convertLongListToString == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, convertLongListToString);
                }
                String convertLongListToString2 = AppMainConverter.convertLongListToString(value.getDialogs());
                if (convertLongListToString2 == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, convertLongListToString2);
                }
                stmt.bindLong(7, value.getUserId());
            }
        };
        new EntityDeletionOrUpdateAdapter<TopicDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TopicsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `TopicDb` WHERE `userId` = ? AND `topicId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, TopicDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getTopicId());
            }
        };
        new EntityDeletionOrUpdateAdapter<TopicDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TopicsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `TopicDb` SET `topicId` = ?,`name` = ?,`icon` = ?,`order` = ?,`presets` = ?,`dialogs` = ?,`userId` = ? WHERE `userId` = ? AND `topicId` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, TopicDb value) {
                stmt.bindLong(1, value.getTopicId());
                if (value.getName() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getName());
                }
                if (value.getIcon() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getIcon());
                }
                stmt.bindLong(4, value.getOrder());
                String convertLongListToString = AppMainConverter.convertLongListToString(value.getPresets());
                if (convertLongListToString == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, convertLongListToString);
                }
                String convertLongListToString2 = AppMainConverter.convertLongListToString(value.getDialogs());
                if (convertLongListToString2 == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, convertLongListToString2);
                }
                stmt.bindLong(7, value.getUserId());
                stmt.bindLong(8, value.getUserId());
                stmt.bindLong(9, value.getTopicId());
            }
        };
        this.__preparedStmtOfRemoveTopic = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TopicsDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM TopicDb WHERE userId = ? AND topicId = ?";
            }
        };
        this.__preparedStmtOfRemoveTopics = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.main.TopicsDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM TopicDb WHERE userId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.base.BaseDao
    public void insert(final List<? extends TopicDb> obj) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfTopicDb.insert(obj);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TopicsDao
    public void restoreBackup(final long userId, final List<TopicDb> topics) {
        this.__db.beginTransaction();
        try {
            super.restoreBackup(userId, topics);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TopicsDao
    public void removeTopic(final long userId, final long topicId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveTopic.acquire();
        acquire.bindLong(1, userId);
        acquire.bindLong(2, topicId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveTopic.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TopicsDao
    public void removeTopics(final long userId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveTopics.acquire();
        acquire.bindLong(1, userId);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveTopics.release(acquire);
        }
    }

    @Override // com.iMe.storage.data.locale.p027db.dao.main.TopicsDao
    public List<TopicDb> getTopics(final long userId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM TopicDb WHERE userId = ?", 1);
        acquire.bindLong(1, userId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "topicId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, AppMeasurementSdk.ConditionalUserProperty.NAME);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "icon");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "order");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "presets");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "dialogs");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "userId");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new TopicDb(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), AppMainConverter.convertStringToLongList(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5)), AppMainConverter.convertStringToLongList(query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6)), query.getLong(columnIndexOrThrow7)));
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
