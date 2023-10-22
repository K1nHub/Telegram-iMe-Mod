package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: DeepRecursive.kt */
/* loaded from: classes4.dex */
public abstract class DeepRecursiveScope<T, R> {
    public /* synthetic */ DeepRecursiveScope(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract Object callRecursive(T t, Continuation<? super R> continuation);

    private DeepRecursiveScope() {
    }
}
