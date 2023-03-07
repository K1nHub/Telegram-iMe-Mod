package com.smedialink.p031ui.wallet.transaction;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class WalletTransactionsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletTransactionsView$$State();
    }
}
