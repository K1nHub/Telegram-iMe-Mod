package com.smedialink.p031ui.wallet.staking.operations;

import com.smedialink.model.wallet.details.WalletTokenDetailsNavigationTab;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingOperationsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.operations.StakingOperationsFragment$pageTabs$2 */
/* loaded from: classes3.dex */
public final class StakingOperationsFragment$pageTabs$2 extends Lambda implements Function0<List<? extends WalletTokenDetailsNavigationTab>> {
    final /* synthetic */ StakingOperationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationsFragment$pageTabs$2(StakingOperationsFragment stakingOperationsFragment) {
        super(0);
        this.this$0 = stakingOperationsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends WalletTokenDetailsNavigationTab> invoke() {
        List<? extends WalletTokenDetailsNavigationTab> initPageTabs;
        initPageTabs = this.this$0.initPageTabs();
        return initPageTabs;
    }
}
