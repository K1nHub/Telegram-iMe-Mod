package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2625B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2611s m534b(EnumC2791e4 enumC2791e4, InterfaceC2611s interfaceC2611s, long j, long j2) {
        long m532d = m532d(j, j2);
        int i = AbstractC2916z3.f1100a[enumC2791e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2887u4((InterfaceC2611s.InterfaceC2612a) interfaceC2611s, j, m532d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2791e4);
                }
                return new C2911y4((InterfaceC2611s.InterfaceC2614c) interfaceC2611s, j, m532d);
            }
            return new C2899w4((InterfaceC2611s.InterfaceC2613b) interfaceC2611s, j, m532d);
        }
        return new C2632C4(interfaceC2611s, j, m532d);
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
        return (j != -1 ? EnumC2785d4.f920u : 0) | EnumC2785d4.f919t;
    }

    /* renamed from: f */
    public static InterfaceC2731U m530f(AbstractC2774c abstractC2774c, long j, long j2) {
        if (j >= 0) {
            return new C2910y3(abstractC2774c, EnumC2791e4.DOUBLE_VALUE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m529g(AbstractC2774c abstractC2774c, long j, long j2) {
        if (j >= 0) {
            return new C2874s3(abstractC2774c, EnumC2791e4.INT_VALUE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2788e1 m528h(AbstractC2774c abstractC2774c, long j, long j2) {
        if (j >= 0) {
            return new C2892v3(abstractC2774c, EnumC2791e4.LONG_VALUE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m527i(AbstractC2774c abstractC2774c, long j, long j2) {
        if (j >= 0) {
            return new C2856p3(abstractC2774c, EnumC2791e4.REFERENCE, m531e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
