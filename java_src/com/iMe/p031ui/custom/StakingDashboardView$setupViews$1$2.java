package com.iMe.p031ui.custom;

import com.iMe.fork.utils.Callbacks$Callback;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingDashboardView.kt */
/* renamed from: com.iMe.ui.custom.StakingDashboardView$setupViews$1$2 */
/* loaded from: classes3.dex */
public final class StakingDashboardView$setupViews$1$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ StakingDashboardView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingDashboardView$setupViews$1$2(StakingDashboardView stakingDashboardView) {
        super(0);
        this.this$0 = stakingDashboardView;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Callbacks$Callback callbacks$Callback;
        callbacks$Callback = this.this$0.onHistoryClick;
        callbacks$Callback.invoke();
    }
}