package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletConnectSwitchNetworkPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectSwitchNetworkPresenter extends BasePresenter<WalletConnectSwitchNetworkView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final NetworkType networkType;
    private final long requestId;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final WalletConnectSessionItem sessionItem;
    private final WalletConnectManager walletConnectManager;

    public WalletConnectSwitchNetworkPresenter(long j, WalletConnectSessionItem sessionItem, NetworkType networkType, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, WalletConnectManager walletConnectManager) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        this.requestId = j;
        this.sessionItem = sessionItem;
        this.networkType = networkType;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.walletConnectManager = walletConnectManager;
    }

    public final void approveNetworkChange() {
        this.walletConnectManager.approveRequest(this.sessionItem.getSessionKey(), this.requestId, null);
        this.cryptoPreferenceHelper.setNetworkType(this.networkType);
        this.rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
    }

    public final void rejectNetworkChange() {
        this.walletConnectManager.rejectRequest(this.sessionItem.getSessionKey(), this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletConnectSessionItem walletConnectSessionItem = this.sessionItem;
        ((WalletConnectSwitchNetworkView) getViewState()).setupScreenWithData(walletConnectSessionItem.getPeerIconUrl(), walletConnectSessionItem.getPeerName(), walletConnectSessionItem.getPeerUrl(), this.networkType.getLogo(), this.resourceManager.getString(this.networkType.getTitleResId()));
    }
}
