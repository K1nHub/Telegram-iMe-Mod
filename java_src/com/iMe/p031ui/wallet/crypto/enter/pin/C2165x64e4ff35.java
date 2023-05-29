package com.iMe.p031ui.wallet.crypto.enter.pin;

import com.iMe.common.AppRxEvents;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2165x64e4ff35 extends Lambda implements Function1<DomainRxEvents.CryptoEvent, Unit> {
    final /* synthetic */ EnterWalletPinFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2165x64e4ff35(EnterWalletPinFragment enterWalletPinFragment) {
        super(1);
        this.this$0 = enterWalletPinFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
        m1417invoke(cryptoEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1417invoke(DomainRxEvents.CryptoEvent it) {
        RxEventBus rxEventBus;
        EnterPinCodeScreenType enterPinCodeScreenType;
        Function2 function2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.CryptoEvent cryptoEvent = it;
        if (cryptoEvent instanceof DomainRxEvents.SuccessResetWallet) {
            this.this$0.removeSelfFromStack();
            return;
        }
        if (cryptoEvent instanceof DomainRxEvents.SuccessRecreateWalletByPassword ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRestoreWallet.INSTANCE)) {
            rxEventBus = this.this$0.getRxEventBus();
            enterPinCodeScreenType = this.this$0.screenType;
            rxEventBus.publish(new AppRxEvents.SuccessEnterPinCode(enterPinCodeScreenType));
            function2 = this.this$0.resultDelegate;
            function2.invoke(new EnterPinCodeResult.Success(null, null, 3, null), this.this$0);
            this.this$0.removeSelfFromStack();
        }
    }
}
