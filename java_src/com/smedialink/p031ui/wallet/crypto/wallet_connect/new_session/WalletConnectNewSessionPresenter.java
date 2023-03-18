package com.smedialink.p031ui.wallet.crypto.wallet_connect.new_session;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletConnectNewSessionPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectNewSessionPresenter extends BasePresenter<WalletConnectNewSessionView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private boolean isApproved;
    private final ResourceManager resourceManager;
    private final WCSessionStoreItem sessionItem;
    private final WalletConnectManager walletConnectManager;

    public WalletConnectNewSessionPresenter(WCSessionStoreItem sessionItem, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, WalletConnectManager walletConnectManager) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        this.sessionItem = sessionItem;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.walletConnectManager = walletConnectManager;
    }

    public final void approveSession() {
        this.walletConnectManager.approveNewSession(this.sessionItem);
        this.isApproved = true;
    }

    public final void rejectSession() {
        if (this.isApproved) {
            return;
        }
        this.walletConnectManager.rejectNewSession(this.sessionItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WCSessionStoreItem wCSessionStoreItem = this.sessionItem;
        WalletConnectNewSessionView walletConnectNewSessionView = (WalletConnectNewSessionView) getViewState();
        String str = (String) CollectionsKt.lastOrNull(wCSessionStoreItem.getRemotePeerMeta().getIcons());
        if (str == null) {
            str = "";
        }
        String name = wCSessionStoreItem.getRemotePeerMeta().getName();
        String url = wCSessionStoreItem.getRemotePeerMeta().getUrl();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        String address = eVMWallet != null ? eVMWallet.getAddress() : null;
        walletConnectNewSessionView.setupScreenWithData(str, name, url, StringExtKt.shortened$default(address != null ? address : "", 0, 1, null), this.resourceManager.getString(this.cryptoPreferenceHelper.getNetworkType().getTitle()));
    }
}
