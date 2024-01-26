package com.iMe.storage.domain.interactor.crypto.boost;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
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
        Observable<R> flatMap = this.boostRepository.getCryptoBoostMetadata(txHash).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends TransactionArgs>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends TransactionArgs> result) {
                BoostRepository boostRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                TransactionArgs data = result.getData();
                Intrinsics.checkNotNull(data);
                boostRepository = BoostInteractor.this.boostRepository;
                Observable<Result<String>> signBoostTransaction = boostRepository.signBoostTransaction(data);
                final BoostInteractor boostInteractor = BoostInteractor.this;
                final String str = txHash;
                Observable<R> flatMap2 = signBoostTransaction.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.domain.interactor.crypto.boost.BoostInteractor$boostEthTransaction$lambda$1$$inlined$flatMapSuccess$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result2) {
                        BoostRepository boostRepository2;
                        SchedulersProvider schedulersProvider2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (result2 instanceof Result.Success) {
                            boostRepository2 = BoostInteractor.this.boostRepository;
                            String data2 = result2.getData();
                            if (data2 == null) {
                                data2 = "";
                            }
                            Observable<Result<String>> boost = boostRepository2.boost(data2, str);
                            schedulersProvider2 = BoostInteractor.this.schedulersProvider;
                            Observable<Result<String>> subscribeOn = boost.subscribeOn(schedulersProvider2.mo1014io());
                            Intrinsics.checkNotNullExpressionValue(subscribeOn, "boostRepository\n        …(schedulersProvider.io())");
                            return subscribeOn;
                        } else if (result2 instanceof Result.Error) {
                            Result error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                            Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                            return Observable.just(error$default2);
                        } else {
                            return Observable.empty();
                        }
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                schedulersProvider = BoostInteractor.this.schedulersProvider;
                Observable subscribeOn = flatMap2.subscribeOn(schedulersProvider.mo1014io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "boostRepository\n        …(schedulersProvider.io())");
                return subscribeOn;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo1014io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "boostRepository\n        …artWith(Result.loading())");
        return startWith;
    }
}
