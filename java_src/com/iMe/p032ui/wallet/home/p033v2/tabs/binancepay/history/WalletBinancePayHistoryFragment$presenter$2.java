package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history;

import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletBinancePayHistoryFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2 */
/* loaded from: classes3.dex */
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
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C22471 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletBinancePayHistoryFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22471(WalletBinancePayHistoryFragment walletBinancePayHistoryFragment) {
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2245xbbe1c0a5(walletBinancePayHistoryFragment, null, new C22471(walletBinancePayHistoryFragment)));
        return (WalletBinancePayHistoryPresenter) lazy.getValue();
    }
}
