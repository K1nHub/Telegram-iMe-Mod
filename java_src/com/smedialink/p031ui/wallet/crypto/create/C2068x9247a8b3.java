package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$lambda$4$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C2068x9247a8b3 extends Lambda implements Function1<Result<? extends Wallet>, Result<? extends Boolean>> {
    public C2068x9247a8b3() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Boolean> invoke(Result<? extends Wallet> result) {
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
        return Result.Companion.success(Boolean.TRUE);
    }
}
