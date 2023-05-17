package com.iMe.p031ui.wallet.swap.process;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment$presenter$2 extends Lambda implements Function0<WalletSwapProcessPresenter> {
    final /* synthetic */ WalletSwapProcessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessFragment$presenter$2(WalletSwapProcessFragment walletSwapProcessFragment) {
        super(0);
        this.this$0 = walletSwapProcessFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C23701 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletSwapProcessFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23701(WalletSwapProcessFragment walletSwapProcessFragment) {
            super(0);
            this.this$0 = walletSwapProcessFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.this$0.getScreenType());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSwapProcessPresenter invoke() {
        Lazy lazy;
        WalletSwapProcessFragment walletSwapProcessFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2368x3ddaec8b(walletSwapProcessFragment, null, new C23701(walletSwapProcessFragment)));
        return (WalletSwapProcessPresenter) lazy.getValue();
    }
}
