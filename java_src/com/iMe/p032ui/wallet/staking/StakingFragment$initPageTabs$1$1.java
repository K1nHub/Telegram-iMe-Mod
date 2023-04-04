package com.iMe.p032ui.wallet.staking;

import android.view.View;
import com.iMe.navigation.common.router.base.BaseNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import com.iMe.storage.domain.model.staking.StakingTabType;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.StakingFragment$initPageTabs$1$1 */
/* loaded from: classes4.dex */
public final class StakingFragment$initPageTabs$1$1 extends Lambda implements Function0<View> {
    final /* synthetic */ StakingTabType $tab;
    final /* synthetic */ StakingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingFragment$initPageTabs$1$1(StakingFragment stakingFragment, StakingTabType stakingTabType) {
        super(0);
        this.this$0 = stakingFragment;
        this.$tab = stakingTabType;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        NavigationRouter navigationRouter;
        navigationRouter = this.this$0.getNavigationRouter();
        Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.base.mvp.MvpFragment>");
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(this.$tab.getFragmentId());
    }
}
