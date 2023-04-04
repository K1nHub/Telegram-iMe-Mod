package com.iMe.storage.data.locale.p028db.dao.minor.catalog;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.storage.data.locale.p028db.model.catalog.CatalogLanguageDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl */
/* loaded from: classes3.dex */
public final class CatalogLanguageDao_Impl extends CatalogLanguageDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<CatalogLanguageDb> __insertionAdapterOfCatalogLanguageDb;

    public CatalogLanguageDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfCatalogLanguageDb = new EntityInsertionAdapter<CatalogLanguageDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `CatalogLanguageDb` (`id`,`nativeTitle`,`title`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, CatalogLanguageDb value) {
                stmt.bindLong(1, value.getId());
                if (value.getNativeTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNativeTitle());
                }
                if (value.getTitle() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getTitle());
                }
            }
        };
        new EntityDeletionOrUpdateAdapter<CatalogLanguageDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `CatalogLanguageDb` WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, CatalogLanguageDb value) {
                stmt.bindLong(1, value.getId());
            }
        };
        new EntityDeletionOrUpdateAdapter<CatalogLanguageDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `CatalogLanguageDb` SET `id` = ?,`nativeTitle` = ?,`title` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, CatalogLanguageDb value) {
                stmt.bindLong(1, value.getId());
                if (value.getNativeTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNativeTitle());
                }
                if (value.getTitle() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getTitle());
                }
                stmt.bindLong(4, value.getId());
            }
        };
        new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM CatalogLanguageDb";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.base.BaseDao
    public Completable rxInsert(final List<? extends CatalogLanguageDb> obj) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CatalogLanguageDao_Impl.this.__db.beginTransaction();
                try {
                    CatalogLanguageDao_Impl.this.__insertionAdapterOfCatalogLanguageDb.insert((Iterable) obj);
                    CatalogLanguageDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    CatalogLanguageDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.minor.catalog.CatalogLanguageDao
    public Single<List<CatalogLanguageDb>> getLanguages() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM CatalogLanguageDb", 0);
        return RxRoom.createSingle(new Callable<List<CatalogLanguageDb>>() { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<CatalogLanguageDb> call() throws Exception {
                Cursor query = DBUtil.query(CatalogLanguageDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "nativeTitle");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "title");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(new CatalogLanguageDb(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3)));
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
