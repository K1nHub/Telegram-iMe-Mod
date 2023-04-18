package com.iMe.p031ui.adapter.provider;

import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.p031ui.custom.StakingDashboardView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: StakingDashboardProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingDashboardProvider$convert$2 */
/* loaded from: classes3.dex */
final class StakingDashboardProvider$convert$2 extends Lambda implements Function1<StakingDashboardView, Unit> {
    final /* synthetic */ StakingDashboardItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingDashboardProvider$convert$2(StakingDashboardItem stakingDashboardItem) {
        super(1);
        this.$item = stakingDashboardItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(StakingDashboardView stakingDashboardView) {
        invoke2(stakingDashboardView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(StakingDashboardView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setupItem(this.$item);
    }
}
