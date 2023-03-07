package kotlin.coroutines.intrinsics;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntrinsicsJvm.kt */
/* loaded from: classes4.dex */
public class IntrinsicsKt__IntrinsicsJvmKt {
    public static <T> Continuation<Unit> createCoroutineUnintercepted(final Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> completion) {
        Intrinsics.checkNotNullParameter(function1, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        final Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(completion);
        if (function1 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function1).create(probeCoroutineCreated);
        }
        final CoroutineContext context = probeCoroutineCreated.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(probeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(obj);
                        return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(this);
                    } else if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    } else {
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                }
            };
        }
        return new ContinuationImpl(probeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(this);
                } else if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                } else {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
            }
        };
    }

    public static <R, T> Continuation<Unit> createCoroutineUnintercepted(final Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, final R r, Continuation<? super T> completion) {
        Intrinsics.checkNotNullParameter(function2, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        final Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(completion);
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(r, probeCoroutineCreated);
        }
        final CoroutineContext context = probeCoroutineCreated.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(probeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                protected Object invokeSuspend(Object obj) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(obj);
                        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, this);
                    } else if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    } else {
                        throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                }
            };
        }
        return new ContinuationImpl(probeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            protected Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(obj);
                    return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, this);
                } else if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                } else {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Continuation<T> intercepted(Continuation<? super T> continuation) {
        Continuation<T> continuation2;
        Intrinsics.checkNotNullParameter(continuation, "<this>");
        ContinuationImpl continuationImpl = continuation instanceof ContinuationImpl ? (ContinuationImpl) continuation : null;
        return (continuationImpl == null || (continuation2 = (Continuation<T>) continuationImpl.intercepted()) == null) ? continuation : continuation2;
    }
}
