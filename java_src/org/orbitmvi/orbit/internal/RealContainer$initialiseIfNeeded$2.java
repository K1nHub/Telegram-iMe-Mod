package org.orbitmvi.orbit.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.orbitmvi.orbit.syntax.ContainerContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealContainer.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2", m101f = "RealContainer.kt", m100l = {98}, m99m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class RealContainer$initialiseIfNeeded$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealContainer$initialiseIfNeeded$2(RealContainer<STATE, SIDE_EFFECT> realContainer, Continuation<? super RealContainer$initialiseIfNeeded$2> continuation) {
        super(2, continuation);
        this.this$0 = realContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RealContainer$initialiseIfNeeded$2 realContainer$initialiseIfNeeded$2 = new RealContainer$initialiseIfNeeded$2(this.this$0, continuation);
        realContainer$initialiseIfNeeded$2.L$0 = obj;
        return realContainer$initialiseIfNeeded$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RealContainer$initialiseIfNeeded$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ab  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0083 -> B:20:0x0089). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r14.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2a
            if (r1 != r3) goto L22
            java.lang.Object r1 = r14.L$2
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r14.L$1
            kotlin.coroutines.CoroutineContext r4 = (kotlin.coroutines.CoroutineContext) r4
            java.lang.Object r5 = r14.L$0
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            kotlin.ResultKt.throwOnFailure(r15)
            r11 = r4
            r12 = r5
            r4 = r1
            r1 = r0
            r0 = r14
            goto L89
        L22:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L2a:
            kotlin.ResultKt.throwOnFailure(r15)
            java.lang.Object r15 = r14.L$0
            kotlinx.coroutines.CoroutineScope r15 = (kotlinx.coroutines.CoroutineScope) r15
            org.orbitmvi.orbit.internal.RealContainer<STATE, SIDE_EFFECT> r1 = r14.this$0
            org.orbitmvi.orbit.Container$Settings r1 = r1.getSettings()
            kotlinx.coroutines.CoroutineExceptionHandler r1 = r1.getExceptionHandler()
            if (r1 != 0) goto L3f
            r1 = r2
            goto L59
        L3f:
            org.orbitmvi.orbit.internal.RealContainer<STATE, SIDE_EFFECT> r4 = r14.this$0
            kotlinx.coroutines.CoroutineScope r4 = org.orbitmvi.orbit.internal.RealContainer.access$getScope$p(r4)
            kotlin.coroutines.CoroutineContext r4 = r4.getCoroutineContext()
            kotlinx.coroutines.Job$Key r5 = kotlinx.coroutines.Job.Key
            kotlin.coroutines.CoroutineContext$Element r4 = r4.get(r5)
            kotlinx.coroutines.Job r4 = (kotlinx.coroutines.Job) r4
            kotlinx.coroutines.CompletableJob r4 = kotlinx.coroutines.SupervisorKt.SupervisorJob(r4)
            kotlin.coroutines.CoroutineContext r1 = r1.plus(r4)
        L59:
            kotlinx.coroutines.CoroutineDispatcher r4 = kotlinx.coroutines.Dispatchers.getUnconfined()
            if (r1 != 0) goto L61
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
        L61:
            kotlin.coroutines.CoroutineContext r1 = r4.plus(r1)
            org.orbitmvi.orbit.internal.RealContainer<STATE, SIDE_EFFECT> r4 = r14.this$0
            kotlinx.coroutines.channels.Channel r4 = org.orbitmvi.orbit.internal.RealContainer.access$getDispatchChannel$p(r4)
            kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
            r5 = r15
            r15 = r14
            r13 = r4
            r4 = r1
            r1 = r13
        L74:
            r15.L$0 = r5
            r15.L$1 = r4
            r15.L$2 = r1
            r15.label = r3
            java.lang.Object r6 = r1.hasNext(r15)
            if (r6 != r0) goto L83
            return r0
        L83:
            r11 = r4
            r12 = r5
            r4 = r1
            r1 = r0
            r0 = r15
            r15 = r6
        L89:
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r15 = r15.booleanValue()
            if (r15 == 0) goto Lab
            java.lang.Object r15 = r4.next()
            kotlin.jvm.functions.Function2 r15 = (kotlin.jvm.functions.Function2) r15
            r7 = 0
            org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2$1 r8 = new org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2$1
            org.orbitmvi.orbit.internal.RealContainer<STATE, SIDE_EFFECT> r5 = r0.this$0
            r8.<init>(r15, r5, r2)
            r9 = 2
            r10 = 0
            r5 = r12
            r6 = r11
            kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)
            r15 = r0
            r0 = r1
            r1 = r4
            r4 = r11
            goto L74
        Lab:
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RealContainer.kt */
    @DebugMetadata(m102c = "org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2$1", m101f = "RealContainer.kt", m100l = {99}, m99m = "invokeSuspend")
    /* renamed from: org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2$1 */
    /* loaded from: classes4.dex */
    public static final class C34451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<ContainerContext<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> $msg;
        int label;
        final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C34451(Function2<? super ContainerContext<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, RealContainer<STATE, SIDE_EFFECT> realContainer, Continuation<? super C34451> continuation) {
            super(2, continuation);
            this.$msg = function2;
            this.this$0 = realContainer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C34451(this.$msg, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C34451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function2<ContainerContext<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> function2 = this.$msg;
                ContainerContext pluginContext$orbit_core = this.this$0.getPluginContext$orbit_core();
                this.label = 1;
                if (function2.invoke(pluginContext$orbit_core, this) == coroutine_suspended) {
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
}
