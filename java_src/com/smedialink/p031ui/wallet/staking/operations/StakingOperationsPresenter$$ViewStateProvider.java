package com.smedialink.p031ui.wallet.staking.operations;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.wallet.staking.operations.StakingOperationsPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class StakingOperationsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new StakingOperationsView$$State();
    }
}
