package p033j$.lang;

import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
/* renamed from: j$.lang.d */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2726d {
    /* renamed from: a */
    public static Object m696a(ConcurrentMap concurrentMap, Object obj, Function function) {
        Object apply;
        Objects.requireNonNull(function);
        Object obj2 = concurrentMap.get(obj);
        return (obj2 == null && (apply = function.apply(obj)) != null && (obj2 = concurrentMap.putIfAbsent(obj, apply)) == null) ? apply : obj2;
    }

    /* renamed from: b */
    public static void m695b(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    /* renamed from: c */
    public static /* synthetic */ long m694c(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }
}
