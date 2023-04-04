package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2993x2 {

    /* renamed from: a */
    private static final InterfaceC2707A1 f1085a = new C2848Z1(null);

    /* renamed from: b */
    private static final InterfaceC2986w1 f1086b = new C2838X1();

    /* renamed from: c */
    private static final InterfaceC2998y1 f1087c = new C2843Y1();

    /* renamed from: d */
    private static final InterfaceC2974u1 f1088d = new C2833W1();

    /* renamed from: e */
    private static final int[] f1089e = new int[0];

    /* renamed from: f */
    private static final long[] f1090f = new long[0];

    /* renamed from: g */
    private static final double[] f1091g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2962s1 m320d(long j, InterfaceC2675m interfaceC2675m) {
        return (j < 0 || j >= 2147483639) ? new C2969t2() : new C2861b2(j, interfaceC2675m);
    }

    /* renamed from: e */
    public static InterfaceC2707A1 m319e(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m) {
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 < 0 || !interfaceC2701s.hasCharacteristics(16384)) {
            InterfaceC2707A1 interfaceC2707A1 = (InterfaceC2707A1) new C2749H1(abstractC2999y2, interfaceC2675m, interfaceC2701s).invoke();
            return z ? m312l(interfaceC2707A1, interfaceC2675m) : interfaceC2707A1;
        } else if (mo301q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2675m.apply((int) mo301q0);
            new C2957r2(interfaceC2701s, abstractC2999y2, objArr).invoke();
            return new C2725D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC2974u1 m318f(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 < 0 || !interfaceC2701s.hasCharacteristics(16384)) {
            InterfaceC2974u1 interfaceC2974u1 = (InterfaceC2974u1) new C2749H1(abstractC2999y2, interfaceC2701s, 0).invoke();
            return z ? m311m(interfaceC2974u1) : interfaceC2974u1;
        } else if (mo301q0 < 2147483639) {
            double[] dArr = new double[(int) mo301q0];
            new C2939o2(interfaceC2701s, abstractC2999y2, dArr).invoke();
            return new C2818T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC2986w1 m317g(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 < 0 || !interfaceC2701s.hasCharacteristics(16384)) {
            InterfaceC2986w1 interfaceC2986w1 = (InterfaceC2986w1) new C2749H1(abstractC2999y2, interfaceC2701s, 1).invoke();
            return z ? m310n(interfaceC2986w1) : interfaceC2986w1;
        } else if (mo301q0 < 2147483639) {
            int[] iArr = new int[(int) mo301q0];
            new C2945p2(interfaceC2701s, abstractC2999y2, iArr).invoke();
            return new C2867c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC2998y1 m316h(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 < 0 || !interfaceC2701s.hasCharacteristics(16384)) {
            InterfaceC2998y1 interfaceC2998y1 = (InterfaceC2998y1) new C2749H1(abstractC2999y2, interfaceC2701s, 2).invoke();
            return z ? m309o(interfaceC2998y1) : interfaceC2998y1;
        } else if (mo301q0 < 2147483639) {
            long[] jArr = new long[(int) mo301q0];
            new C2951q2(interfaceC2701s, abstractC2999y2, jArr).invoke();
            return new C2921l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2707A1 m315i(EnumC2881e4 enumC2881e4, InterfaceC2707A1 interfaceC2707A1, InterfaceC2707A1 interfaceC2707A12) {
        int i = AbstractC2713B1.f700a[enumC2881e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2791O1((InterfaceC2974u1) interfaceC2707A1, (InterfaceC2974u1) interfaceC2707A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2881e4);
                }
                return new C2803Q1((InterfaceC2998y1) interfaceC2707A1, (InterfaceC2998y1) interfaceC2707A12);
            }
            return new C2797P1((InterfaceC2986w1) interfaceC2707A1, (InterfaceC2986w1) interfaceC2707A12);
        }
        return new C2813S1(interfaceC2707A1, interfaceC2707A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2944p1 m314j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2828V1() : new C2823U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2707A1 m313k(EnumC2881e4 enumC2881e4) {
        int i = AbstractC2713B1.f700a[enumC2881e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1088d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2881e4);
                }
                return f1087c;
            }
            return f1086b;
        }
        return f1085a;
    }

    /* renamed from: l */
    public static InterfaceC2707A1 m312l(InterfaceC2707A1 interfaceC2707A1, InterfaceC2675m interfaceC2675m) {
        if (interfaceC2707A1.mo329p() > 0) {
            long count = interfaceC2707A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2675m.apply((int) count);
                new C2981v2(interfaceC2707A1, objArr, 0, (AbstractC2713B1) null).invoke();
                return new C2725D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2707A1;
    }

    /* renamed from: m */
    public static InterfaceC2974u1 m311m(InterfaceC2974u1 interfaceC2974u1) {
        if (interfaceC2974u1.mo329p() > 0) {
            long count = interfaceC2974u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C2975u2(interfaceC2974u1, dArr, 0).invoke();
                return new C2818T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2974u1;
    }

    /* renamed from: n */
    public static InterfaceC2986w1 m310n(InterfaceC2986w1 interfaceC2986w1) {
        if (interfaceC2986w1.mo329p() > 0) {
            long count = interfaceC2986w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C2975u2(interfaceC2986w1, iArr, 0).invoke();
                return new C2867c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2986w1;
    }

    /* renamed from: o */
    public static InterfaceC2998y1 m309o(InterfaceC2998y1 interfaceC2998y1) {
        if (interfaceC2998y1.mo329p() > 0) {
            long count = interfaceC2998y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C2975u2(interfaceC2998y1, jArr, 0).invoke();
                return new C2921l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2998y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2950q1 m308p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2879e2() : new C2873d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2956r1 m307q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2933n2() : new C2927m2(j);
    }
}
