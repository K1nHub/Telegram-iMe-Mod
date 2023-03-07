package com.google.android.exoplayer2;

import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.util.ListenerSet;
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayerImpl$$ExternalSyntheticLambda26 implements ListenerSet.Event {
    public static final /* synthetic */ ExoPlayerImpl$$ExternalSyntheticLambda26 INSTANCE = new ExoPlayerImpl$$ExternalSyntheticLambda26();

    private /* synthetic */ ExoPlayerImpl$$ExternalSyntheticLambda26() {
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public final void invoke(Object obj) {
        ((Player.Listener) obj).onSeekProcessed();
    }
}
