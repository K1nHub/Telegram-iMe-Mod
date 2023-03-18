package com.smedialink.storage.domain.interactor.crypto.simplex;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.smedialink.storage.domain.model.crypto.simplex.Currency;
import com.smedialink.storage.domain.model.crypto.simplex.FiatCurrency;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class SimplexInteractor$purchase$lambda$4$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends BuyingCryptoQuote>, ObservableSource<? extends Result<? extends BuyingCryptoPayment>>> {
    final /* synthetic */ Currency $digitalCurrency$inlined;
    final /* synthetic */ FiatCurrency $fiatCurrency$inlined;
    final /* synthetic */ NetworkType $networkType$inlined;
    final /* synthetic */ SimplexInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexInteractor$purchase$lambda$4$$inlined$flatMapSuccess$1(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, Currency currency, NetworkType networkType) {
        super(1);
        this.this$0 = simplexInteractor;
        this.$fiatCurrency$inlined = fiatCurrency;
        this.$digitalCurrency$inlined = currency;
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
        SimplexInteractor simplexInteractor = this.this$0;
        FiatCurrency fiatCurrency = this.$fiatCurrency$inlined;
        Currency currency = this.$digitalCurrency$inlined;
        BuyingCryptoQuote data = result.getData();
        Intrinsics.checkNotNull(data);
        float cryptoMoneyAmount = data.getCryptoMoneyAmount();
        BuyingCryptoQuote data2 = result.getData();
        Intrinsics.checkNotNull(data2);
        BuyingCryptoQuote data3 = result.getData();
        Intrinsics.checkNotNull(data3);
        return simplexInteractor.purchase(fiatCurrency, currency, cryptoMoneyAmount, (int) data2.getFiatMoneyAmount(), data3.getQuoteId(), this.$networkType$inlined);
    }
}
