package com.iMe.p031ui.wallet.home.tabs.binancepay;

import com.binance.android.binancepay.api.BinancePay;
import com.binance.android.opensdk.api.BinanceAPI;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeBinancePayFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletHomeBinancePayFragment$presenter$2 extends Lambda implements Function0<WalletHomeBinancePayPresenter> {
    final /* synthetic */ WalletHomeBinancePayFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeBinancePayFragment$presenter$2(WalletHomeBinancePayFragment walletHomeBinancePayFragment) {
        super(0);
        this.this$0 = walletHomeBinancePayFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletHomeBinancePayFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22761 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletHomeBinancePayFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22761(WalletHomeBinancePayFragment walletHomeBinancePayFragment) {
            super(0);
            this.this$0 = walletHomeBinancePayFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            BinanceAPI binanceApi;
            BinancePay binancePayApi;
            binanceApi = this.this$0.getBinanceApi();
            binancePayApi = this.this$0.getBinancePayApi();
            return ParametersHolderKt.parametersOf(binanceApi, binancePayApi);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletHomeBinancePayPresenter invoke() {
        Lazy lazy;
        WalletHomeBinancePayFragment walletHomeBinancePayFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2275x9b06ddc4(walletHomeBinancePayFragment, null, new C22761(walletHomeBinancePayFragment)));
        return (WalletHomeBinancePayPresenter) lazy.getValue();
    }
}