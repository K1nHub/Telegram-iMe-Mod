package com.smedialink.p031ui.wallet.staking;

import com.smedialink.model.staking.StakingNavigationTab;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.StakingFragment$pageTabs$2 */
/* loaded from: classes3.dex */
public final class StakingFragment$pageTabs$2 extends Lambda implements Function0<List<? extends StakingNavigationTab>> {
    final /* synthetic */ StakingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingFragment$pageTabs$2(StakingFragment stakingFragment) {
        super(0);
        this.this$0 = stakingFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends StakingNavigationTab> invoke() {
        List<? extends StakingNavigationTab> initPageTabs;
        initPageTabs = this.this$0.initPageTabs();
        return initPageTabs;
    }
}
