package com.iMe.fork.p024ui.fragment;

import android.app.Activity;
import com.iMe.fork.p024ui.fragment.MusicActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MusicActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MusicActivity$deviceAdapter$2 */
/* loaded from: classes3.dex */
public final class MusicActivity$deviceAdapter$2 extends Lambda implements Function0<MusicActivity.DeviceAdapter> {
    final /* synthetic */ MusicActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicActivity$deviceAdapter$2(MusicActivity musicActivity) {
        super(0);
        this.this$0 = musicActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final MusicActivity.DeviceAdapter invoke() {
        MusicActivity musicActivity = this.this$0;
        Activity parentActivity = musicActivity.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new MusicActivity.DeviceAdapter(musicActivity, parentActivity);
    }
}
