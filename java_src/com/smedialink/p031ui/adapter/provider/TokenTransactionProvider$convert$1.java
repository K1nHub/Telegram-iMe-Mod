package com.smedialink.p031ui.adapter.provider;

import com.smedialink.model.wallet.transaction.TransactionItem;
import com.smedialink.p031ui.custom.TimeWithClockView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: TokenTransactionProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TokenTransactionProvider$convert$1 */
/* loaded from: classes3.dex */
final class TokenTransactionProvider$convert$1 extends Lambda implements Function1<TimeWithClockView, Unit> {
    final /* synthetic */ TransactionItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenTransactionProvider$convert$1(TransactionItem transactionItem) {
        super(1);
        this.$item = transactionItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TimeWithClockView timeWithClockView) {
        invoke2(timeWithClockView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TimeWithClockView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setTime(this.$item);
    }
}
