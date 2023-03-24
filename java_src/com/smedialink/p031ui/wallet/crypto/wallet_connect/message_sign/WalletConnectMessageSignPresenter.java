package com.smedialink.p031ui.wallet.crypto.wallet_connect.message_sign;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.data.utils.crypto.CryptoEVMUtils;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3301R;
/* compiled from: WalletConnectMessageSignPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectMessageSignPresenter extends BasePresenter<WalletConnectMessageSignView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final WCEthereumSignMessage message;
    private final long requestId;
    private final ResourceManager resourceManager;
    private final WalletConnectSessionItem sessionItem;
    private final WalletConnectManager walletConnectManager;

    /* compiled from: WalletConnectMessageSignPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WCEthereumSignMessage.WCSignType.values().length];
            try {
                iArr[WCEthereumSignMessage.WCSignType.PERSONAL_MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletConnectMessageSignPresenter(long j, WalletConnectSessionItem sessionItem, WCEthereumSignMessage message, WalletConnectManager walletConnectManager, ResourceManager resourceManager, CryptoAccessManager cryptoAccessManager) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        this.requestId = j;
        this.sessionItem = sessionItem;
        this.message = message;
        this.walletConnectManager = walletConnectManager;
        this.resourceManager = resourceManager;
        this.cryptoAccessManager = cryptoAccessManager;
    }

    public final DialogModel getSendConfirmationDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3301R.string.wallet_connect_message_sign_confirm_title), this.resourceManager.getString(C3301R.string.wallet_connect_message_sign_confirm_description), this.resourceManager.getString(C3301R.string.common_cancel), this.resourceManager.getString(C3301R.string.wallet_connect_transaction_button_sign));
    }

    public final void approveSign() {
        this.walletConnectManager.approveSign(this.sessionItem.getSessionKey(), this.requestId, this.message);
    }

    public final void rejectSign() {
        this.walletConnectManager.rejectRequest(this.sessionItem.getSessionKey(), this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        String data;
        WalletConnectMessageSignView walletConnectMessageSignView = (WalletConnectMessageSignView) getViewState();
        if (WhenMappings.$EnumSwitchMapping$0[this.message.getType().ordinal()] == 1) {
            data = CryptoEVMUtils.INSTANCE.decodeHexMessageToString(this.message.getData());
        } else {
            data = this.message.getData();
        }
        walletConnectMessageSignView.setupScreenWithData(data, getAddressText(), this.sessionItem.getPeerUrl());
    }

    private final String getAddressText() {
        String address;
        String shortened$default;
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        return (eVMWallet == null || (address = eVMWallet.getAddress()) == null || (shortened$default = StringExtKt.shortened$default(address, 0, 1, null)) == null) ? this.resourceManager.getString(C3301R.string.wallet_connect_message_sign_address_hidden) : shortened$default;
    }
}
