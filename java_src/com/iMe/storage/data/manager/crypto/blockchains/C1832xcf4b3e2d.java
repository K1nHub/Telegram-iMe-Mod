package com.iMe.storage.data.manager.crypto.blockchains;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.manager.crypto.blockchains.TONBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1832xcf4b3e2d extends Lambda implements Function1<Result<? extends Wallet.TON>, Result<? extends String>> {
    public C1832xcf4b3e2d() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends String> invoke(Result<? extends Wallet.TON> result) {
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
        }
        Wallet.TON ton = (Wallet.TON) result.getData();
        String address = ton != null ? ton.getAddress() : null;
        if (address == null) {
            address = "";
        }
        return Result.Companion.success(address);
    }
}
