package com.smedialink.storage.data.locale.p027db.dao.main;

import com.smedialink.storage.data.locale.p027db.dao.base.BaseDao;
import com.smedialink.storage.data.locale.p027db.model.music.PlaylistsDb;
import com.smedialink.storage.data.mapper.music.PlaylistsMappingKt;
import com.smedialink.storage.domain.model.music.PlaylistModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PlaylistsDao.kt */
/* renamed from: com.smedialink.storage.data.locale.db.dao.main.PlaylistsDao */
/* loaded from: classes3.dex */
public abstract class PlaylistsDao implements BaseDao<PlaylistsDb> {
    public abstract void deleteAllPlaylistsByUserId(long j);

    public abstract List<PlaylistsDb> getAllPlaylistsForUser(long j);

    public void restoreBackup(long j, List<PlaylistModel> settings) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(settings, "settings");
        deleteAllPlaylistsByUserId(j);
        if (!settings.isEmpty()) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(settings, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (PlaylistModel playlistModel : settings) {
                arrayList.add(PlaylistsMappingKt.mapToDb(playlistModel, j));
            }
            insert((List) arrayList);
        }
    }
}
