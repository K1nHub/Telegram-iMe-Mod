package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$isValidSeed$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1783xf78a2b72 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;
    final /* synthetic */ CryptoLocalWalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1783xf78a2b72(CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl, BlockchainType blockchainType) {
        super(1);
        this.this$0 = cryptoLocalWalletRepositoryImpl;
        this.$blockchainType$inlined = blockchainType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl = this.this$0;
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        return cryptoLocalWalletRepositoryImpl.isValidAddress(data, this.$blockchainType$inlined);
    }
}
