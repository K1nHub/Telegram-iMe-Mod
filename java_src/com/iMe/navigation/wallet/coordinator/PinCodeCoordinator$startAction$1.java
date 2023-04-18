package com.iMe.navigation.wallet.coordinator;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.p031ui.base.mvp.MvpFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PinCodeCoordinator.kt */
/* loaded from: classes3.dex */
public final class PinCodeCoordinator$startAction$1 extends Lambda implements Function2<EnterPinCodeResult, MvpFragment, Unit> {
    final /* synthetic */ Callbacks$Callback $action;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinCodeCoordinator$startAction$1(Callbacks$Callback callbacks$Callback) {
        super(2);
        this.$action = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(EnterPinCodeResult enterPinCodeResult, MvpFragment mvpFragment) {
        invoke2(enterPinCodeResult, mvpFragment);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(EnterPinCodeResult result, MvpFragment fragment) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (result instanceof EnterPinCodeResult.Success) {
            this.$action.invoke();
            fragment.onBackPressed();
        }
    }
}
