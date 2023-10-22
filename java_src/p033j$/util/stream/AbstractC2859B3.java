package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.B3 */
/* loaded from: classes2.dex */
abstract class AbstractC2859B3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Spliterator m582b(EnumC3025e4 enumC3025e4, Spliterator spliterator, long j, long j2) {
        long m580d = m580d(j, j2);
        int i = AbstractC3150z3.f1239a[enumC3025e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3121u4((Spliterator.InterfaceC2772a) spliterator, j, m580d);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3025e4);
                }
                return new C3145y4((Spliterator.InterfaceC2774c) spliterator, j, m580d);
            }
            return new C3133w4((Spliterator.InterfaceC2773b) spliterator, j, m580d);
        }
        return new C2866C4(spliterator, j, m580d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m581c(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m580d(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: e */
    private static int m579e(long j) {
        return (j != -1 ? EnumC3019d4.f1059u : 0) | EnumC3019d4.f1058t;
    }

    /* renamed from: f */
    public static InterfaceC2965U m578f(AbstractC3008c abstractC3008c, long j, long j2) {
        if (j >= 0) {
            return new C3144y3(abstractC3008c, EnumC3025e4.DOUBLE_VALUE, m579e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: g */
    public static IntStream m577g(AbstractC3008c abstractC3008c, long j, long j2) {
        if (j >= 0) {
            return new C3108s3(abstractC3008c, EnumC3025e4.INT_VALUE, m579e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: h */
    public static InterfaceC3022e1 m576h(AbstractC3008c abstractC3008c, long j, long j2) {
        if (j >= 0) {
            return new C3126v3(abstractC3008c, EnumC3025e4.LONG_VALUE, m579e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    /* renamed from: i */
    public static Stream m575i(AbstractC3008c abstractC3008c, long j, long j2) {
        if (j >= 0) {
            return new C3090p3(abstractC3008c, EnumC3025e4.REFERENCE, m579e(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }
}
