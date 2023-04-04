package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$unlockAllWallets$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1797x36424441 extends Lambda implements Function1<Result<? extends Wallet>, Result<? extends List<? extends Wallet>>> {
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ CryptoLocalWalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1797x36424441(CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl, String str) {
        super(1);
        this.this$0 = cryptoLocalWalletRepositoryImpl;
        this.$password$inlined = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends List<? extends Wallet>> invoke(Result<? extends Wallet> result) {
        CryptoAccessManager cryptoAccessManager;
        List listOf;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends List<? extends Wallet>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        Object data = result.getData();
        Intrinsics.checkNotNull(data);
        Wallet wallet2 = (Wallet) data;
        cryptoAccessManager = this.this$0.cryptoAccessManager;
        cryptoAccessManager.setWallet(wallet2, this.$password$inlined);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(wallet2);
        return Result.Companion.success(listOf);
    }
}
