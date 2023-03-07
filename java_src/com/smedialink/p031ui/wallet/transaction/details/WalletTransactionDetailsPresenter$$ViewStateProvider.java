package com.smedialink.p031ui.wallet.transaction.details;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class WalletTransactionDetailsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletTransactionDetailsView$$State();
    }
}
