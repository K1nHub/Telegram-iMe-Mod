package com.iMe.p030ui.wallet.cryptobox;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class CryptoBoxesPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new CryptoBoxesView$$State();
    }
}
