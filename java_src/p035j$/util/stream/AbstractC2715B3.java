package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2715B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2701s m528b(EnumC2881e4 enumC2881e4, InterfaceC2701s interfaceC2701s, long j, long j2) {
        long m526d = m526d(j, j2);
        int i = AbstractC3006z3.f1106a[enumC2881e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2977u4((InterfaceC2701s.InterfaceC2702a) interfaceC2701s, j, m526d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2881e4);
                }
                return new C3001y4((InterfaceC2701s.InterfaceC2704c) interfaceC2701s, j, m526d);
            }
            return new C2989w4((InterfaceC2701s.InterfaceC2703b) interfaceC2701s, j, m526d);
        }
        return new C2722C4(interfaceC2701s, j, m526d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m527c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m526d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m525e(long j) {
        return (j != -1 ? EnumC2875d4.f926u : 0) | EnumC2875d4.f925t;
    }

    /* renamed from: f */
    public static InterfaceC2821U m524f(AbstractC2864c abstractC2864c, long j, long j2) {
        if (j >= 0) {
            return new C3000y3(abstractC2864c, EnumC2881e4.DOUBLE_VALUE, m525e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m523g(AbstractC2864c abstractC2864c, long j, long j2) {
        if (j >= 0) {
            return new C2964s3(abstractC2864c, EnumC2881e4.INT_VALUE, m525e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2878e1 m522h(AbstractC2864c abstractC2864c, long j, long j2) {
        if (j >= 0) {
            return new C2982v3(abstractC2864c, EnumC2881e4.LONG_VALUE, m525e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m521i(AbstractC2864c abstractC2864c, long j, long j2) {
        if (j >= 0) {
            return new C2946p3(abstractC2864c, EnumC2881e4.REFERENCE, m525e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
