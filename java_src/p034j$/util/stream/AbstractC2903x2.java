package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2903x2 {

    /* renamed from: a */
    private static final InterfaceC2617A1 f1079a = new C2758Z1(null);

    /* renamed from: b */
    private static final InterfaceC2896w1 f1080b = new C2748X1();

    /* renamed from: c */
    private static final InterfaceC2908y1 f1081c = new C2753Y1();

    /* renamed from: d */
    private static final InterfaceC2884u1 f1082d = new C2743W1();

    /* renamed from: e */
    private static final int[] f1083e = new int[0];

    /* renamed from: f */
    private static final long[] f1084f = new long[0];

    /* renamed from: g */
    private static final double[] f1085g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2872s1 m326d(long j, InterfaceC2585m interfaceC2585m) {
        return (j < 0 || j >= 2147483639) ? new C2879t2() : new C2771b2(j, interfaceC2585m);
    }

    /* renamed from: e */
    public static InterfaceC2617A1 m325e(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m) {
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 < 0 || !interfaceC2611s.hasCharacteristics(16384)) {
            InterfaceC2617A1 interfaceC2617A1 = (InterfaceC2617A1) new C2659H1(abstractC2909y2, interfaceC2585m, interfaceC2611s).invoke();
            return z ? m318l(interfaceC2617A1, interfaceC2585m) : interfaceC2617A1;
        } else if (mo307q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2585m.apply((int) mo307q0);
            new C2867r2(interfaceC2611s, abstractC2909y2, objArr).invoke();
            return new C2635D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC2884u1 m324f(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 < 0 || !interfaceC2611s.hasCharacteristics(16384)) {
            InterfaceC2884u1 interfaceC2884u1 = (InterfaceC2884u1) new C2659H1(abstractC2909y2, interfaceC2611s, 0).invoke();
            return z ? m317m(interfaceC2884u1) : interfaceC2884u1;
        } else if (mo307q0 < 2147483639) {
            double[] dArr = new double[(int) mo307q0];
            new C2849o2(interfaceC2611s, abstractC2909y2, dArr).invoke();
            return new C2728T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC2896w1 m323g(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 < 0 || !interfaceC2611s.hasCharacteristics(16384)) {
            InterfaceC2896w1 interfaceC2896w1 = (InterfaceC2896w1) new C2659H1(abstractC2909y2, interfaceC2611s, 1).invoke();
            return z ? m316n(interfaceC2896w1) : interfaceC2896w1;
        } else if (mo307q0 < 2147483639) {
            int[] iArr = new int[(int) mo307q0];
            new C2855p2(interfaceC2611s, abstractC2909y2, iArr).invoke();
            return new C2777c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC2908y1 m322h(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 < 0 || !interfaceC2611s.hasCharacteristics(16384)) {
            InterfaceC2908y1 interfaceC2908y1 = (InterfaceC2908y1) new C2659H1(abstractC2909y2, interfaceC2611s, 2).invoke();
            return z ? m315o(interfaceC2908y1) : interfaceC2908y1;
        } else if (mo307q0 < 2147483639) {
            long[] jArr = new long[(int) mo307q0];
            new C2861q2(interfaceC2611s, abstractC2909y2, jArr).invoke();
            return new C2831l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2617A1 m321i(EnumC2791e4 enumC2791e4, InterfaceC2617A1 interfaceC2617A1, InterfaceC2617A1 interfaceC2617A12) {
        int i = AbstractC2623B1.f694a[enumC2791e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2701O1((InterfaceC2884u1) interfaceC2617A1, (InterfaceC2884u1) interfaceC2617A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2791e4);
                }
                return new C2713Q1((InterfaceC2908y1) interfaceC2617A1, (InterfaceC2908y1) interfaceC2617A12);
            }
            return new C2707P1((InterfaceC2896w1) interfaceC2617A1, (InterfaceC2896w1) interfaceC2617A12);
        }
        return new C2723S1(interfaceC2617A1, interfaceC2617A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2854p1 m320j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2738V1() : new C2733U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2617A1 m319k(EnumC2791e4 enumC2791e4) {
        int i = AbstractC2623B1.f694a[enumC2791e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1082d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2791e4);
                }
                return f1081c;
            }
            return f1080b;
        }
        return f1079a;
    }

    /* renamed from: l */
    public static InterfaceC2617A1 m318l(InterfaceC2617A1 interfaceC2617A1, InterfaceC2585m interfaceC2585m) {
        if (interfaceC2617A1.mo335p() > 0) {
            long count = interfaceC2617A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2585m.apply((int) count);
                new C2891v2(interfaceC2617A1, objArr, 0, (AbstractC2623B1) null).invoke();
                return new C2635D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2617A1;
    }

    /* renamed from: m */
    public static InterfaceC2884u1 m317m(InterfaceC2884u1 interfaceC2884u1) {
        if (interfaceC2884u1.mo335p() > 0) {
            long count = interfaceC2884u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C2885u2(interfaceC2884u1, dArr, 0).invoke();
                return new C2728T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2884u1;
    }

    /* renamed from: n */
    public static InterfaceC2896w1 m316n(InterfaceC2896w1 interfaceC2896w1) {
        if (interfaceC2896w1.mo335p() > 0) {
            long count = interfaceC2896w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C2885u2(interfaceC2896w1, iArr, 0).invoke();
                return new C2777c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2896w1;
    }

    /* renamed from: o */
    public static InterfaceC2908y1 m315o(InterfaceC2908y1 interfaceC2908y1) {
        if (interfaceC2908y1.mo335p() > 0) {
            long count = interfaceC2908y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C2885u2(interfaceC2908y1, jArr, 0).invoke();
                return new C2831l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2908y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2860q1 m314p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2789e2() : new C2783d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2866r1 m313q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2843n2() : new C2837m2(j);
    }
}
