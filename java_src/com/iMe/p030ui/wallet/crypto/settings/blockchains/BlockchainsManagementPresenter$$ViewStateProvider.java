package com.iMe.p030ui.wallet.crypto.settings.blockchains;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class BlockchainsManagementPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new BlockchainsManagementView$$State();
    }
}
