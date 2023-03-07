package com.smedialink.p031ui.adapter.provider;

import com.smedialink.model.staking.StakingDashboardItem;
import com.smedialink.p031ui.custom.StakingDashboardView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingDashboardProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.StakingDashboardProvider$convert$1 */
/* loaded from: classes3.dex */
public final class StakingDashboardProvider$convert$1 extends Lambda implements Function1<StakingDashboardView, Unit> {
    final /* synthetic */ StakingDashboardItem $item;
    final /* synthetic */ StakingDashboardProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingDashboardProvider$convert$1(StakingDashboardItem stakingDashboardItem, StakingDashboardProvider stakingDashboardProvider) {
        super(1);
        this.$item = stakingDashboardItem;
        this.this$0 = stakingDashboardProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(StakingDashboardView stakingDashboardView) {
        invoke2(stakingDashboardView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(StakingDashboardView applyForView) {
        Callbacks$Callback callbacks$Callback;
        Callbacks$Callback callbacks$Callback2;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setupItem(this.$item);
        callbacks$Callback = this.this$0.onCalculatorClick;
        callbacks$Callback2 = this.this$0.onHistoryClick;
        applyForView.setupListeners(callbacks$Callback, callbacks$Callback2);
    }
}
