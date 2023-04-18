package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.p031ui.custom.CoinTickerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: BinanceTokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceTokenBalanceProvider$convert$1 */
/* loaded from: classes3.dex */
final class BinanceTokenBalanceProvider$convert$1 extends Lambda implements Function1<CoinTickerView, Unit> {
    final /* synthetic */ BinanceBalanceItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinanceTokenBalanceProvider$convert$1(BinanceBalanceItem binanceBalanceItem) {
        super(1);
        this.$item = binanceBalanceItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CoinTickerView coinTickerView) {
        invoke2(coinTickerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(CoinTickerView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setTicker(this.$item.getBalanceInfo().getAssetShortName());
    }
}
