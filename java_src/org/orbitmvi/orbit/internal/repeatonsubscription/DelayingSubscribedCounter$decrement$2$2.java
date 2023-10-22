package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DelayingSubscribedCounter.kt */
@DebugMetadata(m143c = "org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$2$2", m142f = "DelayingSubscribedCounter.kt", m141l = {40}, m140m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class DelayingSubscribedCounter$decrement$2$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DelayingSubscribedCounter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DelayingSubscribedCounter$decrement$2$2(DelayingSubscribedCounter delayingSubscribedCounter, Continuation<? super DelayingSubscribedCounter$decrement$2$2> continuation) {
        super(2, continuation);
        this.this$0 = delayingSubscribedCounter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DelayingSubscribedCounter$decrement$2$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DelayingSubscribedCounter$decrement$2$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        long j;
        MutableStateFlow mutableStateFlow;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            j = this.this$0.repeatOnSubscribedStopTimeout;
            this.label = 1;
            if (DelayKt.delay(j, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        mutableStateFlow = this.this$0._subscribed;
        mutableStateFlow.setValue(Subscription.Unsubscribed);
        return Unit.INSTANCE;
    }
}
