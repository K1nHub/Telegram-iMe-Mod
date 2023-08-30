package com.iMe.p031ui.wallet.staking.transaction;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class StakingTransactionPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new StakingTransactionView$$State();
    }
}
