package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2741B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2727s m519b(EnumC2907e4 enumC2907e4, InterfaceC2727s interfaceC2727s, long j, long j2) {
        long m517d = m517d(j, j2);
        int i = AbstractC3032z3.f1104a[enumC2907e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3003u4((InterfaceC2727s.InterfaceC2728a) interfaceC2727s, j, m517d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2907e4);
                }
                return new C3027y4((InterfaceC2727s.InterfaceC2730c) interfaceC2727s, j, m517d);
            }
            return new C3015w4((InterfaceC2727s.InterfaceC2729b) interfaceC2727s, j, m517d);
        }
        return new C2748C4(interfaceC2727s, j, m517d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m518c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m517d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m516e(long j) {
        return (j != -1 ? EnumC2901d4.f924u : 0) | EnumC2901d4.f923t;
    }

    /* renamed from: f */
    public static InterfaceC2847U m515f(AbstractC2890c abstractC2890c, long j, long j2) {
        if (j >= 0) {
            return new C3026y3(abstractC2890c, EnumC2907e4.DOUBLE_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m514g(AbstractC2890c abstractC2890c, long j, long j2) {
        if (j >= 0) {
            return new C2990s3(abstractC2890c, EnumC2907e4.INT_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2904e1 m513h(AbstractC2890c abstractC2890c, long j, long j2) {
        if (j >= 0) {
            return new C3008v3(abstractC2890c, EnumC2907e4.LONG_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m512i(AbstractC2890c abstractC2890c, long j, long j2) {
        if (j >= 0) {
            return new C2972p3(abstractC2890c, EnumC2907e4.REFERENCE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
