package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2702B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2688s m514b(EnumC2868e4 enumC2868e4, InterfaceC2688s interfaceC2688s, long j, long j2) {
        long m512d = m512d(j, j2);
        int i = AbstractC2993z3.f1101a[enumC2868e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2964u4((InterfaceC2688s.InterfaceC2689a) interfaceC2688s, j, m512d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2868e4);
                }
                return new C2988y4((InterfaceC2688s.InterfaceC2691c) interfaceC2688s, j, m512d);
            }
            return new C2976w4((InterfaceC2688s.InterfaceC2690b) interfaceC2688s, j, m512d);
        }
        return new C2709C4(interfaceC2688s, j, m512d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m513c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m512d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m511e(long j) {
        return (j != -1 ? EnumC2862d4.f921u : 0) | EnumC2862d4.f920t;
    }

    /* renamed from: f */
    public static InterfaceC2808U m510f(AbstractC2851c abstractC2851c, long j, long j2) {
        if (j >= 0) {
            return new C2987y3(abstractC2851c, EnumC2868e4.DOUBLE_VALUE, m511e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m509g(AbstractC2851c abstractC2851c, long j, long j2) {
        if (j >= 0) {
            return new C2951s3(abstractC2851c, EnumC2868e4.INT_VALUE, m511e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2865e1 m508h(AbstractC2851c abstractC2851c, long j, long j2) {
        if (j >= 0) {
            return new C2969v3(abstractC2851c, EnumC2868e4.LONG_VALUE, m511e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m507i(AbstractC2851c abstractC2851c, long j, long j2) {
        if (j >= 0) {
            return new C2933p3(abstractC2851c, EnumC2868e4.REFERENCE, m511e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
