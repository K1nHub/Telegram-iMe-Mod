package com.iMe.p030ui.wallet.staking.conditions;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class StakingConditionsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new StakingConditionsView$$State();
    }
}
