package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$importWallet$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1781x966593e2 extends Lambda implements Function1<Result<? extends Wallet>, Result<? extends Wallet>> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ CryptoLocalWalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1781x966593e2(CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl, String str) {
        super(1);
        this.this$0 = cryptoLocalWalletRepositoryImpl;
        this.$password$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Wallet> invoke(Result<? extends Wallet> result) {
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z = result instanceof Result.Success;
        if (z) {
            if (z) {
                cryptoAccessManager = this.this$0.cryptoAccessManager;
                cryptoAccessManager.setWallet((Wallet) ((Result.Success) result).getData(), this.$password$inlined);
                return result;
            }
            return result;
        } else if (result instanceof Result.Error) {
            Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
            return error$default;
        } else if (result instanceof Object) {
            return result;
        } else {
            return null;
        }
    }
}
