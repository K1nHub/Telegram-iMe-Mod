package com.smedialink.p031ui.wallet.home.p032v2.details;

import android.view.View;
import com.smedialink.model.wallet.details.StakingOperationsGroup;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$initPageTabs$3$1 */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsFragment$initPageTabs$3$1 extends Lambda implements Function0<View> {
    final /* synthetic */ StakingOperationsGroup $group;
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$initPageTabs$3$1(WalletTokenDetailsFragment walletTokenDetailsFragment, StakingOperationsGroup stakingOperationsGroup) {
        super(0);
        this.this$0 = walletTokenDetailsFragment;
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
