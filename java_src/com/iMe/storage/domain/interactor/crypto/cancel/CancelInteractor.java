package com.iMe.storage.domain.interactor.crypto.cancel;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.crypto.cancel.CancelRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelInteractor.kt */
/* loaded from: classes3.dex */
public final class CancelInteractor {
    private final CancelRepository cancelRepository;
    private final CryptoAccessManager cryptoAccessManager;
    private final SchedulersProvider schedulersProvider;

    public CancelInteractor(CryptoAccessManager cryptoAccessManager, CancelRepository cancelRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cancelRepository, "cancelRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cancelRepository = cancelRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<String>> cancelEthTransaction(String networkId, String txHash) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> flatMap = this.cancelRepository.getCryptoCancelMetadata(txHash).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1(this, networkId, txHash)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "cancelRepository\n       …artWith(Result.loading())");
        return startWith;
    }
}
