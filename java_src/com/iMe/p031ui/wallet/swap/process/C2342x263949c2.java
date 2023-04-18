package com.iMe.p031ui.wallet.swap.process;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2342x263949c2 extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit> {
    final /* synthetic */ SelectableToken $token$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2342x263949c2(WalletSwapProcessPresenter walletSwapProcessPresenter, SelectableToken selectableToken) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$token$inlined = selectableToken;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
        m1516invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1516invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
        ResourceManager resourceManager;
        String formatBinanceBalance;
        Object obj;
        BinanceTokenBalanceInfo binanceTokenBalanceInfo;
        BinanceTokenBalanceInfo binanceTokenBalanceInfo2;
        String formatBinanceBalance2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
        if (result instanceof Result.Success) {
            WalletSwapProcessPresenter walletSwapProcessPresenter = this.this$0;
            Iterator it2 = ((Iterable) ((Result.Success) result).getData()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((BinanceTokenBalanceInfo) obj).getAsset(), this.$token$inlined.getId())) {
                    break;
                }
            }
            walletSwapProcessPresenter.binanceTokenBalance = (BinanceTokenBalanceInfo) obj;
            binanceTokenBalanceInfo = this.this$0.binanceTokenBalance;
            if (binanceTokenBalanceInfo != null) {
                WalletSwapProcessPresenter walletSwapProcessPresenter2 = this.this$0;
                binanceTokenBalanceInfo2 = walletSwapProcessPresenter2.binanceTokenBalance;
                Intrinsics.checkNotNull(binanceTokenBalanceInfo2);
                formatBinanceBalance2 = walletSwapProcessPresenter2.formatBinanceBalance(binanceTokenBalanceInfo2);
                ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(formatBinanceBalance2);
            }
        } else if (result instanceof Result.Loading) {
            formatBinanceBalance = this.this$0.formatBinanceBalance(BinanceTokenBalanceInfo.Companion.createEmptyBalanceFor(this.$token$inlined.getTicker()));
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(formatBinanceBalance);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
