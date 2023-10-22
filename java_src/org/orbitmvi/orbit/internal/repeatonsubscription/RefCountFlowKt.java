package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
/* compiled from: RefCountFlow.kt */
/* loaded from: classes4.dex */
public final class RefCountFlowKt {
    public static final <T> Flow<T> refCount(Flow<? extends T> flow, SubscribedCounter subscribedCounter) {
        Intrinsics.checkNotNullParameter(flow, "<this>");
        Intrinsics.checkNotNullParameter(subscribedCounter, "subscribedCounter");
        return new RefCountFlow(subscribedCounter, flow);
    }
}
