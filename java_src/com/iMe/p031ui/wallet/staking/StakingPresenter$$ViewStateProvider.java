package com.iMe.p031ui.wallet.staking;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.staking.StakingPresenter$$ViewStateProvider */
/* loaded from: classes6.dex */
public class StakingPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new StakingView$$State();
    }
}
