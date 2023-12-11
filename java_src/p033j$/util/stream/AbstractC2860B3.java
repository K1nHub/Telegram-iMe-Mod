package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2860B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Spliterator m583b(EnumC3026e4 enumC3026e4, Spliterator spliterator, long j, long j2) {
        long m581d = m581d(j, j2);
        int i = AbstractC3151z3.f1239a[enumC3026e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3122u4((Spliterator.InterfaceC2773a) spliterator, j, m581d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3026e4);
                }
                return new C3146y4((Spliterator.InterfaceC2775c) spliterator, j, m581d);
            }
            return new C3134w4((Spliterator.InterfaceC2774b) spliterator, j, m581d);
        }
        return new C2867C4(spliterator, j, m581d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m582c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m581d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m580e(long j) {
        return (j != -1 ? EnumC3020d4.f1059u : 0) | EnumC3020d4.f1058t;
    }

    /* renamed from: f */
    public static InterfaceC2966U m579f(AbstractC3009c abstractC3009c, long j, long j2) {
        if (j >= 0) {
            return new C3145y3(abstractC3009c, EnumC3026e4.DOUBLE_VALUE, m580e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m578g(AbstractC3009c abstractC3009c, long j, long j2) {
        if (j >= 0) {
            return new C3109s3(abstractC3009c, EnumC3026e4.INT_VALUE, m580e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC3023e1 m577h(AbstractC3009c abstractC3009c, long j, long j2) {
        if (j >= 0) {
            return new C3127v3(abstractC3009c, EnumC3026e4.LONG_VALUE, m580e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m576i(AbstractC3009c abstractC3009c, long j, long j2) {
        if (j >= 0) {
            return new C3091p3(abstractC3009c, EnumC3026e4.REFERENCE, m580e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
