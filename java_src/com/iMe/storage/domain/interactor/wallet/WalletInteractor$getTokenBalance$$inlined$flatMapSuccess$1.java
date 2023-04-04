package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends TokenBalance>>> {
    public WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends TokenBalance>> invoke(Result<? extends List<? extends TokenBalance>> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        List<? extends TokenBalance> data = result.getData();
        Intrinsics.checkNotNull(data);
        if (data.isEmpty()) {
            Observable never = Observable.never();
            Intrinsics.checkNotNullExpressionValue(never, "never()");
            return never;
        }
        List<? extends TokenBalance> data2 = result.getData();
        Intrinsics.checkNotNull(data2);
        Observable just = Observable.just(Result.Companion.success(CollectionsKt.first((List<? extends Object>) data2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
