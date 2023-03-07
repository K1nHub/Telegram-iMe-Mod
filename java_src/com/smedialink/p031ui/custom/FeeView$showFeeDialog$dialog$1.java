package com.smedialink.p031ui.custom;

import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FeeView.kt */
/* renamed from: com.smedialink.ui.custom.FeeView$showFeeDialog$dialog$1 */
/* loaded from: classes3.dex */
public final class FeeView$showFeeDialog$dialog$1 extends Lambda implements Function1<Integer, Unit> {
    final /* synthetic */ List<GasPriceItem> $availableFees;
    final /* synthetic */ Function1<GasPriceItem, Unit> $onSelectedFee;
    final /* synthetic */ FeeView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FeeView$showFeeDialog$dialog$1(List<GasPriceItem> list, Function1<? super GasPriceItem, Unit> function1, FeeView feeView) {
        super(1);
        this.$availableFees = list;
        this.$onSelectedFee = function1;
        this.this$0 = feeView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke(num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(int i) {
        GasPriceItem gasPriceItem = this.$availableFees.get(i);
        this.$onSelectedFee.invoke(gasPriceItem);
        this.this$0.displayFee(gasPriceItem);
    }
}
