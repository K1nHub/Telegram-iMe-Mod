package com.iMe.storage.domain.interactor.crypto.boost;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.boost.BoostRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
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

    public final Observable<Result<String>> boostEthTransaction(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> flatMap = this.boostRepository.getCryptoBoostMetadata(txHash).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1(this, txHash)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "boostRepository\n        …artWith(Result.loading())");
        return startWith;
    }
}
