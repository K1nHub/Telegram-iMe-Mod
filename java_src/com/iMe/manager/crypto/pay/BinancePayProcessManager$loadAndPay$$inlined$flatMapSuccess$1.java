package com.iMe.manager.crypto.pay;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.google.DynamicLinkData;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends DynamicLinkData>, ObservableSource<? extends Result<? extends BinanceTransaction>>> {
    final /* synthetic */ BinancePayProcessManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1(BinancePayProcessManager binancePayProcessManager) {
        super(1);
        this.this$0 = binancePayProcessManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends BinanceTransaction>> invoke(Result<? extends DynamicLinkData> result) {
        BinanceInternalInteractor binanceInternalInteractor;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        DynamicLinkData data = result.getData();
        Intrinsics.checkNotNull(data);
        DynamicLinkData dynamicLinkData = data;
        if (dynamicLinkData instanceof DynamicLinkData.BinancePayment) {
            binanceInternalInteractor = this.this$0.binanceInternalInteractor;
            return binanceInternalInteractor.getTransaction(((DynamicLinkData.BinancePayment) dynamicLinkData).getBinancePayId());
        }
        Observable just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, (Throwable) null, 2, (DefaultConstructorMarker) null), null, 2, null));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
