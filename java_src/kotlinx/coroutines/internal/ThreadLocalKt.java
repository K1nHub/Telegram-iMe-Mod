package kotlinx.coroutines.internal;
/* compiled from: ThreadLocal.kt */
/* loaded from: classes4.dex */
public final class ThreadLocalKt {
    public static final <T> ThreadLocal<T> commonThreadLocal(Symbol symbol) {
        return new ThreadLocal<>();
    }
}
