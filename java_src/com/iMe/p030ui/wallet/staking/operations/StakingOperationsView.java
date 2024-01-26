package com.iMe.p030ui.wallet.staking.operations;

import com.iMe.p030ui.base.mvp.SwitchNetworkView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: StakingOperationsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView */
/* loaded from: classes4.dex */
public interface StakingOperationsView extends BaseView, SwitchNetworkView {
    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
