package com.smedialink.storage.domain.interactor.crypto.simplex;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class SimplexInteractor$getBuyingCryptoQuote$$inlined$mapSuccess$1 extends Lambda implements Function1<Result<? extends List<? extends BuyingCryptoQuote>>, Result<? extends BuyingCryptoQuote>> {
    public SimplexInteractor$getBuyingCryptoQuote$$inlined$mapSuccess$1() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends BuyingCryptoQuote> invoke(Result<? extends List<? extends BuyingCryptoQuote>> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends BuyingCryptoQuote> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        Object data = result.getData();
        Intrinsics.checkNotNull(data);
        return Result.Companion.success(CollectionsKt.first((List<? extends Object>) data));
    }
}
