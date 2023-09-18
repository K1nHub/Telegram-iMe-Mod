package com.iMe.p031ui.wallet.transaction;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$$ViewStateProvider */
/* loaded from: classes6.dex */
public class WalletTransactionsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletTransactionsView$$State();
    }
}
