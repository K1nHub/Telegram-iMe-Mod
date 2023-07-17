package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$getPasswordByPinCodeWithValidation$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1870x4459ea9d extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends String>> {
    final /* synthetic */ String $password$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1870x4459ea9d(String str) {
        super(1);
        this.$password$inlined = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends String> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends String> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        } else if (Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
            return Result.Companion.success(this.$password$inlined);
        } else {
            return Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null);
        }
    }
}
