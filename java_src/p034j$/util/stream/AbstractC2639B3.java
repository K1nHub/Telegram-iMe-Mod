package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2639B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2625s m533b(EnumC2805e4 enumC2805e4, InterfaceC2625s interfaceC2625s, long j, long j2) {
        long m531d = m531d(j, j2);
        int i = AbstractC2930z3.f1101a[enumC2805e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2901u4((InterfaceC2625s.InterfaceC2626a) interfaceC2625s, j, m531d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2805e4);
                }
                return new C2925y4((InterfaceC2625s.InterfaceC2628c) interfaceC2625s, j, m531d);
            }
            return new C2913w4((InterfaceC2625s.InterfaceC2627b) interfaceC2625s, j, m531d);
        }
        return new C2646C4(interfaceC2625s, j, m531d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m532c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m531d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m530e(long j) {
        return (j != -1 ? EnumC2799d4.f921u : 0) | EnumC2799d4.f920t;
    }

    /* renamed from: f */
    public static InterfaceC2745U m529f(AbstractC2788c abstractC2788c, long j, long j2) {
        if (j >= 0) {
            return new C2924y3(abstractC2788c, EnumC2805e4.DOUBLE_VALUE, m530e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m528g(AbstractC2788c abstractC2788c, long j, long j2) {
        if (j >= 0) {
            return new C2888s3(abstractC2788c, EnumC2805e4.INT_VALUE, m530e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2802e1 m527h(AbstractC2788c abstractC2788c, long j, long j2) {
        if (j >= 0) {
            return new C2906v3(abstractC2788c, EnumC2805e4.LONG_VALUE, m530e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m526i(AbstractC2788c abstractC2788c, long j, long j2) {
        if (j >= 0) {
            return new C2870p3(abstractC2788c, EnumC2805e4.REFERENCE, m530e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
