package com.smedialink.p031ui.wallet.settings;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class WalletSettingsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new WalletSettingsView$$State();
    }
}
