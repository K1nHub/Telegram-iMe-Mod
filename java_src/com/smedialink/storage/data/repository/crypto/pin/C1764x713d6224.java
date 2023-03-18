package com.smedialink.storage.data.repository.crypto.pin;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.pin.PinCodeRepositoryImpl$readPasswordByPinCode$lambda$2$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1764x713d6224 extends Lambda implements Function1<Result<? extends List<? extends Wallet>>, String> {
    final /* synthetic */ String $password$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1764x713d6224(String str) {
        super(1);
        this.$password$inlined = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.smedialink.storage.domain.model.Result, java.lang.Object, java.lang.String] */
    @Override // kotlin.jvm.functions.Function1
    public final String invoke(Result<? extends List<? extends Wallet>> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                ?? error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        return this.$password$inlined;
    }
}
