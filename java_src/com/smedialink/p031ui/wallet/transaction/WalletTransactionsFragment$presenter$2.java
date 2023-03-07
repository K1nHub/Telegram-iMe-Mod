package com.smedialink.p031ui.wallet.transaction;

import com.smedialink.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class WalletTransactionsFragment$presenter$2 extends Lambda implements Function0<WalletTransactionsPresenter> {
    final /* synthetic */ WalletTransactionsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsFragment$presenter$2(WalletTransactionsFragment walletTransactionsFragment) {
        super(0);
        this.this$0 = walletTransactionsFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletTransactionsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21831 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletTransactionsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21831(WalletTransactionsFragment walletTransactionsFragment) {
            super(0);
            this.this$0 = walletTransactionsFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            WalletTransactionsFragment.ScreenType screenType;
            TokenCode tokenCode;
            screenType = this.this$0.screenType;
            tokenCode = this.this$0.tokenCode;
            return ParametersHolderKt.parametersOf(screenType, tokenCode);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletTransactionsPresenter invoke() {
        Lazy lazy;
        WalletTransactionsFragment walletTransactionsFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2182xe8acc4e0(walletTransactionsFragment, null, new C21831(walletTransactionsFragment)));
        return (WalletTransactionsPresenter) lazy.getValue();
    }
}
