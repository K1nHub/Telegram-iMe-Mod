package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RefCountFlow.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow", m101f = "RefCountFlow.kt", m100l = {13, 14, 16, 16}, m99m = "collect")
/* loaded from: classes4.dex */
public final class RefCountFlow$collect$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RefCountFlow<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefCountFlow$collect$1(RefCountFlow<T> refCountFlow, Continuation<? super RefCountFlow$collect$1> continuation) {
        super(continuation);
        this.this$0 = refCountFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
