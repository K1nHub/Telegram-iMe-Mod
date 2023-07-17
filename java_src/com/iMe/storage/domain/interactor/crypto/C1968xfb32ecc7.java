package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$activateBip39BasedWallet$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1968xfb32ecc7 extends Lambda implements Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends Wallet>>> {
    public C1968xfb32ecc7() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends List<? extends Wallet>> result) {
        Result error$default;
        Wallet wallet2;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default2);
            }
            return Observable.empty();
        }
        List<? extends Wallet> data = result.getData();
        if (data == null || (wallet2 = (Wallet) CollectionsKt.firstOrNull(data)) == null || (error$default = Result.Companion.success(wallet2)) == null) {
            error$default = Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.NOT_DEFINED, (Throwable) null, 2, (DefaultConstructorMarker) null), null, 2, null);
        }
        Observable just = Observable.just(error$default);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
