package com.iMe.p031ui.wallet.staking;

import com.iMe.p031ui.custom.StakingDashboardView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.StakingFragment$dashboardView$2 */
/* loaded from: classes4.dex */
public final class StakingFragment$dashboardView$2 extends Lambda implements Function0<StakingDashboardView> {
    final /* synthetic */ StakingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingFragment$dashboardView$2(StakingFragment stakingFragment) {
        super(0);
        this.this$0 = stakingFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final StakingDashboardView invoke() {
        StakingDashboardView initDashboardView;
        initDashboardView = this.this$0.initDashboardView();
        return initDashboardView;
    }
}
