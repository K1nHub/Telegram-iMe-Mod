package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
/* compiled from: SubscribedCounter.kt */
/* loaded from: classes6.dex */
public interface SubscribedCounter {
    Object decrement(Continuation<? super Unit> continuation);

    Object increment(Continuation<? super Unit> continuation);
}
