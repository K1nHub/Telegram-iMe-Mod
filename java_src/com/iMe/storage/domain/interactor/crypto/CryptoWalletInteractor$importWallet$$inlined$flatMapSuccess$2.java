package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$2 extends Lambda implements Function1<Result<? extends Wallet>, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$2(BlockchainType blockchainType, CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.$blockchainType$inlined = blockchainType;
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends Wallet> result) {
        Observable activateAllBip39BasedWallets;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        } else if (!this.$blockchainType$inlined.isBip39PhraseBased()) {
            Observable just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        } else {
            activateAllBip39BasedWallets = this.this$0.activateAllBip39BasedWallets();
            final CryptoWalletInteractor$importWallet$4$1 cryptoWalletInteractor$importWallet$4$1 = new CryptoWalletInteractor$importWallet$4$1(result);
            Observable flatMap = activateAllBip39BasedWallets.flatMap(new Function(cryptoWalletInteractor$importWallet$4$1) { // from class: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$sam$io_reactivex_functions_Function$0
                private final /* synthetic */ Function1 function;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    Intrinsics.checkNotNullParameter(cryptoWalletInteractor$importWallet$4$1, "function");
                    this.function = cryptoWalletInteractor$importWallet$4$1;
                }

                @Override // io.reactivex.functions.Function
                public final /* synthetic */ Object apply(Object obj) {
                    return this.function.invoke(obj);
                }
            });
            schedulersProvider = this.this$0.schedulersProvider;
            Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo699io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "result ->\n              …())\n                    }");
            return subscribeOn;
        }
    }
}
