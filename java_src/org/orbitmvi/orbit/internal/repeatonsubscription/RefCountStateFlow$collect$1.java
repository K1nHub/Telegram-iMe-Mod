package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RefCountStateFlow.kt */
@DebugMetadata(m84c = "org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow", m83f = "RefCountStateFlow.kt", m82l = {19, 20, 22}, m81m = "collect")
/* loaded from: classes4.dex */
public final class RefCountStateFlow$collect$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RefCountStateFlow<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefCountStateFlow$collect$1(RefCountStateFlow<T> refCountStateFlow, Continuation<? super RefCountStateFlow$collect$1> continuation) {
        super(continuation);
        this.this$0 = refCountStateFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
