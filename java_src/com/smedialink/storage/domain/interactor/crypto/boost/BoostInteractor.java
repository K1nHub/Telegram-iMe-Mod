package com.smedialink.storage.domain.interactor.crypto.boost;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.repository.crypto.boost.BoostRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BoostInteractor.kt */
/* loaded from: classes3.dex */
public final class BoostInteractor {
    private final BoostRepository boostRepository;
    private final SchedulersProvider schedulersProvider;

    public BoostInteractor(BoostRepository boostRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(boostRepository, "boostRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.boostRepository = boostRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<String>> boostEthTransaction(final String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> flatMap = this.boostRepository.getCryptoBoostMetadata(txHash).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.boost.BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                BoostRepository boostRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                boostRepository = BoostInteractor.this.boostRepository;
                Observable<Result<String>> signBoostTransaction = boostRepository.signBoostTransaction((TransactionArgs) data);
                final BoostInteractor boostInteractor = BoostInteractor.this;
                final String str = txHash;
                Observable<R> flatMap2 = signBoostTransaction.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.boost.BoostInteractor$boostEthTransaction$lambda-1$$inlined$flatMapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final ObservableSource apply(Result result2) {
                        BoostRepository boostRepository2;
                        SchedulersProvider schedulersProvider2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            return result2 instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null)) : Observable.empty();
                        }
                        boostRepository2 = BoostInteractor.this.boostRepository;
                        String str2 = (String) result2.getData();
                        if (str2 == null) {
                            str2 = "";
                        }
                        Observable<Result<String>> boost = boostRepository2.boost(str2, str);
                        schedulersProvider2 = BoostInteractor.this.schedulersProvider;
                        Observable<Result<String>> subscribeOn = boost.subscribeOn(schedulersProvider2.mo708io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "boostRepository\n        …(schedulersProvider.io())");
                        return subscribeOn;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                schedulersProvider = BoostInteractor.this.schedulersProvider;
                Observable<R> subscribeOn = flatMap2.subscribeOn(schedulersProvider.mo708io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "boostRepository\n        …(schedulersProvider.io())");
                return subscribeOn;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo708io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "boostRepository\n        …artWith(Result.loading())");
        return startWith;
    }
}
