package com.iMe.p030ui.wallet.donations;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class WalletDonationsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletDonationsView$$State();
    }
}
