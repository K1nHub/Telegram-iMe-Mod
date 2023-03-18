package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$lambda$10$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1730x5a3cb788 extends Lambda implements Function1<Result<? extends String>, Result<? extends Boolean>> {
    final /* synthetic */ String $linkedAddress$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1730x5a3cb788(String str) {
        super(1);
        this.$linkedAddress$inlined = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Boolean> invoke(Result<? extends String> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends Boolean> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        String str = this.$linkedAddress$inlined;
        String str2 = (String) result.getData();
        if (str2 == null) {
            str2 = "";
        }
        return Result.Companion.success(Boolean.valueOf(Intrinsics.areEqual(str, str2)));
    }
}
