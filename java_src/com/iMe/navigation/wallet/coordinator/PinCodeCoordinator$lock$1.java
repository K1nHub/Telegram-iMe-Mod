package com.iMe.navigation.wallet.coordinator;

import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.p031ui.base.mvp.MvpFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PinCodeCoordinator.kt */
/* loaded from: classes3.dex */
public final class PinCodeCoordinator$lock$1 extends Lambda implements Function2<EnterPinCodeResult, MvpFragment, Unit> {
    public static final PinCodeCoordinator$lock$1 INSTANCE = new PinCodeCoordinator$lock$1();

    PinCodeCoordinator$lock$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(EnterPinCodeResult enterPinCodeResult, MvpFragment mvpFragment) {
        invoke2(enterPinCodeResult, mvpFragment);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(EnterPinCodeResult enterPinCodeResult, MvpFragment fragment) {
        Intrinsics.checkNotNullParameter(enterPinCodeResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        fragment.finishFragment();
    }
}
