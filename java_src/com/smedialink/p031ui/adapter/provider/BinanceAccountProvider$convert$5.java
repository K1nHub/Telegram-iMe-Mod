package com.smedialink.p031ui.adapter.provider;

import com.smedialink.model.wallet.home.pay.BinanceAccountItem;
import com.smedialink.p031ui.custom.HorizontalActionButtonsView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BinanceAccountProvider$convert$5 */
/* loaded from: classes3.dex */
final class BinanceAccountProvider$convert$5 extends Lambda implements Function1<HorizontalActionButtonsView, Unit> {
    final /* synthetic */ BinanceAccountItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinanceAccountProvider$convert$5(BinanceAccountItem binanceAccountItem) {
        super(1);
        this.$item = binanceAccountItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(HorizontalActionButtonsView horizontalActionButtonsView) {
        invoke2(horizontalActionButtonsView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(HorizontalActionButtonsView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.initButtons(this.$item.getActions());
    }
}
