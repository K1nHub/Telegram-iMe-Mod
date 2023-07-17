package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$deleteWallet$4 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ BlockchainType $blockchainType;
    final /* synthetic */ boolean $shouldSendRxEvent;
    final /* synthetic */ boolean $withUnlink;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$deleteWallet$4(boolean z, CryptoWalletInteractor cryptoWalletInteractor, BlockchainType blockchainType, boolean z2) {
        super(1);
        this.$withUnlink = z;
        this.this$0 = cryptoWalletInteractor;
        this.$blockchainType = blockchainType;
        this.$shouldSendRxEvent = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        return invoke2((Result<Boolean>) result);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<Boolean>> invoke2(Result<Boolean> it) {
        CryptoWalletRepository cryptoWalletRepository;
        Intrinsics.checkNotNullParameter(it, "it");
        if (!this.$withUnlink) {
            Observable just = Observable.just(it);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        cryptoWalletRepository = this.this$0.cryptoWalletRepository;
        Observable<Result<Boolean>> doOnNext = cryptoWalletRepository.unlinkWallet(this.$blockchainType).doOnNext(new ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1969x7263a409(this.$shouldSendRxEvent, this.this$0)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "crossinline body: (T) ->…ult as T)\n        }\n    }");
        return doOnNext;
    }
}
