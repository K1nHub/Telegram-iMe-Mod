package org.orbitmvi.orbit.viewmodel;

import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;
import org.orbitmvi.orbit.ContainerHost;
/* compiled from: ContainerHostExtensions.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1$1$1$1", m101f = "ContainerHostExtensions.kt", m100l = {51}, m99m = "invokeSuspend")
/* loaded from: classes6.dex */
final class ContainerHostExtensionsKt$observe$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<STATE, Continuation<? super Unit>, Object> $state;
    final /* synthetic */ ContainerHost<STATE, SIDE_EFFECT> $this_observe;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContainerHostExtensionsKt$observe$1$1$1$1(ContainerHost<STATE, SIDE_EFFECT> containerHost, Function2<? super STATE, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super ContainerHostExtensionsKt$observe$1$1$1$1> continuation) {
        super(2, continuation);
        this.$this_observe = containerHost;
        this.$state = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ContainerHostExtensionsKt$observe$1$1$1$1(this.$this_observe, this.$state, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ContainerHostExtensionsKt$observe$1$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            StateFlow stateFlow = this.$this_observe.getContainer().getStateFlow();
            final Function2<STATE, Continuation<? super Unit>, Object> function2 = this.$state;
            FlowCollector flowCollector = new FlowCollector() { // from class: org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1$1$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(STATE state, Continuation<? super Unit> continuation) {
                    Object coroutine_suspended2;
                    Object invoke = function2.invoke(state, continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return invoke == coroutine_suspended2 ? invoke : Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (stateFlow.collect(flowCollector, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }
}
