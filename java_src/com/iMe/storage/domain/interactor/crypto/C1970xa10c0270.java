package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletAddressWithCheck$lambda$21$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1970xa10c0270 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ NetworkType $networkType$inlined;
    final /* synthetic */ Wallet $newWallet$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1970xa10c0270(CryptoWalletInteractor cryptoWalletInteractor, Wallet wallet2, NetworkType networkType) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
        this.$newWallet$inlined = wallet2;
        this.$networkType$inlined = networkType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        CryptoWalletRepository cryptoWalletRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        cryptoWalletRepository = this.this$0.cryptoWalletRepository;
        String address = this.$newWallet$inlined.getAddress();
        NetworkType networkType = this.$networkType$inlined;
        Wallet wallet2 = this.$newWallet$inlined;
        Wallet.TON ton = wallet2 instanceof Wallet.TON ? (Wallet.TON) wallet2 : null;
        Observable<Result<Boolean>> linkWallet = cryptoWalletRepository.linkWallet(address, networkType, ton != null ? CryptoExtKt.getUnarmoredPublicKey(ton) : null);
        schedulersProvider = this.this$0.schedulersProvider;
        Observable<Result<Boolean>> subscribeOn = linkWallet.subscribeOn(schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cryptoWalletRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
