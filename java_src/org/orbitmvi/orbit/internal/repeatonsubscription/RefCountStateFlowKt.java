package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;
/* compiled from: RefCountStateFlow.kt */
/* loaded from: classes4.dex */
public final class RefCountStateFlowKt {
    public static final <T> StateFlow<T> refCount(StateFlow<? extends T> stateFlow, SubscribedCounter subscribedCounter) {
        Intrinsics.checkNotNullParameter(stateFlow, "<this>");
        Intrinsics.checkNotNullParameter(subscribedCounter, "subscribedCounter");
        return new RefCountStateFlow(subscribedCounter, stateFlow);
    }
}
