package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2922B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2908s m537b(EnumC3088e4 enumC3088e4, InterfaceC2908s interfaceC2908s, long j, long j2) {
        long m535d = m535d(j, j2);
        int i = AbstractC3213z3.f1190a[enumC3088e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3184u4((InterfaceC2908s.InterfaceC2909a) interfaceC2908s, j, m535d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3088e4);
                }
                return new C3208y4((InterfaceC2908s.InterfaceC2911c) interfaceC2908s, j, m535d);
            }
            return new C3196w4((InterfaceC2908s.InterfaceC2910b) interfaceC2908s, j, m535d);
        }
        return new C2929C4(interfaceC2908s, j, m535d);
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
        return (j != -1 ? EnumC3082d4.f1010u : 0) | EnumC3082d4.f1009t;
    }

    /* renamed from: f */
    public static InterfaceC3028U m533f(AbstractC3071c abstractC3071c, long j, long j2) {
        if (j >= 0) {
            return new C3207y3(abstractC3071c, EnumC3088e4.DOUBLE_VALUE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m532g(AbstractC3071c abstractC3071c, long j, long j2) {
        if (j >= 0) {
            return new C3171s3(abstractC3071c, EnumC3088e4.INT_VALUE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC3085e1 m531h(AbstractC3071c abstractC3071c, long j, long j2) {
        if (j >= 0) {
            return new C3189v3(abstractC3071c, EnumC3088e4.LONG_VALUE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m530i(AbstractC3071c abstractC3071c, long j, long j2) {
        if (j >= 0) {
            return new C3153p3(abstractC3071c, EnumC3088e4.REFERENCE, m534e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
