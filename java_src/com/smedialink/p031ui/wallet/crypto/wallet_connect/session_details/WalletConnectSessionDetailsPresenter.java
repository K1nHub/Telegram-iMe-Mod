package com.smedialink.p031ui.wallet.crypto.wallet_connect.session_details;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.utils.extentions.common.StringExtKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
/* compiled from: WalletConnectSessionDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectSessionDetailsPresenter extends BasePresenter<WalletConnectSessionDetailsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final WalletConnectSessionItem sessionItem;

    public WalletConnectSessionDetailsPresenter(WalletConnectSessionItem sessionItem, CryptoAccessManager cryptoAccessManager) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        this.sessionItem = sessionItem;
        this.cryptoAccessManager = cryptoAccessManager;
    }

    public final DialogModel getDisconnectConfirmationDialogModel() {
        return new DialogModel(LocaleController.getString("AreYouSureSessionTitle", C3286R.string.AreYouSureSessionTitle), LocaleController.getString("TerminateSessionText", C3286R.string.TerminateSessionText), LocaleController.getString("Cancel", C3286R.string.Cancel), LocaleController.getString("Terminate", C3286R.string.Terminate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletConnectSessionItem walletConnectSessionItem = this.sessionItem;
        WalletConnectSessionDetailsView walletConnectSessionDetailsView = (WalletConnectSessionDetailsView) getViewState();
        String peerIconUrl = walletConnectSessionItem.getPeerIconUrl();
        String peerName = walletConnectSessionItem.getPeerName();
        String peerUrl = walletConnectSessionItem.getPeerUrl();
        String date = walletConnectSessionItem.getDate();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        String address = eVMWallet != null ? eVMWallet.getAddress() : null;
        if (address == null) {
            address = "";
        }
        walletConnectSessionDetailsView.setupScreenWithData(peerIconUrl, peerName, peerUrl, date, StringExtKt.shortened$default(address, 0, 1, null), walletConnectSessionItem.getNetwork());
    }
}
