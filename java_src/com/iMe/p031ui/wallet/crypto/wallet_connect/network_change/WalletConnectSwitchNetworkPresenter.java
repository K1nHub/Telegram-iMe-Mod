package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletConnectSwitchNetworkPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter */
/* loaded from: classes4.dex */
public final class WalletConnectSwitchNetworkPresenter extends BasePresenter<WalletConnectSwitchNetworkView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final Network network;
    private final long requestId;
    private final RxEventBus rxEventBus;
    private final WalletConnectSessionItem sessionItem;
    private final WalletConnectManager walletConnectManager;

    public WalletConnectSwitchNetworkPresenter(String networkId, long j, WalletConnectSessionItem sessionItem, CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus, WalletConnectManager walletConnectManager) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        this.requestId = j;
        this.sessionItem = sessionItem;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
        this.walletConnectManager = walletConnectManager;
        this.network = NetworksHelper.getNetworkById(networkId);
    }

    public final void approveNetworkChange() {
        this.walletConnectManager.approveRequest(this.sessionItem.getSessionKey(), this.requestId, null);
        this.cryptoPreferenceHelper.setNetwork(this.network);
        this.rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
    }

    public final void rejectNetworkChange() {
        this.walletConnectManager.rejectRequest(this.sessionItem.getSessionKey(), this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletConnectSessionItem walletConnectSessionItem = this.sessionItem;
        ((WalletConnectSwitchNetworkView) getViewState()).setupScreenWithData(walletConnectSessionItem.getPeerIconUrl(), walletConnectSessionItem.getPeerName(), walletConnectSessionItem.getPeerUrl(), this.network.getSmallLogoUrl(), this.network.getFullName());
    }
}
