package com.iMe.p032ui.wallet.staking.operations;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class StakingOperationsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new StakingOperationsView$$State();
    }
}
