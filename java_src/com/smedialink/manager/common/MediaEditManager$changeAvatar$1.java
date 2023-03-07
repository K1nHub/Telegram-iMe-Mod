package com.smedialink.manager.common;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
public final class MediaEditManager$changeAvatar$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ int $reqId;
    final /* synthetic */ MediaEditManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaEditManager$changeAvatar$1(MediaEditManager mediaEditManager, int i) {
        super(0);
        this.this$0 = mediaEditManager;
        this.$reqId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.parentFragment;
        baseFragment.getConnectionsManager().cancelRequest(this.$reqId, true);
    }
}
