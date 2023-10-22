package p033j$.lang;

import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
/* renamed from: j$.lang.d */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2669d {
    /* renamed from: a */
    public static Object m991a(ConcurrentMap concurrentMap, Object obj, Function function) {
        Object apply;
        Objects.requireNonNull(function);
        Object obj2 = concurrentMap.get(obj);
        return (obj2 == null && (apply = function.apply(obj)) != null && (obj2 = concurrentMap.putIfAbsent(obj, apply)) == null) ? apply : obj2;
    }

    /* renamed from: b */
    public static void m990b(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    /* renamed from: c */
    public static /* synthetic */ long m989c(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    /* renamed from: d */
    public static /* synthetic */ long m988d(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    /* renamed from: e */
    public static /* synthetic */ long m987e(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    /* renamed from: f */
    public static /* synthetic */ long m986f(long j, long j2) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if ((j2 != Long.MIN_VALUE) | (i >= 0)) {
                long j3 = j * j2;
                if (i == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    /* renamed from: g */
    public static /* synthetic */ long m985g(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }
}
