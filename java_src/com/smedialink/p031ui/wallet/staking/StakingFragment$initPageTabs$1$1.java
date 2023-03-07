package com.smedialink.p031ui.wallet.staking;

import android.view.View;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.StakingFragment$initPageTabs$1$1 */
/* loaded from: classes3.dex */
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
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(this.$tab.getFragmentId());
    }
}
