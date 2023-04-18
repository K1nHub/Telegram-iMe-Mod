package com.iMe.storage.data.manager.wallet_connect;

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

    /* compiled from: WalletConnectManagerImpl.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WCEthereumSignMessage.WCSignType.values().length];
            try {
                iArr[WCEthereumSignMessage.WCSignType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WCEthereumSignMessage.WCSignType.PERSONAL_MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WCEthereumSignMessage.WCSignType.TYPED_MESSAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

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

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
        r0 = r5.this$0.getWallet();
     */
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invoke2() {
        /*
            r5 = this;
            com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl r0 = r5.this$0
            com.iMe.storage.domain.manager.crypto.CryptoAccessManager r0 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.access$getCryptoAccessManager$p(r0)
            com.iMe.storage.domain.model.crypto.BlockchainType r1 = com.iMe.storage.domain.model.crypto.BlockchainType.EVM
            boolean r0 = r0.isWalletCreated(r1)
            if (r0 == 0) goto L61
            com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl r0 = r5.this$0
            com.iMe.storage.domain.model.crypto.Wallet$EVM r0 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.access$getWallet(r0)
            if (r0 == 0) goto L61
            wallet.core.jni.HDWallet r0 = r0.getHdWallet()
            if (r0 == 0) goto L61
            wallet.core.jni.CoinType r1 = wallet.core.jni.CoinType.ETHEREUM
            wallet.core.jni.PrivateKey r0 = com.iMe.storage.domain.utils.extentions.CryptoExtKt.getPrivateKey(r0, r1)
            if (r0 != 0) goto L25
            goto L61
        L25:
            com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r1 = r5.$message
            com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage$WCSignType r1 = r1.getType()
            int[] r2 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveSign$1.WhenMappings.$EnumSwitchMapping$0
            int r1 = r1.ordinal()
            r1 = r2[r1]
            r2 = 1
            if (r1 == r2) goto L4d
            r2 = 2
            if (r1 == r2) goto L4d
            r2 = 3
            if (r1 != r2) goto L47
            com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r1 = r5.$message
            java.lang.String r1 = r1.getData()
            java.lang.String r0 = wallet.core.jni.EthereumMessageSigner.signTypedMessage(r0, r1)
            goto L57
        L47:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        L4d:
            com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r1 = r5.$message
            java.lang.String r1 = r1.getData()
            java.lang.String r0 = wallet.core.jni.EthereumMessageSigner.signMessage(r0, r1)
        L57:
            com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl r1 = r5.this$0
            java.lang.String r2 = r5.$sessionKey
            long r3 = r5.$requestId
            r1.approveRequest(r2, r3, r0)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveSign$1.invoke2():void");
    }
}
