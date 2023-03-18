package com.smedialink.storage.domain.interactor.crypto.simplex;

import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.smedialink.storage.domain.model.crypto.simplex.Currency;
import com.smedialink.storage.domain.model.crypto.simplex.FiatCurrency;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class SimplexInteractor$purchase$$inlined$flatMapError$1 extends Lambda implements Function1<Result<? extends BuyingCryptoPayment>, ObservableSource<? extends Result<? extends BuyingCryptoPayment>>> {
    final /* synthetic */ Currency $digitalCurrency$inlined;
    final /* synthetic */ IErrorStatus[] $errorStatus;
    final /* synthetic */ int $fiatAmount$inlined;
    final /* synthetic */ FiatCurrency $fiatCurrency$inlined;
    final /* synthetic */ NetworkType $networkType$inlined;
    final /* synthetic */ SimplexInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexInteractor$purchase$$inlined$flatMapError$1(IErrorStatus[] iErrorStatusArr, SimplexInteractor simplexInteractor, Currency currency, int i, NetworkType networkType, FiatCurrency fiatCurrency) {
        super(1);
        this.$errorStatus = iErrorStatusArr;
        this.this$0 = simplexInteractor;
        this.$digitalCurrency$inlined = currency;
        this.$fiatAmount$inlined = i;
        this.$networkType$inlined = networkType;
        this.$fiatCurrency$inlined = fiatCurrency;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends BuyingCryptoPayment>> invoke(Result<? extends BuyingCryptoPayment> result) {
        boolean contains;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            return Observable.just(result);
        }
        if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            contains = ArraysKt___ArraysKt.contains(this.$errorStatus, error.getError().getStatus());
            if (contains) {
                error.getError();
                ObservableSource flatMap = this.this$0.getBuyingCryptoQuote(this.$digitalCurrency$inlined, FiatCurrency.USD, this.$fiatAmount$inlined, this.$networkType$inlined).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new SimplexInteractor$purchase$lambda$4$$inlined$flatMapSuccess$1(this.this$0, this.$fiatCurrency$inlined, this.$digitalCurrency$inlined, this.$networkType$inlined)));
                Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                return flatMap;
            }
            Result error$default = Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapError");
            Observable just = Observable.just(error$default);
            Intrinsics.checkNotNullExpressionValue(just, "just(Result.error<R>(result.error) as R)");
            return just;
        }
        return Observable.empty();
    }
}
