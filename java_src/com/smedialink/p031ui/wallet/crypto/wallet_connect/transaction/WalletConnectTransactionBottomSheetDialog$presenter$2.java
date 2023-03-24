package com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction;

import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectTransactionBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletConnectTransactionPresenter> {
    final /* synthetic */ WalletConnectTransactionBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectTransactionBottomSheetDialog$presenter$2(WalletConnectTransactionBottomSheetDialog walletConnectTransactionBottomSheetDialog) {
        super(0);
        this.this$0 = walletConnectTransactionBottomSheetDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletConnectTransactionBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21441 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletConnectTransactionBottomSheetDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21441(WalletConnectTransactionBottomSheetDialog walletConnectTransactionBottomSheetDialog) {
            super(0);
            this.this$0 = walletConnectTransactionBottomSheetDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            WalletConnectTransactionScreenType walletConnectTransactionScreenType;
            walletConnectTransactionScreenType = this.this$0.screenType;
            return ParametersHolderKt.parametersOf(walletConnectTransactionScreenType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletConnectTransactionPresenter invoke() {
        Lazy lazy;
        WalletConnectTransactionBottomSheetDialog walletConnectTransactionBottomSheetDialog = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2141x15774caf(walletConnectTransactionBottomSheetDialog, null, new C21441(walletConnectTransactionBottomSheetDialog)));
        return (WalletConnectTransactionPresenter) lazy.getValue();
    }
}
