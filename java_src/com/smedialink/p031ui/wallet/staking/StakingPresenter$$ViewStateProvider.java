package com.smedialink.p031ui.wallet.staking;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.wallet.staking.StakingPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class StakingPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new StakingView$$State();
    }
}
