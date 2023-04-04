package com.iMe.bots.data.database;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.bots.data.database.converter.Converter;
import com.iMe.bots.data.model.database.BotsCategoryDbModel;
import io.reactivex.Flowable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3.dex */
public final class BotsCategoryDao_Impl extends BotsCategoryDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<BotsCategoryDbModel> __insertionAdapterOfBotsCategoryDbModel;

    public BotsCategoryDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfBotsCategoryDbModel = new EntityInsertionAdapter<BotsCategoryDbModel>(this, __db) { // from class: com.iMe.bots.data.database.BotsCategoryDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `BotsCategoryDbModel` (`id`,`title`,`priority`,`tags`,`locales`) VALUES (?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, BotsCategoryDbModel value) {
                if (value.getId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getId());
                }
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                stmt.bindLong(3, value.getPriority());
                String fromStrings = Converter.fromStrings(value.getTags());
                if (fromStrings == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, fromStrings);
                }
                String fromMap = Converter.fromMap(value.getLocales());
                if (fromMap == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, fromMap);
                }
            }
        };
    }

    @Override // com.iMe.bots.data.database.BotsCategoryDao
    public List<Long> insertOrReplace(final List<BotsCategoryDbModel> entities) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.__insertionAdapterOfBotsCategoryDbModel.insertAndReturnIdsList(entities);
            this.__db.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.BotsCategoryDao
    public Flowable<List<BotsCategoryDbModel>> getAll() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM BotsCategoryDbModel", 0);
        return RxRoom.createFlowable(this.__db, false, new String[]{"BotsCategoryDbModel"}, new Callable<List<BotsCategoryDbModel>>() { // from class: com.iMe.bots.data.database.BotsCategoryDao_Impl.2
            @Override // java.util.concurrent.Callable
            public List<BotsCategoryDbModel> call() throws Exception {
                Cursor query = DBUtil.query(BotsCategoryDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "title");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "priority");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "tags");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "locales");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(new BotsCategoryDbModel(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3), Converter.fromString(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4)), Converter.toMap(query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5))));
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
