package com.smedialink.storage.domain.interactor.crypto.simplex;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.smedialink.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.smedialink.storage.domain.model.crypto.simplex.FiatCurrency;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class SimplexInteractor$purchase$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends BuyingCryptoQuote>, ObservableSource<? extends Result<? extends BuyingCryptoPayment>>> {
    final /* synthetic */ DigitalCurrency $digitalCurrency$inlined;
    final /* synthetic */ FiatCurrency $fiatCurrency$inlined;
    final /* synthetic */ NetworkType $networkType$inlined;
    final /* synthetic */ SimplexInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexInteractor$purchase$$inlined$flatMapSuccess$1(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, DigitalCurrency digitalCurrency, NetworkType networkType) {
        super(1);
        this.this$0 = simplexInteractor;
        this.$fiatCurrency$inlined = fiatCurrency;
        this.$digitalCurrency$inlined = digitalCurrency;
        this.$networkType$inlined = networkType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends BuyingCryptoPayment>> invoke(Result<? extends BuyingCryptoQuote> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        BuyingCryptoQuote data = result.getData();
        Intrinsics.checkNotNull(data);
        BuyingCryptoQuote buyingCryptoQuote = data;
        return this.this$0.purchase(this.$fiatCurrency$inlined, this.$digitalCurrency$inlined, buyingCryptoQuote.getCryptoMoneyAmount(), (int) buyingCryptoQuote.getFiatMoneyAmount(), buyingCryptoQuote.getQuoteId(), this.$networkType$inlined);
    }
}
