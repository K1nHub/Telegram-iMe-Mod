package org.orbitmvi.orbit.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealContainer.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$1", m101f = "RealContainer.kt", m100l = {90}, m99m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class RealContainer$initialiseIfNeeded$1 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealContainer$initialiseIfNeeded$1(RealContainer<STATE, SIDE_EFFECT> realContainer, Continuation<? super RealContainer$initialiseIfNeeded$1> continuation) {
        super(2, continuation);
        this.this$0 = realContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RealContainer$initialiseIfNeeded$1 realContainer$initialiseIfNeeded$1 = new RealContainer$initialiseIfNeeded$1(this.this$0, continuation);
        realContainer$initialiseIfNeeded$1.L$0 = obj;
        return realContainer$initialiseIfNeeded$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((RealContainer$initialiseIfNeeded$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final RealContainer<STATE, SIDE_EFFECT> realContainer = this.this$0;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    realContainer.getSettings().getIdlingRegistry().close();
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose((ProducerScope) this.L$0, function0, this) == coroutine_suspended) {
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
