package com.smedialink.p031ui.wallet.staking.operations;

import com.smedialink.p031ui.base.mvp.SwitchNetworkView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: StakingOperationsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.staking.operations.StakingOperationsView */
/* loaded from: classes3.dex */
public interface StakingOperationsView extends BaseView, SwitchNetworkView {
    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
