package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1964x3cb7ddbf extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends Wallet>> {
    final /* synthetic */ Wallet $newWallet$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1964x3cb7ddbf(Wallet wallet2) {
        super(1);
        this.$newWallet$inlined = wallet2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Wallet> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        return Result.Companion.success(this.$newWallet$inlined);
    }
}
