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
import com.iMe.storage.data.locale.p028db.model.catalog.CatalogCategoryDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl */
/* loaded from: classes3.dex */
public final class CatalogCategoryDao_Impl extends CatalogCategoryDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<CatalogCategoryDb> __insertionAdapterOfCatalogCategoryDb;
    private final SharedSQLiteStatement __preparedStmtOfRxDeleteCategories;

    public CatalogCategoryDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfCatalogCategoryDb = new EntityInsertionAdapter<CatalogCategoryDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `CatalogCategoryDb` (`id`,`title`,`total`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, CatalogCategoryDb value) {
                stmt.bindLong(1, value.getId());
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                stmt.bindLong(3, value.getTotal());
            }
        };
        new EntityDeletionOrUpdateAdapter<CatalogCategoryDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `CatalogCategoryDb` WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, CatalogCategoryDb value) {
                stmt.bindLong(1, value.getId());
            }
        };
        new EntityDeletionOrUpdateAdapter<CatalogCategoryDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `CatalogCategoryDb` SET `id` = ?,`title` = ?,`total` = ? WHERE `id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, CatalogCategoryDb value) {
                stmt.bindLong(1, value.getId());
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                stmt.bindLong(3, value.getTotal());
                stmt.bindLong(4, value.getId());
            }
        };
        this.__preparedStmtOfRxDeleteCategories = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM CatalogCategoryDb";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.base.BaseDao
    public Completable rxInsert(final List<? extends CatalogCategoryDb> obj) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CatalogCategoryDao_Impl.this.__db.beginTransaction();
                try {
                    CatalogCategoryDao_Impl.this.__insertionAdapterOfCatalogCategoryDb.insert((Iterable) obj);
                    CatalogCategoryDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    CatalogCategoryDao_Impl.this.__db.endTransaction();
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.minor.catalog.CatalogCategoryDao
    public Completable rxDeleteCategories() {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = CatalogCategoryDao_Impl.this.__preparedStmtOfRxDeleteCategories.acquire();
                CatalogCategoryDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    CatalogCategoryDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    CatalogCategoryDao_Impl.this.__db.endTransaction();
                    CatalogCategoryDao_Impl.this.__preparedStmtOfRxDeleteCategories.release(acquire);
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p028db.dao.minor.catalog.CatalogCategoryDao
    public Single<List<CatalogCategoryDb>> getCategories() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM CatalogCategoryDb", 0);
        return RxRoom.createSingle(new Callable<List<CatalogCategoryDb>>() { // from class: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao_Impl.11
            @Override // java.util.concurrent.Callable
            public List<CatalogCategoryDb> call() throws Exception {
                Cursor query = DBUtil.query(CatalogCategoryDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "title");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "total");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(new CatalogCategoryDb(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3)));
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
