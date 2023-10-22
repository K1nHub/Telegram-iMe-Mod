package org.orbitmvi.orbit.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [SIDE_EFFECT] */
/* compiled from: LazyCreateContainerDecorator.kt */
@DebugMetadata(m143c = "org.orbitmvi.orbit.internal.LazyCreateContainerDecorator$sideEffectFlow$1", m142f = "LazyCreateContainerDecorator.kt", m141l = {42}, m140m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class LazyCreateContainerDecorator$sideEffectFlow$1<SIDE_EFFECT> extends SuspendLambda implements Function2<FlowCollector<? super SIDE_EFFECT>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ LazyCreateContainerDecorator<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyCreateContainerDecorator$sideEffectFlow$1(LazyCreateContainerDecorator<STATE, SIDE_EFFECT> lazyCreateContainerDecorator, Continuation<? super LazyCreateContainerDecorator$sideEffectFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = lazyCreateContainerDecorator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        LazyCreateContainerDecorator$sideEffectFlow$1 lazyCreateContainerDecorator$sideEffectFlow$1 = new LazyCreateContainerDecorator$sideEffectFlow$1(this.this$0, continuation);
        lazyCreateContainerDecorator$sideEffectFlow$1.L$0 = obj;
        return lazyCreateContainerDecorator$sideEffectFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke((FlowCollector) ((FlowCollector) obj), continuation);
    }

    public final Object invoke(FlowCollector<? super SIDE_EFFECT> flowCollector, Continuation<? super Unit> continuation) {
        return ((LazyCreateContainerDecorator$sideEffectFlow$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.runOnCreate();
            Flow<SIDE_EFFECT> sideEffectFlow = this.this$0.getActual().getSideEffectFlow();
            this.label = 1;
            if (FlowKt.emitAll((FlowCollector) this.L$0, sideEffectFlow, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
