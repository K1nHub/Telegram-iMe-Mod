package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1 extends Lambda implements Function1<Result<? extends Wallet>, Unit> {
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1(CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
        invoke2(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends Wallet> result) {
        RxEventBus rxEventBus;
        if (result instanceof Result.Success) {
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(DomainRxEvents.SuccessCreateWallet.INSTANCE);
        }
    }
}
