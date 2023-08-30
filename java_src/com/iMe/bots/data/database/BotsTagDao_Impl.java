package com.iMe.bots.data.database;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.bots.data.database.converter.Converter;
import com.iMe.bots.data.model.database.TagDbModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class BotsTagDao_Impl extends BotsTagDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<TagDbModel> __insertionAdapterOfTagDbModel;

    public BotsTagDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfTagDbModel = new EntityInsertionAdapter<TagDbModel>(this, __db) { // from class: com.iMe.bots.data.database.BotsTagDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `TagDbModel` (`id`,`title`,`hidden`,`locales`) VALUES (?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, TagDbModel value) {
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
                stmt.bindLong(3, value.getHidden());
                String fromMap = Converter.fromMap(value.getLocales());
                if (fromMap == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, fromMap);
                }
            }
        };
    }

    @Override // com.iMe.bots.data.database.BotsTagDao
    public List<Long> insertOrReplace(final List<TagDbModel> entities) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.__insertionAdapterOfTagDbModel.insertAndReturnIdsList(entities);
            this.__db.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.bots.data.database.BotsTagDao
    public List<TagDbModel> getAll() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM TagDbModel", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "title");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "hidden");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "locales");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new TagDbModel(query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3), Converter.toMap(query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4))));
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
