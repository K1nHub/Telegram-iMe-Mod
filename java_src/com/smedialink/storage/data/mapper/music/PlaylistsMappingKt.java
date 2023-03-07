package com.smedialink.storage.data.mapper.music;

import com.smedialink.storage.data.locale.p027db.model.music.PlaylistsDb;
import com.smedialink.storage.domain.model.music.PlaylistModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PlaylistsMapping.kt */
/* loaded from: classes3.dex */
public final class PlaylistsMappingKt {
    public static final PlaylistModel mapToDomain(PlaylistsDb playlistsDb) {
        Intrinsics.checkNotNullParameter(playlistsDb, "<this>");
        return new PlaylistModel(new ArrayList(playlistsDb.getMessageIds()), playlistsDb.getDialogId());
    }

    public static final PlaylistsDb mapToDb(PlaylistModel playlistModel, long j) {
        List mutableList;
        Intrinsics.checkNotNullParameter(playlistModel, "<this>");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) playlistModel.getMessageIds());
        return new PlaylistsDb(mutableList, playlistModel.getDialogId(), j);
    }
}
