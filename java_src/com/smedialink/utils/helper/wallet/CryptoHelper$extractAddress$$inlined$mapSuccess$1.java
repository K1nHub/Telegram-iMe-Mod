package com.smedialink.utils.helper.wallet;

import com.smedialink.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CryptoHelper$extractAddress$$inlined$mapSuccess$1 extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends String>> {
    final /* synthetic */ String $group$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoHelper$extractAddress$$inlined$mapSuccess$1(String str) {
        super(1);
        this.$group$inlined = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends String> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends String> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        } else if (Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
            return Result.Companion.success(this.$group$inlined);
        } else {
            return Result.Companion.success("");
        }
    }
}
