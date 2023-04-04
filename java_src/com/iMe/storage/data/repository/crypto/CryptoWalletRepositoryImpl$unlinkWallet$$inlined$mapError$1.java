package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1 extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends Boolean>> {
    final /* synthetic */ IErrorStatus $errorStatus;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1(IErrorStatus iErrorStatus) {
        super(1);
        this.$errorStatus = iErrorStatus;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            return result;
        }
        if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (!Intrinsics.areEqual(error.getError().getStatus(), this.$errorStatus)) {
                Result<? extends Boolean> error$default = Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapError");
                return error$default;
            }
            error.getError();
            return Result.Companion.success(Boolean.TRUE);
        } else if (result instanceof Object) {
            return result;
        } else {
            return null;
        }
    }
}
