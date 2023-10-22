package com.iMe.p030ui.wallet.staking;

import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.p030ui.base.mvp.SwipeRefreshView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.staking.StakingView */
/* loaded from: classes4.dex */
public interface StakingView extends BaseView, SwipeRefreshView {
    void onSetupNavigationRouter();

    void onTabSelected(int i);

    @OneExecution
    void showStakingInfoHint();

    void updateDashboardItem(StakingDashboardItem stakingDashboardItem);
}
