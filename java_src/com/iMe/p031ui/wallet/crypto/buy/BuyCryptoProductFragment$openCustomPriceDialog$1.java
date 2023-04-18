package com.iMe.p031ui.wallet.crypto.buy;

import com.iMe.storage.domain.model.crypto.simplex.Currency;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$openCustomPriceDialog$1 */
/* loaded from: classes3.dex */
final class BuyCryptoProductFragment$openCustomPriceDialog$1 extends Lambda implements Function2<Float, Currency, Unit> {
    final /* synthetic */ BuyCryptoProductFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductFragment$openCustomPriceDialog$1(BuyCryptoProductFragment buyCryptoProductFragment) {
        super(2);
        this.this$0 = buyCryptoProductFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Float f, Currency currency) {
        invoke(f.floatValue(), currency);
        return Unit.INSTANCE;
    }

    public final void invoke(float f, Currency currency) {
        BuyCryptoProductPresenter presenter;
        Intrinsics.checkNotNullParameter(currency, "currency");
        presenter = this.this$0.getPresenter();
        presenter.purchase(f, currency);
    }
}
