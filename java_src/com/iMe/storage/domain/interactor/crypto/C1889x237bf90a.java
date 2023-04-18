package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$getCreatePinCodeObservable$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1889x237bf90a extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ Observable $mapperObservable$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1889x237bf90a(Observable observable) {
        super(1);
        this.$mapperObservable$inlined = observable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        return this.$mapperObservable$inlined;
    }
}