package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.domain.manager.crypto.CryptoWalletsManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1729x2157d0e9 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;
    final /* synthetic */ String $linkedAddress$inlined;
    final /* synthetic */ String $seed$inlined;
    final /* synthetic */ CryptoLocalWalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1729x2157d0e9(CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl, String str, BlockchainType blockchainType, String str2) {
        super(1);
        this.this$0 = cryptoLocalWalletRepositoryImpl;
        this.$seed$inlined = str;
        this.$blockchainType$inlined = blockchainType;
        this.$linkedAddress$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        CryptoWalletsManager cryptoWalletsManager;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        cryptoWalletsManager = this.this$0.walletManager;
        ObservableSource map = cryptoWalletsManager.generateAddressByMnemonic(this.$seed$inlined, this.$blockchainType$inlined).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1730x5a3cb788(this.$linkedAddress$inlined)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }
}
