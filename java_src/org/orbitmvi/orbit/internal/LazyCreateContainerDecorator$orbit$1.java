package org.orbitmvi.orbit.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyCreateContainerDecorator.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.internal.LazyCreateContainerDecorator", m101f = "LazyCreateContainerDecorator.kt", m100l = {52}, m99m = "orbit")
/* loaded from: classes4.dex */
public final class LazyCreateContainerDecorator$orbit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LazyCreateContainerDecorator<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyCreateContainerDecorator$orbit$1(LazyCreateContainerDecorator<STATE, SIDE_EFFECT> lazyCreateContainerDecorator, Continuation<? super LazyCreateContainerDecorator$orbit$1> continuation) {
        super(continuation);
        this.this$0 = lazyCreateContainerDecorator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.orbit(null, this);
    }
}
