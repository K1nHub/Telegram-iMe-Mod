package com.iMe.p031ui.wallet.actions.send.recipient;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class WalletSendRecipientPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletSendRecipientView$$State();
    }
}
