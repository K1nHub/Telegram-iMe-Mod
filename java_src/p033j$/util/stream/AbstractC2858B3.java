package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2858B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Spliterator m586b(EnumC3024e4 enumC3024e4, Spliterator spliterator, long j, long j2) {
        long m584d = m584d(j, j2);
        int i = AbstractC3149z3.f1239a[enumC3024e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3120u4((Spliterator.InterfaceC2771a) spliterator, j, m584d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3024e4);
                }
                return new C3144y4((Spliterator.InterfaceC2773c) spliterator, j, m584d);
            }
            return new C3132w4((Spliterator.InterfaceC2772b) spliterator, j, m584d);
        }
        return new C2865C4(spliterator, j, m584d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m585c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m584d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m583e(long j) {
        return (j != -1 ? EnumC3018d4.f1059u : 0) | EnumC3018d4.f1058t;
    }

    /* renamed from: f */
    public static InterfaceC2964U m582f(AbstractC3007c abstractC3007c, long j, long j2) {
        if (j >= 0) {
            return new C3143y3(abstractC3007c, EnumC3024e4.DOUBLE_VALUE, m583e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m581g(AbstractC3007c abstractC3007c, long j, long j2) {
        if (j >= 0) {
            return new C3107s3(abstractC3007c, EnumC3024e4.INT_VALUE, m583e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC3021e1 m580h(AbstractC3007c abstractC3007c, long j, long j2) {
        if (j >= 0) {
            return new C3125v3(abstractC3007c, EnumC3024e4.LONG_VALUE, m583e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m579i(AbstractC3007c abstractC3007c, long j, long j2) {
        if (j >= 0) {
            return new C3089p3(abstractC3007c, EnumC3024e4.REFERENCE, m583e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
