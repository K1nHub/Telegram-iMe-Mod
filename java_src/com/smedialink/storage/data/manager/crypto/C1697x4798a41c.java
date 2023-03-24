package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl$generateMnemonic$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1697x4798a41c extends Lambda implements Function1<Result<? extends Wallet>, Result<? extends String>> {
    public C1697x4798a41c() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends String> invoke(Result<? extends Wallet> result) {
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
        }
        Wallet.TON ton = (Wallet.TON) result.getData();
        String mnemonic = ton != null ? ton.getMnemonic() : null;
        if (mnemonic == null) {
            mnemonic = "";
        }
        return Result.Companion.success(mnemonic);
    }
}
