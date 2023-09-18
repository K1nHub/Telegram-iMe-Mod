package org.orbitmvi.orbit.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;
/* compiled from: StateFlowExtensions.kt */
/* loaded from: classes6.dex */
public final class StateFlowExtensionsKt {
    public static final <T> StateFlow<T> onSubscribe(StateFlow<? extends T> stateFlow, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(stateFlow, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return new StateFlowExtensionsKt$onSubscribe$1(stateFlow, block);
    }
}
