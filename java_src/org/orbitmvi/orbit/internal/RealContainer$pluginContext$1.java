package org.orbitmvi.orbit.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.Channel;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [SIDE_EFFECT] */
/* compiled from: RealContainer.kt */
@DebugMetadata(m143c = "org.orbitmvi.orbit.internal.RealContainer$pluginContext$1", m142f = "RealContainer.kt", m141l = {69}, m140m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class RealContainer$pluginContext$1<SIDE_EFFECT> extends SuspendLambda implements Function2<SIDE_EFFECT, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealContainer$pluginContext$1(RealContainer<STATE, SIDE_EFFECT> realContainer, Continuation<? super RealContainer$pluginContext$1> continuation) {
        super(2, continuation);
        this.this$0 = realContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RealContainer$pluginContext$1 realContainer$pluginContext$1 = new RealContainer$pluginContext$1(this.this$0, continuation);
        realContainer$pluginContext$1.L$0 = obj;
        return realContainer$pluginContext$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke2((RealContainer$pluginContext$1<SIDE_EFFECT>) obj, continuation);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(SIDE_EFFECT side_effect, Continuation<? super Unit> continuation) {
        return ((RealContainer$pluginContext$1) create(side_effect, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        Channel channel;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.L$0;
            channel = ((RealContainer) this.this$0).sideEffectChannel;
            this.label = 1;
            if (channel.send(obj2, this) == coroutine_suspended) {
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
