package org.orbitmvi.orbit.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.syntax.ContainerContext;
/* compiled from: TestContainerDecorator.kt */
/* loaded from: classes4.dex */
public final class TestContainerDecorator<STATE, SIDE_EFFECT> implements Container {
    private final Container<STATE, SIDE_EFFECT> actual;
    private volatile /* synthetic */ Object delegate;
    private final STATE originalInitialState;
    private final CoroutineScope parentScope;

    static {
        AtomicReferenceFieldUpdater.newUpdater(TestContainerDecorator.class, Object.class, "delegate");
    }

    public TestContainerDecorator(STATE originalInitialState, CoroutineScope parentScope, Container<STATE, SIDE_EFFECT> actual) {
        Intrinsics.checkNotNullParameter(originalInitialState, "originalInitialState");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        Intrinsics.checkNotNullParameter(actual, "actual");
        this.originalInitialState = originalInitialState;
        this.parentScope = parentScope;
        this.actual = actual;
        this.delegate = getActual();
    }

    public Container<STATE, SIDE_EFFECT> getActual() {
        return this.actual;
    }

    @Override // org.orbitmvi.orbit.Container
    public StateFlow<STATE> getStateFlow() {
        return ((Container) this.delegate).getStateFlow();
    }

    @Override // org.orbitmvi.orbit.Container
    public Flow<SIDE_EFFECT> getSideEffectFlow() {
        return ((Container) this.delegate).getSideEffectFlow();
    }

    @Override // org.orbitmvi.orbit.Container
    public Object orbit(Function2<? super ContainerContext<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object orbit = ((Container) this.delegate).orbit(function2, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return orbit == coroutine_suspended ? orbit : Unit.INSTANCE;
    }
}
