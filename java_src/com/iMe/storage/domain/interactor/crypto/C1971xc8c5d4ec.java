package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$withAllBip39BasedWalletsActivationCheck$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1971xc8c5d4ec extends Lambda implements Function1<Result<? extends Wallet>, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1971xc8c5d4ec(BlockchainType blockchainType, CryptoWalletInteractor cryptoWalletInteractor) {
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
            Observable flatMap = activateAllBip39BasedWallets.flatMap(new CryptoWalletInteractor$sam$io_reactivex_functions_Function$0(new C1972xa72bc840(result)));
            schedulersProvider = this.this$0.schedulersProvider;
            Observable subscribeOn = flatMap.subscribeOn(schedulersProvider.mo699io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "result ->\n              …r.io())\n                }");
            return subscribeOn;
        }
    }
}
