package com.iMe.storage.data.locale.p026db.dao.minor.cloud;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p026db.model.cloud.CloudAlbumDb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.cloud.CloudAlbumsDao_Impl */
/* loaded from: classes3.dex */
public final class CloudAlbumsDao_Impl extends CloudAlbumsDao {
    private final RoomDatabase __db;

    public CloudAlbumsDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        new EntityInsertionAdapter<CloudAlbumDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.cloud.CloudAlbumsDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `CloudAlbumDb` (`userId`,`albumId`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, CloudAlbumDb value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getAlbumId());
            }
        };
        new EntityDeletionOrUpdateAdapter<CloudAlbumDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.cloud.CloudAlbumsDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `CloudAlbumDb` WHERE `userId` = ? AND `albumId` = ?";
            }
        };
        new EntityDeletionOrUpdateAdapter<CloudAlbumDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.cloud.CloudAlbumsDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR REPLACE `CloudAlbumDb` SET `userId` = ?,`albumId` = ? WHERE `userId` = ? AND `albumId` = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.minor.cloud.CloudAlbumsDao
    public List<CloudAlbumDb> getAllData() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM CloudAlbumDb", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "userId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "albumId");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new CloudAlbumDb(query.getLong(columnIndexOrThrow), query.getLong(columnIndexOrThrow2)));
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
