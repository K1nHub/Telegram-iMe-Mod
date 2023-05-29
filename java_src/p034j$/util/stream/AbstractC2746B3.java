package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2746B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2732s m519b(EnumC2912e4 enumC2912e4, InterfaceC2732s interfaceC2732s, long j, long j2) {
        long m517d = m517d(j, j2);
        int i = AbstractC3037z3.f1104a[enumC2912e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3008u4((InterfaceC2732s.InterfaceC2733a) interfaceC2732s, j, m517d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2912e4);
                }
                return new C3032y4((InterfaceC2732s.InterfaceC2735c) interfaceC2732s, j, m517d);
            }
            return new C3020w4((InterfaceC2732s.InterfaceC2734b) interfaceC2732s, j, m517d);
        }
        return new C2753C4(interfaceC2732s, j, m517d);
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
        return (j != -1 ? EnumC2906d4.f924u : 0) | EnumC2906d4.f923t;
    }

    /* renamed from: f */
    public static InterfaceC2852U m515f(AbstractC2895c abstractC2895c, long j, long j2) {
        if (j >= 0) {
            return new C3031y3(abstractC2895c, EnumC2912e4.DOUBLE_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m514g(AbstractC2895c abstractC2895c, long j, long j2) {
        if (j >= 0) {
            return new C2995s3(abstractC2895c, EnumC2912e4.INT_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC2909e1 m513h(AbstractC2895c abstractC2895c, long j, long j2) {
        if (j >= 0) {
            return new C3013v3(abstractC2895c, EnumC2912e4.LONG_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m512i(AbstractC2895c abstractC2895c, long j, long j2) {
        if (j >= 0) {
            return new C2977p3(abstractC2895c, EnumC2912e4.REFERENCE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
