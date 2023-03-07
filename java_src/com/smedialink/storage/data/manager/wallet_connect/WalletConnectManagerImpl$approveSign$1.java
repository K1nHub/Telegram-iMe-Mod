package com.smedialink.storage.data.manager.wallet_connect;

import com.smedialink.storage.data.utils.crypto.CryptoWalletUtils;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$approveSign$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WCEthereumSignMessage $message;
    final /* synthetic */ long $requestId;
    final /* synthetic */ String $sessionKey;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$approveSign$1(WalletConnectManagerImpl walletConnectManagerImpl, WCEthereumSignMessage wCEthereumSignMessage, String str, long j) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
        this.$message = wCEthereumSignMessage;
        this.$sessionKey = str;
        this.$requestId = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CryptoAccessManager cryptoAccessManager;
        Wallet.EVM wallet;
        cryptoAccessManager = this.this$0.cryptoAccessManager;
        if (cryptoAccessManager.isWalletCreated(BlockchainType.EVM)) {
            CryptoWalletUtils cryptoWalletUtils = CryptoWalletUtils.INSTANCE;
            wallet = this.this$0.getWallet();
            if (wallet == null) {
                return;
            }
            this.this$0.approveRequest(this.$sessionKey, this.$requestId, cryptoWalletUtils.signMessage(wallet, this.$message.getData(), this.$message.getType()));
        }
    }
}
