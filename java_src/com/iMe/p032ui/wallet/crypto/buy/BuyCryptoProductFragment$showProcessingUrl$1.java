package com.iMe.p032ui.wallet.crypto.buy;

import com.iMe.model.wallet.crypto.simplex.PaymentResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$showProcessingUrl$1 */
/* loaded from: classes3.dex */
final class BuyCryptoProductFragment$showProcessingUrl$1 extends Lambda implements Function1<PaymentResult, Unit> {
    final /* synthetic */ BuyCryptoProductFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductFragment$showProcessingUrl$1(BuyCryptoProductFragment buyCryptoProductFragment) {
        super(1);
        this.this$0 = buyCryptoProductFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(PaymentResult paymentResult) {
        invoke2(paymentResult);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(PaymentResult result) {
        BuyCryptoProductPresenter presenter;
        Intrinsics.checkNotNullParameter(result, "result");
        presenter = this.this$0.getPresenter();
        presenter.processPaymentResult(result);
    }
}
