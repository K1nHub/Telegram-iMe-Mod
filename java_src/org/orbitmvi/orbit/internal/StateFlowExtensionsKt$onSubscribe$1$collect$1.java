package org.orbitmvi.orbit.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlowExtensions.kt */
@DebugMetadata(m84c = "org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1", m83f = "StateFlowExtensions.kt", m82l = {16}, m81m = "collect")
/* loaded from: classes4.dex */
public final class StateFlowExtensionsKt$onSubscribe$1$collect$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ StateFlowExtensionsKt$onSubscribe$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateFlowExtensionsKt$onSubscribe$1$collect$1(StateFlowExtensionsKt$onSubscribe$1 stateFlowExtensionsKt$onSubscribe$1, Continuation<? super StateFlowExtensionsKt$onSubscribe$1$collect$1> continuation) {
        super(continuation);
        this.this$0 = stateFlowExtensionsKt$onSubscribe$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
