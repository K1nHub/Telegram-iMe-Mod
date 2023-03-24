package com.smedialink.storage.domain.interactor.crypto.simplex;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1855xd12431bd extends Lambda implements Function1<Result<? extends List<? extends BuyingCryptoQuote>>, Result<? extends List<BuyingCryptoQuote>>> {
    final /* synthetic */ SimplexInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1855xd12431bd(SimplexInteractor simplexInteractor) {
        super(1);
        this.this$0 = simplexInteractor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends List<BuyingCryptoQuote>> invoke(Result<? extends List<? extends BuyingCryptoQuote>> result) {
        List withDefaultCustomQuote;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends List<BuyingCryptoQuote>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        SimplexInteractor simplexInteractor = this.this$0;
        Object data = result.getData();
        Intrinsics.checkNotNull(data);
        withDefaultCustomQuote = simplexInteractor.withDefaultCustomQuote((List) data);
        return Result.Companion.success(withDefaultCustomQuote);
    }
}
