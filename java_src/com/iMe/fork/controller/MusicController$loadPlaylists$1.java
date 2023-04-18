package com.iMe.fork.controller;

import com.iMe.storage.data.locale.p027db.model.music.PlaylistsDb;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MusicController.kt */
/* loaded from: classes3.dex */
public final class MusicController$loadPlaylists$1 extends Lambda implements Function1<PlaylistsDb, Boolean> {
    public static final MusicController$loadPlaylists$1 INSTANCE = new MusicController$loadPlaylists$1();

    MusicController$loadPlaylists$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(PlaylistsDb it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!it.getMessageIds().isEmpty());
    }
}
