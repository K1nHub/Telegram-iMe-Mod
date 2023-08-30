package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC3006B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2992s m537b(EnumC3172e4 enumC3172e4, InterfaceC2992s interfaceC2992s, long j, long j2) {
        long m535d = m535d(j, j2);
        int i = AbstractC3297z3.f1199a[enumC3172e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3268u4((InterfaceC2992s.InterfaceC2993a) interfaceC2992s, j, m535d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3172e4);
                }
                return new C3292y4((InterfaceC2992s.InterfaceC2995c) interfaceC2992s, j, m535d);
            }
            return new C3280w4((InterfaceC2992s.InterfaceC2994b) interfaceC2992s, j, m535d);
        }
        return new C3013C4(interfaceC2992s, j, m535d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m536c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m535d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m534e(long j) {
        return (j != -1 ? EnumC3166d4.f1019u : 0) | EnumC3166d4.f1018t;
    }

    /* renamed from: f */
    public static InterfaceC3112U m533f(AbstractC3155c abstractC3155c, long j, long j2) {
        if (j >= 0) {
            return new C3291y3(abstractC3155c, EnumC3172e4.DOUBLE_VALUE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m532g(AbstractC3155c abstractC3155c, long j, long j2) {
        if (j >= 0) {
            return new C3255s3(abstractC3155c, EnumC3172e4.INT_VALUE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC3169e1 m531h(AbstractC3155c abstractC3155c, long j, long j2) {
        if (j >= 0) {
            return new C3273v3(abstractC3155c, EnumC3172e4.LONG_VALUE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m530i(AbstractC3155c abstractC3155c, long j, long j2) {
        if (j >= 0) {
            return new C3237p3(abstractC3155c, EnumC3172e4.REFERENCE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
