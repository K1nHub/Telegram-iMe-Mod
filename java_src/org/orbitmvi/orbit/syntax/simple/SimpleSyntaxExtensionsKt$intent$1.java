package org.orbitmvi.orbit.syntax.simple;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.ContainerHost;
import org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt;
import org.orbitmvi.orbit.syntax.ContainerContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleSyntaxExtensions.kt */
@DebugMetadata(m84c = "org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$intent$1", m83f = "SimpleSyntaxExtensions.kt", m82l = {72}, m81m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class SimpleSyntaxExtensionsKt$intent$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $registerIdling;
    final /* synthetic */ ContainerHost<STATE, SIDE_EFFECT> $this_intent;
    final /* synthetic */ Function2<SimpleSyntax<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> $transformer;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SimpleSyntaxExtensionsKt$intent$1(ContainerHost<STATE, SIDE_EFFECT> containerHost, boolean z, Function2<? super SimpleSyntax<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super SimpleSyntaxExtensionsKt$intent$1> continuation) {
        super(1, continuation);
        this.$this_intent = containerHost;
        this.$registerIdling = z;
        this.$transformer = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new SimpleSyntaxExtensionsKt$intent$1(this.$this_intent, this.$registerIdling, this.$transformer, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((SimpleSyntaxExtensionsKt$intent$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleSyntaxExtensions.kt */
    @DebugMetadata(m84c = "org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$intent$1$1", m83f = "SimpleSyntaxExtensions.kt", m82l = {73}, m81m = "invokeSuspend")
    /* renamed from: org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$intent$1$1 */
    /* loaded from: classes4.dex */
    public static final class C31861 extends SuspendLambda implements Function2<ContainerContext<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $registerIdling;
        final /* synthetic */ Function2<SimpleSyntax<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> $transformer;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C31861(boolean z, Function2<? super SimpleSyntax<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C31861> continuation) {
            super(2, continuation);
            this.$registerIdling = z;
            this.$transformer = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C31861 c31861 = new C31861(this.$registerIdling, this.$transformer, continuation);
            c31861.L$0 = obj;
            return c31861;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ContainerContext<STATE, SIDE_EFFECT> containerContext, Continuation<? super Unit> continuation) {
            return ((C31861) create(containerContext, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SimpleSyntaxExtensions.kt */
        @DebugMetadata(m84c = "org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$intent$1$1$1", m83f = "SimpleSyntaxExtensions.kt", m82l = {74}, m81m = "invokeSuspend")
        /* renamed from: org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$intent$1$1$1 */
        /* loaded from: classes4.dex */
        public static final class C31871 extends SuspendLambda implements Function2<ContainerContext<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function2<SimpleSyntax<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> $transformer;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C31871(Function2<? super SimpleSyntax<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C31871> continuation) {
                super(2, continuation);
                this.$transformer = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C31871 c31871 = new C31871(this.$transformer, continuation);
                c31871.L$0 = obj;
                return c31871;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ContainerContext<STATE, SIDE_EFFECT> containerContext, Continuation<? super Unit> continuation) {
                return ((C31871) create(containerContext, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function2<SimpleSyntax<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object> function2 = this.$transformer;
                    SimpleSyntax simpleSyntax = new SimpleSyntax((ContainerContext) this.L$0);
                    this.label = 1;
                    if (function2.invoke(simpleSyntax, this) == coroutine_suspended) {
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

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                boolean z = this.$registerIdling;
                C31871 c31871 = new C31871(this.$transformer, null);
                this.label = 1;
                if (SimpleIdlingExtensionsKt.withIdling((ContainerContext) this.L$0, z, c31871, this) == coroutine_suspended) {
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

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Container container = this.$this_intent.getContainer();
            C31861 c31861 = new C31861(this.$registerIdling, this.$transformer, null);
            this.label = 1;
            if (container.orbit(c31861, this) == coroutine_suspended) {
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
