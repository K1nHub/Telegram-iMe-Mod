package kotlin.reflect.jvm.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CacheByClass.kt */
/* loaded from: classes4.dex */
public final class CacheByClassKt {
    private static final boolean useClassValue;

    static {
        Object m1940constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1940constructorimpl = Result.m1940constructorimpl(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1940constructorimpl = Result.m1940constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1946isSuccessimpl(m1940constructorimpl)) {
            Result.Companion companion3 = Result.Companion;
            Class cls = (Class) m1940constructorimpl;
            m1940constructorimpl = Boolean.TRUE;
        }
        Object m1940constructorimpl2 = Result.m1940constructorimpl(m1940constructorimpl);
        Boolean bool = Boolean.FALSE;
        if (Result.m1945isFailureimpl(m1940constructorimpl2)) {
            m1940constructorimpl2 = bool;
        }
        useClassValue = ((Boolean) m1940constructorimpl2).booleanValue();
    }

    public static final <V> CacheByClass<V> createCache(Function1<? super Class<?>, ? extends V> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        return useClassValue ? new ClassValueCache(compute) : new ConcurrentHashMapCache(compute);
    }
}
