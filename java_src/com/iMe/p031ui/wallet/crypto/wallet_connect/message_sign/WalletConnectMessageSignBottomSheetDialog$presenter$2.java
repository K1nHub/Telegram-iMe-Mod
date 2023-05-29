package com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: WalletConnectMessageSignBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$presenter$2 */
/* loaded from: classes4.dex */
final class WalletConnectMessageSignBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletConnectMessageSignPresenter> {
    final /* synthetic */ WCEthereumSignMessage $message;
    final /* synthetic */ long $requestId;
    final /* synthetic */ WalletConnectSessionItem $sessionItem;
    final /* synthetic */ WalletConnectManager $walletConnectManager;
    final /* synthetic */ WalletConnectMessageSignBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectMessageSignBottomSheetDialog$presenter$2(WalletConnectMessageSignBottomSheetDialog walletConnectMessageSignBottomSheetDialog, long j, WalletConnectSessionItem walletConnectSessionItem, WCEthereumSignMessage wCEthereumSignMessage, WalletConnectManager walletConnectManager) {
        super(0);
        this.this$0 = walletConnectMessageSignBottomSheetDialog;
        this.$requestId = j;
        this.$sessionItem = walletConnectSessionItem;
        this.$message = wCEthereumSignMessage;
        this.$walletConnectManager = walletConnectManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletConnectMessageSignBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22131 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WCEthereumSignMessage $message;
        final /* synthetic */ long $requestId;
        final /* synthetic */ WalletConnectSessionItem $sessionItem;
        final /* synthetic */ WalletConnectManager $walletConnectManager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22131(long j, WalletConnectSessionItem walletConnectSessionItem, WCEthereumSignMessage wCEthereumSignMessage, WalletConnectManager walletConnectManager) {
            super(0);
            this.$requestId = j;
            this.$sessionItem = walletConnectSessionItem;
            this.$message = wCEthereumSignMessage;
            this.$walletConnectManager = walletConnectManager;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(Long.valueOf(this.$requestId), this.$sessionItem, this.$message, this.$walletConnectManager);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletConnectMessageSignPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2210xe2ff69b5(this.this$0, null, new C22131(this.$requestId, this.$sessionItem, this.$message, this.$walletConnectManager)));
        return (WalletConnectMessageSignPresenter) lazy.getValue();
    }
}
