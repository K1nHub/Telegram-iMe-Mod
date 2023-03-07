package org.fork.p046ui.fragment;

import android.app.Activity;
import com.smedialink.p031ui.music.MusicTab;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.MusicActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MusicActivity.kt */
/* renamed from: org.fork.ui.fragment.MusicActivity$channelsAdapter$2 */
/* loaded from: classes4.dex */
public final class MusicActivity$channelsAdapter$2 extends Lambda implements Function0<MusicActivity.DialogsAdapter> {
    final /* synthetic */ MusicActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicActivity$channelsAdapter$2(MusicActivity musicActivity) {
        super(0);
        this.this$0 = musicActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final MusicActivity.DialogsAdapter invoke() {
        MusicActivity musicActivity = this.this$0;
        Activity parentActivity = musicActivity.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new MusicActivity.DialogsAdapter(musicActivity, parentActivity, MusicTab.CHANNELS);
    }
}
