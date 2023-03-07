package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2501B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2487s m534b(EnumC2667e4 enumC2667e4, InterfaceC2487s interfaceC2487s, long j, long j2) {
        long m532d = m532d(j, j2);
        int i = AbstractC2792z3.f1095a[enumC2667e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2763u4((InterfaceC2487s.InterfaceC2488a) interfaceC2487s, j, m532d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2667e4);
                }
                return new C2787y4((InterfaceC2487s.InterfaceC2490c) interfaceC2487s, j, m532d);
            }
            return new C2775w4((InterfaceC2487s.InterfaceC2489b) interfaceC2487s, j, m532d);
        }
        return new C2508C4(interfaceC2487s, j, m532d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m533c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m532d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m531e(long j) {
        return (j != -1 ? EnumC2661d4.f915u : 0) | EnumC2661d4.f914t;
    }

    /* renamed from: f */
    public static InterfaceC2607U m530f(AbstractC2650c abstractC2650c, long j, long j2) {
        if (j >= 0) {
            return new C2786y3(abstractC2650c, EnumC2667e4.DOUBLE_VALUE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m529g(AbstractC2650c abstractC2650c, long j, long j2) {
        if (j >= 0) {
            return new C2750s3(abstractC2650c, EnumC2667e4.INT_VALUE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2664e1 m528h(AbstractC2650c abstractC2650c, long j, long j2) {
        if (j >= 0) {
            return new C2768v3(abstractC2650c, EnumC2667e4.LONG_VALUE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m527i(AbstractC2650c abstractC2650c, long j, long j2) {
        if (j >= 0) {
            return new C2732p3(abstractC2650c, EnumC2667e4.REFERENCE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
