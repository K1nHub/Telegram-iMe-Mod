package com.smedialink.p031ui.wallet.common;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.wallet.common.WalletRootPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class WalletRootPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletRootView$$State();
    }
}
