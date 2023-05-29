package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DelayingSubscribedCounter.kt */
@DebugMetadata(m84c = "org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter", m83f = "DelayingSubscribedCounter.kt", m82l = {53}, m81m = "increment")
/* loaded from: classes4.dex */
public final class DelayingSubscribedCounter$increment$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DelayingSubscribedCounter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DelayingSubscribedCounter$increment$1(DelayingSubscribedCounter delayingSubscribedCounter, Continuation<? super DelayingSubscribedCounter$increment$1> continuation) {
        super(continuation);
        this.this$0 = delayingSubscribedCounter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.increment(this);
    }
}
