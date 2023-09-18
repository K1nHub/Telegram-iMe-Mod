package com.iMe.p031ui.wallet.common;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.common.WalletRootPresenter$$ViewStateProvider */
/* loaded from: classes6.dex */
public class WalletRootPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletRootView$$State();
    }
}
