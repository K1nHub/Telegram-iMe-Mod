package com.iMe.p031ui.wallet.swap.token.adapter;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.custom.CoinTickerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSelectTokenAdapter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.adapter.WalletSelectTokenAdapter$convert$1 */
/* loaded from: classes4.dex */
final class WalletSelectTokenAdapter$convert$1 extends Lambda implements Function1<CoinTickerView, Unit> {
    final /* synthetic */ SelectableTokenItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenAdapter$convert$1(SelectableTokenItem selectableTokenItem) {
        super(1);
        this.$item = selectableTokenItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CoinTickerView coinTickerView) {
        invoke2(coinTickerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(CoinTickerView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setTicker(this.$item.getToken().getTicker());
    }
}
