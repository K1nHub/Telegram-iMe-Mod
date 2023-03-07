package kotlinx.coroutines.intrinsics;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
/* compiled from: Undispatched.kt */
/* loaded from: classes4.dex */
public final class UndispatchedKt {
    public static final <T> void startCoroutineUndispatched(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            if (function1 != null) {
                Object invoke = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(probeCoroutineCreated);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke != coroutine_suspended) {
                    Result.Companion companion = Result.Companion;
                    probeCoroutineCreated.resumeWith(Result.m1870constructorimpl(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m1870constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <R, T> void startCoroutineUndispatched(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            if (function2 != null) {
                Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, probeCoroutineCreated);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (invoke != coroutine_suspended) {
                    Result.Companion companion = Result.Companion;
                    probeCoroutineCreated.resumeWith(Result.m1870constructorimpl(invoke));
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            probeCoroutineCreated.resumeWith(Result.m1870constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <T, R> Object startUndispatchedOrReturn(ScopeCoroutine<? super T> scopeCoroutine, R r, Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object completedExceptionally;
        Object coroutine_suspended;
        Throwable recoverFromStackFrame;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        try {
        } catch (Throwable th) {
            completedExceptionally = new CompletedExceptionally(th, false, 2, null);
        }
        if (function2 != null) {
            completedExceptionally = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, scopeCoroutine);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (completedExceptionally == coroutine_suspended) {
                coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended3;
            }
            Object makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally);
            if (makeCompletingOnce$kotlinx_coroutines_core == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended2;
            } else if (makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                Throwable th2 = ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
                Continuation<? super T> continuation = scopeCoroutine.uCont;
                if (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) {
                    recoverFromStackFrame = StackTraceRecoveryKt.recoverFromStackFrame(th2, (CoroutineStackFrame) continuation);
                    throw recoverFromStackFrame;
                }
                throw th2;
            } else {
                return JobSupportKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }
}
