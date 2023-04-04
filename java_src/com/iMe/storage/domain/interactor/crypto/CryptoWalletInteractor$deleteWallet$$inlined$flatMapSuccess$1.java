package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1(CryptoWalletInteractor cryptoWalletInteractor, BlockchainType blockchainType) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
        this.$blockchainType$inlined = blockchainType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        final CryptoWalletInteractor cryptoWalletInteractor = this.this$0;
        final BlockchainType blockchainType = this.$blockchainType$inlined;
        Observable flatMap = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteWallet$1$1
            @Override // java.util.concurrent.Callable
            public /* bridge */ /* synthetic */ Object call() {
                call();
                return Unit.INSTANCE;
            }

            @Override // java.util.concurrent.Callable
            public final void call() {
                CryptoAccessManager cryptoAccessManager;
                cryptoAccessManager = CryptoWalletInteractor.this.cryptoAccessManager;
                cryptoAccessManager.deleteWallet(blockchainType);
            }
        }).flatMap(new CryptoWalletInteractor$sam$io_reactivex_functions_Function$0(new CryptoWalletInteractor$deleteWallet$1$2(this.this$0, this.$blockchainType$inlined)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "fun deleteWallet(\n      …ulersProvider.io())\n    }");
        return flatMap;
    }
}
