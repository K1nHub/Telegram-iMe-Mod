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
        Object m1942constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1948isSuccessimpl(m1942constructorimpl)) {
            Result.Companion companion3 = Result.Companion;
            Class cls = (Class) m1942constructorimpl;
            m1942constructorimpl = Boolean.TRUE;
        }
        Object m1942constructorimpl2 = Result.m1942constructorimpl(m1942constructorimpl);
        Boolean bool = Boolean.FALSE;
        if (Result.m1947isFailureimpl(m1942constructorimpl2)) {
            m1942constructorimpl2 = bool;
        }
        useClassValue = ((Boolean) m1942constructorimpl2).booleanValue();
    }

    public static final <V> CacheByClass<V> createCache(Function1<? super Class<?>, ? extends V> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        return useClassValue ? new ClassValueCache(compute) : new ConcurrentHashMapCache(compute);
    }
}
