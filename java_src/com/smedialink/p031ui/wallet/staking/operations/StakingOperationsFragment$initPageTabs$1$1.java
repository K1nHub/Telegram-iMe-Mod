package com.smedialink.p031ui.wallet.staking.operations;

import android.view.View;
import com.smedialink.model.wallet.details.StakingOperationsGroup;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingOperationsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.operations.StakingOperationsFragment$initPageTabs$1$1 */
/* loaded from: classes3.dex */
public final class StakingOperationsFragment$initPageTabs$1$1 extends Lambda implements Function0<View> {
    final /* synthetic */ StakingOperationsGroup $group;
    final /* synthetic */ StakingOperationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationsFragment$initPageTabs$1$1(StakingOperationsFragment stakingOperationsFragment, StakingOperationsGroup stakingOperationsGroup) {
        super(0);
        this.this$0 = stakingOperationsFragment;
        this.$group = stakingOperationsGroup;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        NavigationRouter navigationRouter;
        navigationRouter = this.this$0.getNavigationRouter();
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(this.$group.getId());
    }
}
