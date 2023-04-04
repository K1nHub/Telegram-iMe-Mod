package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2867B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static InterfaceC2853s m519b(EnumC3033e4 enumC3033e4, InterfaceC2853s interfaceC2853s, long j, long j2) {
        long m517d = m517d(j, j2);
        int i = AbstractC3158z3.f1186a[enumC3033e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3129u4((InterfaceC2853s.InterfaceC2854a) interfaceC2853s, j, m517d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3033e4);
                }
                return new C3153y4((InterfaceC2853s.InterfaceC2856c) interfaceC2853s, j, m517d);
            }
            return new C3141w4((InterfaceC2853s.InterfaceC2855b) interfaceC2853s, j, m517d);
        }
        return new C2874C4(interfaceC2853s, j, m517d);
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
        return (j != -1 ? EnumC3027d4.f1006u : 0) | EnumC3027d4.f1005t;
    }

    /* renamed from: f */
    public static InterfaceC2973U m515f(AbstractC3016c abstractC3016c, long j, long j2) {
        if (j >= 0) {
            return new C3152y3(abstractC3016c, EnumC3033e4.DOUBLE_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m514g(AbstractC3016c abstractC3016c, long j, long j2) {
        if (j >= 0) {
            return new C3116s3(abstractC3016c, EnumC3033e4.INT_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC3030e1 m513h(AbstractC3016c abstractC3016c, long j, long j2) {
        if (j >= 0) {
            return new C3134v3(abstractC3016c, EnumC3033e4.LONG_VALUE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m512i(AbstractC3016c abstractC3016c, long j, long j2) {
        if (j >= 0) {
            return new C3098p3(abstractC3016c, EnumC3033e4.REFERENCE, m516e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}