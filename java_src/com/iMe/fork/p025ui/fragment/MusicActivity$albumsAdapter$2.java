package com.iMe.fork.p025ui.fragment;

import android.app.Activity;
import com.iMe.fork.p025ui.fragment.MusicActivity;
import com.iMe.p032ui.music.MusicTab;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MusicActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MusicActivity$albumsAdapter$2 */
/* loaded from: classes3.dex */
public final class MusicActivity$albumsAdapter$2 extends Lambda implements Function0<MusicActivity.DialogsAdapter> {
    final /* synthetic */ MusicActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicActivity$albumsAdapter$2(MusicActivity musicActivity) {
        super(0);
        this.this$0 = musicActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final MusicActivity.DialogsAdapter invoke() {
        MusicActivity musicActivity = this.this$0;
        Activity parentActivity = musicActivity.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new MusicActivity.DialogsAdapter(musicActivity, parentActivity, MusicTab.ALBUMS);
    }
}
