package com.iMe.storage.data.locale.p026db.dao.main;

import com.iMe.storage.data.locale.p026db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p026db.model.cloud.AlbumsDb;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AlbumsDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.AlbumsDao */
/* loaded from: classes3.dex */
public abstract class AlbumsDao implements BaseDao<AlbumsDb> {
    public abstract void deleteAllAlbumsByUserId(long j);

    public abstract void deleteByAlbumId(long j, long j2);

    public abstract List<Long> getAllAlbumsForUser(long j);

    public void restoreBackup(long j, List<Long> albums) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(albums, "albums");
        deleteAllAlbumsByUserId(j);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(albums, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : albums) {
            arrayList.add(new AlbumsDb(j, number.longValue()));
        }
        insert((List) arrayList);
    }
}
