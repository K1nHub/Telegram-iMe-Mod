package com.iMe.p032ui.wallet.crypto.wallet_connect.session_details;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WalletConnectSessionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
final class WalletConnectSessionDetailsBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletConnectSessionDetailsPresenter> {
    final /* synthetic */ WalletConnectSessionItem $item;
    final /* synthetic */ WalletConnectSessionDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectSessionDetailsBottomSheetDialog$presenter$2(WalletConnectSessionDetailsBottomSheetDialog walletConnectSessionDetailsBottomSheetDialog, WalletConnectSessionItem walletConnectSessionItem) {
        super(0);
        this.this$0 = walletConnectSessionDetailsBottomSheetDialog;
        this.$item = walletConnectSessionItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletConnectSessionDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21961 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletConnectSessionItem $item;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21961(WalletConnectSessionItem walletConnectSessionItem) {
            super(0);
            this.$item = walletConnectSessionItem;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$item);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletConnectSessionDetailsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2194x6c0d24df(this.this$0, null, new C21961(this.$item)));
        return (WalletConnectSessionDetailsPresenter) lazy.getValue();
    }
}
