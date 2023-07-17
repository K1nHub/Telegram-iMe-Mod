package com.iMe.p031ui.wallet.crypto.settings;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class WalletAccountSettingsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletAccountSettingsView$$State();
    }
}
