package com.smedialink.storage.domain.interactor.crypto.boost;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.repository.crypto.boost.BoostRepository;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends TransactionArgs>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ String $txHash$inlined;
    final /* synthetic */ BoostInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1(BoostInteractor boostInteractor, String str) {
        super(1);
        this.this$0 = boostInteractor;
        this.$txHash$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends TransactionArgs> result) {
        BoostRepository boostRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        TransactionArgs data = result.getData();
        Intrinsics.checkNotNull(data);
        boostRepository = this.this$0.boostRepository;
        Observable<R> flatMap = boostRepository.signBoostTransaction(data).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1852x5d896fde(this.this$0, this.$txHash$inlined)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo707io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "boostRepository\n        …(schedulersProvider.io())");
        return subscribeOn;
    }
}
