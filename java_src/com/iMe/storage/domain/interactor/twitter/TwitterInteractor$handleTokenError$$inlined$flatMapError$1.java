package com.iMe.storage.domain.interactor.twitter;

import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.iMe.storage.domain.repository.socialMedia.TwitterRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class TwitterInteractor$handleTokenError$$inlined$flatMapError$1 extends Lambda implements Function1<Result<? extends T>, ObservableSource<? extends Result<? extends T>>> {
    final /* synthetic */ IErrorStatus[] $errorStatus;
    final /* synthetic */ Observable $onSuccessObservable$inlined;
    final /* synthetic */ long $profileId$inlined;
    final /* synthetic */ TwitterInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterInteractor$handleTokenError$$inlined$flatMapError$1(IErrorStatus[] iErrorStatusArr, TwitterInteractor twitterInteractor, long j, Observable observable) {
        super(1);
        this.$errorStatus = iErrorStatusArr;
        this.this$0 = twitterInteractor;
        this.$profileId$inlined = j;
        this.$onSuccessObservable$inlined = observable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends T>> invoke(Result<? extends T> result) {
        boolean contains;
        TwitterRepository twitterRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            return Observable.just(result);
        }
        if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            contains = ArraysKt___ArraysKt.contains(this.$errorStatus, error.getError().getStatus());
            if (contains) {
                error.getError();
                twitterRepository = this.this$0.twitterRepository;
                Observable<Result<TwitterRefreshTokenData>> refreshToken = twitterRepository.getRefreshToken(this.$profileId$inlined);
                schedulersProvider = this.this$0.schedulersProvider;
                Observable<Result<TwitterRefreshTokenData>> subscribeOn = refreshToken.subscribeOn(schedulersProvider.mo699io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
                ObservableSource flatMap = subscribeOn.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1972x14100eb1(this.$onSuccessObservable$inlined, this.this$0, this.$profileId$inlined)));
                Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                return flatMap;
            }
            Result error$default = Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapError");
            Observable just = Observable.just(error$default);
            Intrinsics.checkNotNullExpressionValue(just, "just(Result.error<R>(result.error) as R)");
            return just;
        }
        return Observable.empty();
    }
}
