package org.orbitmvi.orbit.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.sync.Mutex;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [STATE] */
/* compiled from: RealContainer.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.internal.RealContainer$pluginContext$3", m101f = "RealContainer.kt", m100l = {111}, m99m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class RealContainer$pluginContext$3<STATE> extends SuspendLambda implements Function2<Function1<? super STATE, ? extends STATE>, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealContainer$pluginContext$3(RealContainer<STATE, SIDE_EFFECT> realContainer, Continuation<? super RealContainer$pluginContext$3> continuation) {
        super(2, continuation);
        this.this$0 = realContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RealContainer$pluginContext$3 realContainer$pluginContext$3 = new RealContainer$pluginContext$3(this.this$0, continuation);
        realContainer$pluginContext$3.L$0 = obj;
        return realContainer$pluginContext$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke((Function1) ((Function1) obj), continuation);
    }

    public final Object invoke(Function1<? super STATE, ? extends STATE> function1, Continuation<? super Unit> continuation) {
        return ((RealContainer$pluginContext$3) create(function1, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        Mutex mutex;
        Function1 function1;
        RealContainer realContainer;
        MutableStateFlow mutableStateFlow;
        MutableStateFlow mutableStateFlow2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function1 function12 = (Function1) this.L$0;
            mutex = ((RealContainer) this.this$0).mutex;
            RealContainer realContainer2 = this.this$0;
            this.L$0 = function12;
            this.L$1 = mutex;
            this.L$2 = realContainer2;
            this.label = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            function1 = function12;
            realContainer = realContainer2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            realContainer = (RealContainer) this.L$2;
            mutex = (Mutex) this.L$1;
            function1 = (Function1) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            mutableStateFlow = realContainer.internalStateFlow;
            mutableStateFlow2 = realContainer.internalStateFlow;
            mutableStateFlow.setValue(function1.invoke(mutableStateFlow2.getValue()));
            return Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}
