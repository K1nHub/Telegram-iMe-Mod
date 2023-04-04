package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1 */
/* loaded from: classes3.dex */
public final class C1901x5e7d6f0b extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1901x5e7d6f0b(CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        invoke2(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends Boolean> result) {
        RxEventBus rxEventBus;
        if (result instanceof Result.Success) {
            Objects.requireNonNull(result, "null cannot be cast to non-null type com.iMe.storage.domain.model.Result<kotlin.Boolean>");
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(new DomainRxEvents.SuccessResetWallet(true));
        }
    }
}
