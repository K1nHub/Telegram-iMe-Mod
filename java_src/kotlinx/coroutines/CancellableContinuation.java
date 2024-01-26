package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
/* compiled from: CancellableContinuation.kt */
/* loaded from: classes4.dex */
public interface CancellableContinuation<T> extends Continuation<T> {
    void completeResume(Object obj);

    void invokeOnCancellation(Function1<? super Throwable, Unit> function1);

    boolean isActive();

    boolean isCancelled();

    void resume(T t, Function1<? super Throwable, Unit> function1);

    void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t);

    Object tryResume(T t, Object obj, Function1<? super Throwable, Unit> function1);
}
