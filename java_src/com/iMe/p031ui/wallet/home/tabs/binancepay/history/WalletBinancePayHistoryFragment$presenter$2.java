package com.iMe.p031ui.wallet.home.tabs.binancepay.history;

import com.iMe.p031ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletBinancePayHistoryFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletBinancePayHistoryFragment$presenter$2 extends Lambda implements Function0<WalletBinancePayHistoryPresenter> {
    final /* synthetic */ WalletBinancePayHistoryFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletBinancePayHistoryFragment$presenter$2(WalletBinancePayHistoryFragment walletBinancePayHistoryFragment) {
        super(0);
        this.this$0 = walletBinancePayHistoryFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletBinancePayHistoryFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22911 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletBinancePayHistoryFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22911(WalletBinancePayHistoryFragment walletBinancePayHistoryFragment) {
            super(0);
            this.this$0 = walletBinancePayHistoryFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            WalletBinancePayHistoryFragment.ScreenType screenType;
            String str;
            screenType = this.this$0.screenType;
            str = this.this$0.tokenCode;
            return ParametersHolderKt.parametersOf(screenType, str);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletBinancePayHistoryPresenter invoke() {
        Lazy lazy;
        WalletBinancePayHistoryFragment walletBinancePayHistoryFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2289xbbe1c0a5(walletBinancePayHistoryFragment, null, new C22911(walletBinancePayHistoryFragment)));
        return (WalletBinancePayHistoryPresenter) lazy.getValue();
    }
}