package org.orbitmvi.orbit.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import org.orbitmvi.orbit.Container;
/* compiled from: LazyCreateContainerDecorator.kt */
/* loaded from: classes4.dex */
public final class LazyCreateContainerDecorator<STATE, SIDE_EFFECT> implements Container {
    private static final /* synthetic */ AtomicIntegerFieldUpdater created$FU = AtomicIntegerFieldUpdater.newUpdater(LazyCreateContainerDecorator.class, "created");
    private final Container<STATE, SIDE_EFFECT> actual;
    private volatile /* synthetic */ int created;
    private final Function1<STATE, Unit> onCreate;
    private final Flow<SIDE_EFFECT> sideEffectFlow;
    private final StateFlow<STATE> stateFlow;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyCreateContainerDecorator(Container<STATE, SIDE_EFFECT> actual, Function1<? super STATE, Unit> onCreate) {
        Intrinsics.checkNotNullParameter(actual, "actual");
        Intrinsics.checkNotNullParameter(onCreate, "onCreate");
        this.actual = actual;
        this.onCreate = onCreate;
        this.created = 0;
        this.stateFlow = StateFlowExtensionsKt.onSubscribe(getActual().getStateFlow(), new LazyCreateContainerDecorator$stateFlow$1(this));
        this.sideEffectFlow = FlowKt.flow(new LazyCreateContainerDecorator$sideEffectFlow$1(this, null));
    }

    public Container<STATE, SIDE_EFFECT> getActual() {
        return this.actual;
    }

    @Override // org.orbitmvi.orbit.Container
    public StateFlow<STATE> getStateFlow() {
        return this.stateFlow;
    }

    @Override // org.orbitmvi.orbit.Container
    public Flow<SIDE_EFFECT> getSideEffectFlow() {
        return this.sideEffectFlow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runOnCreate() {
        if (created$FU.compareAndSet(this, 0, 1)) {
            this.onCreate.invoke(getActual().getStateFlow().getValue());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @Override // org.orbitmvi.orbit.Container
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object orbit(kotlin.jvm.functions.Function2<? super org.orbitmvi.orbit.syntax.ContainerContext<STATE, SIDE_EFFECT>, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.orbitmvi.orbit.internal.LazyCreateContainerDecorator$orbit$1
            if (r0 == 0) goto L13
            r0 = r6
            org.orbitmvi.orbit.internal.LazyCreateContainerDecorator$orbit$1 r0 = (org.orbitmvi.orbit.internal.LazyCreateContainerDecorator$orbit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.internal.LazyCreateContainerDecorator$orbit$1 r0 = new org.orbitmvi.orbit.internal.LazyCreateContainerDecorator$orbit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            kotlin.Unit r5 = (kotlin.Unit) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            r4.runOnCreate()
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            org.orbitmvi.orbit.Container r2 = r4.getActual()
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r5 = r2.orbit(r5, r0)
            if (r5 != r1) goto L4c
            return r1
        L4c:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.LazyCreateContainerDecorator.orbit(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
