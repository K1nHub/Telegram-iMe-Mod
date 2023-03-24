package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.manager.crypto.EVMBlockchainCryptoWalletManagerImpl$createWallet$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1695x67d25efc extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ String $guid$inlined;
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ EVMBlockchainCryptoWalletManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1695x67d25efc(EVMBlockchainCryptoWalletManagerImpl eVMBlockchainCryptoWalletManagerImpl, String str, String str2) {
        super(1);
        this.this$0 = eVMBlockchainCryptoWalletManagerImpl;
        this.$guid$inlined = str;
        this.$password$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends String> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        EVMBlockchainCryptoWalletManagerImpl eVMBlockchainCryptoWalletManagerImpl = this.this$0;
        String str = this.$guid$inlined;
        String data = result.getData();
        Intrinsics.checkNotNull(data);
        return eVMBlockchainCryptoWalletManagerImpl.importWallet(str, data, this.$password$inlined);
    }
}
