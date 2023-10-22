package com.iMe.storage.data.locale.p026db.dao.minor.social;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p026db.model.social.SocialNetworkDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao_Impl */
/* loaded from: classes3.dex */
public final class SocialNetworkDao_Impl implements SocialNetworkDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<SocialNetworkDb> __insertionAdapterOfSocialNetworkDb;
    private final SharedSQLiteStatement __preparedStmtOfClearByUserId;

    public SocialNetworkDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfSocialNetworkDb = new EntityInsertionAdapter<SocialNetworkDb>(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `social` (`profileId`,`social`,`iconUrl`,`socialPosition`,`socialElementId`,`socialElementAvatarUrl`,`socialUserName`,`socialWebUrl`,`isActive`,`beforeConnectMessage`) VALUES (?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, SocialNetworkDb value) {
                stmt.bindLong(1, value.getProfileId());
                if (value.getSocial() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getSocial());
                }
                if (value.getIconUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getIconUrl());
                }
                stmt.bindLong(4, value.getSocialPosition());
                if (value.getSocialElementId() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getSocialElementId());
                }
                if (value.getSocialElementAvatarUrl() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindString(6, value.getSocialElementAvatarUrl());
                }
                if (value.getSocialUserName() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getSocialUserName());
                }
                if (value.getSocialWebUrl() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getSocialWebUrl());
                }
                stmt.bindLong(9, value.isActive() ? 1L : 0L);
                if (value.getBeforeConnectMessage() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindString(10, value.getBeforeConnectMessage());
                }
            }
        };
        this.__preparedStmtOfClearByUserId = new SharedSQLiteStatement(this, __db) { // from class: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM social WHERE profileId = ?";
            }
        };
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao
    public void insertAll(final List<SocialNetworkDb> socialNetworks) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfSocialNetworkDb.insert(socialNetworks);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao
    public void clearAndInsertAll(final long profileId, final List<SocialNetworkDb> socialNetworks) {
        this.__db.beginTransaction();
        try {
            SocialNetworkDao.CC.$default$clearAndInsertAll(this, profileId, socialNetworks);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao
    public Completable clearByUserId(final long profileId) {
        return Completable.fromCallable(new Callable<Void>() { // from class: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao_Impl.3
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                SupportSQLiteStatement acquire = SocialNetworkDao_Impl.this.__preparedStmtOfClearByUserId.acquire();
                acquire.bindLong(1, profileId);
                SocialNetworkDao_Impl.this.__db.beginTransaction();
                try {
                    acquire.executeUpdateDelete();
                    SocialNetworkDao_Impl.this.__db.setTransactionSuccessful();
                    return null;
                } finally {
                    SocialNetworkDao_Impl.this.__db.endTransaction();
                    SocialNetworkDao_Impl.this.__preparedStmtOfClearByUserId.release(acquire);
                }
            }
        });
    }

    @Override // com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao
    public Single<List<SocialNetworkDb>> getAllByProfileId(final long profileId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM social WHERE profileId = ?", 1);
        acquire.bindLong(1, profileId);
        return RxRoom.createSingle(new Callable<List<SocialNetworkDb>>() { // from class: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao_Impl.4
            @Override // java.util.concurrent.Callable
            public List<SocialNetworkDb> call() throws Exception {
                Cursor query = DBUtil.query(SocialNetworkDao_Impl.this.__db, acquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "profileId");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "social");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "iconUrl");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "socialPosition");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "socialElementId");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "socialElementAvatarUrl");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "socialUserName");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "socialWebUrl");
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "isActive");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "beforeConnectMessage");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(new SocialNetworkDb(query.getLong(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.isNull(columnIndexOrThrow6) ? null : query.getString(columnIndexOrThrow6), query.isNull(columnIndexOrThrow7) ? null : query.getString(columnIndexOrThrow7), query.isNull(columnIndexOrThrow8) ? null : query.getString(columnIndexOrThrow8), query.getInt(columnIndexOrThrow9) != 0, query.isNull(columnIndexOrThrow10) ? null : query.getString(columnIndexOrThrow10)));
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
