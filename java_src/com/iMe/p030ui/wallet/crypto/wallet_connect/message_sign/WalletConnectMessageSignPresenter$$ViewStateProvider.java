package com.iMe.p030ui.wallet.crypto.wallet_connect.message_sign;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter$$ViewStateProvider */
/* loaded from: classes.dex */
public class WalletConnectMessageSignPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletConnectMessageSignView$$State();
    }
}
