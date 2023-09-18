package kotlin.coroutines;
/* compiled from: Continuation.kt */
/* loaded from: classes6.dex */
public interface Continuation<T> {
    CoroutineContext getContext();

    void resumeWith(Object obj);
}
