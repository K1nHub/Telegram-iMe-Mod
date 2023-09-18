package com.iMe.feature.devTools;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
/* compiled from: DevSettingsScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class DevSettingsScreen$onCreate$2 extends AdaptedFunctionReference implements Function2<DevSideEffects, Continuation<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DevSettingsScreen$onCreate$2(Object obj) {
        super(2, obj, DevSettingsScreen.class, "sideEffects", "sideEffects(Lcom/iMe/feature/devTools/DevSideEffects;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(DevSideEffects devSideEffects, Continuation<? super Unit> continuation) {
        Object onCreate$sideEffects;
        onCreate$sideEffects = DevSettingsScreen.onCreate$sideEffects((DevSettingsScreen) this.receiver, devSideEffects, continuation);
        return onCreate$sideEffects;
    }
}
