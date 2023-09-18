package com.iMe.feature.devTools;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
/* compiled from: DevSettingsScreen.kt */
/* loaded from: classes4.dex */
/* synthetic */ class DevSettingsScreen$onCreate$1 extends AdaptedFunctionReference implements Function2<DevState, Continuation<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DevSettingsScreen$onCreate$1(Object obj) {
        super(2, obj, DevSettingsScreen.class, "render", "render(Lcom/iMe/feature/devTools/DevState;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(DevState devState, Continuation<? super Unit> continuation) {
        Object onCreate$render;
        onCreate$render = DevSettingsScreen.onCreate$render((DevSettingsScreen) this.receiver, devState, continuation);
        return onCreate$render;
    }
}
