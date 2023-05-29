package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletTransactionDetailsBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletTransactionDetailsPresenter> {
    final /* synthetic */ WalletTransactionDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionDetailsBottomSheetDialog$presenter$2(WalletTransactionDetailsBottomSheetDialog walletTransactionDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = walletTransactionDetailsBottomSheetDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C24261 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletTransactionDetailsBottomSheetDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24261(WalletTransactionDetailsBottomSheetDialog walletTransactionDetailsBottomSheetDialog) {
            super(0);
            this.this$0 = walletTransactionDetailsBottomSheetDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            WalletTransactionDetailsBottomSheetDialog.ScreenType screenType;
            screenType = this.this$0.screenType;
            return ParametersHolderKt.parametersOf(screenType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletTransactionDetailsPresenter invoke() {
        Lazy lazy;
        WalletTransactionDetailsBottomSheetDialog walletTransactionDetailsBottomSheetDialog = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2421xf16dbe9f(walletTransactionDetailsBottomSheetDialog, null, new C24261(walletTransactionDetailsBottomSheetDialog)));
        return (WalletTransactionDetailsPresenter) lazy.getValue();
    }
}
