package com.iMe.storage.domain.interactor.crypto.boost;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor$boostEthTransaction$lambda$1$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1910x5d896fde extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ String $txHash$inlined;
    final /* synthetic */ BoostInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1910x5d896fde(BoostInteractor boostInteractor, String str) {
        super(1);
        this.this$0 = boostInteractor;
        this.$txHash$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
        BoostRepository boostRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            boostRepository = this.this$0.boostRepository;
            String data = result.getData();
            if (data == null) {
                data = "";
            }
            Observable<Result<String>> boost = boostRepository.boost(data, this.$txHash$inlined);
            schedulersProvider = this.this$0.schedulersProvider;
            Observable<Result<String>> subscribeOn = boost.subscribeOn(schedulersProvider.mo708io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "boostRepository\n        …(schedulersProvider.io())");
            return subscribeOn;
        } else if (result instanceof Result.Error) {
            Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
            return Observable.just(error$default);
        } else {
            return Observable.empty();
        }
    }
}
