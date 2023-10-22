package org.orbitmvi.orbit.viewmodel;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.orbitmvi.orbit.ContainerHost;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContainerHostExtensions.kt */
@DebugMetadata(m143c = "org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1", m142f = "ContainerHostExtensions.kt", m141l = {50}, m140m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class ContainerHostExtensionsKt$observe$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LifecycleOwner $lifecycleOwner;
    final /* synthetic */ Function2<SIDE_EFFECT, Continuation<? super Unit>, Object> $sideEffect;
    final /* synthetic */ Function2<STATE, Continuation<? super Unit>, Object> $state;
    final /* synthetic */ ContainerHost<STATE, SIDE_EFFECT> $this_observe;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContainerHostExtensionsKt$observe$1(LifecycleOwner lifecycleOwner, Function2<? super STATE, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super SIDE_EFFECT, ? super Continuation<? super Unit>, ? extends Object> function22, ContainerHost<STATE, SIDE_EFFECT> containerHost, Continuation<? super ContainerHostExtensionsKt$observe$1> continuation) {
        super(2, continuation);
        this.$lifecycleOwner = lifecycleOwner;
        this.$state = function2;
        this.$sideEffect = function22;
        this.$this_observe = containerHost;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ContainerHostExtensionsKt$observe$1(this.$lifecycleOwner, this.$state, this.$sideEffect, this.$this_observe, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ContainerHostExtensionsKt$observe$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Lifecycle lifecycle = this.$lifecycleOwner.getLifecycle();
            Intrinsics.checkNotNullExpressionValue(lifecycle, "lifecycleOwner.lifecycle");
            Lifecycle.State state = Lifecycle.State.STARTED;
            C35401 c35401 = new C35401(this.$state, this.$sideEffect, this.$this_observe, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, c35401, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContainerHostExtensions.kt */
    @DebugMetadata(m143c = "org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1$1", m142f = "ContainerHostExtensions.kt", m141l = {}, m140m = "invokeSuspend")
    /* renamed from: org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1$1 */
    /* loaded from: classes4.dex */
    public static final class C35401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<SIDE_EFFECT, Continuation<? super Unit>, Object> $sideEffect;
        final /* synthetic */ Function2<STATE, Continuation<? super Unit>, Object> $state;
        final /* synthetic */ ContainerHost<STATE, SIDE_EFFECT> $this_observe;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C35401(Function2<? super STATE, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super SIDE_EFFECT, ? super Continuation<? super Unit>, ? extends Object> function22, ContainerHost<STATE, SIDE_EFFECT> containerHost, Continuation<? super C35401> continuation) {
            super(2, continuation);
            this.$state = function2;
            this.$sideEffect = function22;
            this.$this_observe = containerHost;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C35401 c35401 = new C35401(this.$state, this.$sideEffect, this.$this_observe, continuation);
            c35401.L$0 = obj;
            return c35401;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Function2<STATE, Continuation<? super Unit>, Object> function2 = this.$state;
                if (function2 != 0) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new ContainerHostExtensionsKt$observe$1$1$1$1(this.$this_observe, function2, null), 3, null);
                }
                Function2<SIDE_EFFECT, Continuation<? super Unit>, Object> function22 = this.$sideEffect;
                if (function22 != 0) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new ContainerHostExtensionsKt$observe$1$1$2$1(this.$this_observe, function22, null), 3, null);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
