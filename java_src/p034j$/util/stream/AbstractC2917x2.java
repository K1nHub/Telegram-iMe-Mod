package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2917x2 {

    /* renamed from: a */
    private static final InterfaceC2631A1 f1080a = new C2772Z1(null);

    /* renamed from: b */
    private static final InterfaceC2910w1 f1081b = new C2762X1();

    /* renamed from: c */
    private static final InterfaceC2922y1 f1082c = new C2767Y1();

    /* renamed from: d */
    private static final InterfaceC2898u1 f1083d = new C2757W1();

    /* renamed from: e */
    private static final int[] f1084e = new int[0];

    /* renamed from: f */
    private static final long[] f1085f = new long[0];

    /* renamed from: g */
    private static final double[] f1086g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2886s1 m325d(long j, InterfaceC2599m interfaceC2599m) {
        return (j < 0 || j >= 2147483639) ? new C2893t2() : new C2785b2(j, interfaceC2599m);
    }

    /* renamed from: e */
    public static InterfaceC2631A1 m324e(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m) {
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 < 0 || !interfaceC2625s.hasCharacteristics(16384)) {
            InterfaceC2631A1 interfaceC2631A1 = (InterfaceC2631A1) new C2673H1(abstractC2923y2, interfaceC2599m, interfaceC2625s).invoke();
            return z ? m317l(interfaceC2631A1, interfaceC2599m) : interfaceC2631A1;
        } else if (mo306q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2599m.apply((int) mo306q0);
            new C2881r2(interfaceC2625s, abstractC2923y2, objArr).invoke();
            return new C2649D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC2898u1 m323f(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 < 0 || !interfaceC2625s.hasCharacteristics(16384)) {
            InterfaceC2898u1 interfaceC2898u1 = (InterfaceC2898u1) new C2673H1(abstractC2923y2, interfaceC2625s, 0).invoke();
            return z ? m316m(interfaceC2898u1) : interfaceC2898u1;
        } else if (mo306q0 < 2147483639) {
            double[] dArr = new double[(int) mo306q0];
            new C2863o2(interfaceC2625s, abstractC2923y2, dArr).invoke();
            return new C2742T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC2910w1 m322g(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 < 0 || !interfaceC2625s.hasCharacteristics(16384)) {
            InterfaceC2910w1 interfaceC2910w1 = (InterfaceC2910w1) new C2673H1(abstractC2923y2, interfaceC2625s, 1).invoke();
            return z ? m315n(interfaceC2910w1) : interfaceC2910w1;
        } else if (mo306q0 < 2147483639) {
            int[] iArr = new int[(int) mo306q0];
            new C2869p2(interfaceC2625s, abstractC2923y2, iArr).invoke();
            return new C2791c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC2922y1 m321h(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 < 0 || !interfaceC2625s.hasCharacteristics(16384)) {
            InterfaceC2922y1 interfaceC2922y1 = (InterfaceC2922y1) new C2673H1(abstractC2923y2, interfaceC2625s, 2).invoke();
            return z ? m314o(interfaceC2922y1) : interfaceC2922y1;
        } else if (mo306q0 < 2147483639) {
            long[] jArr = new long[(int) mo306q0];
            new C2875q2(interfaceC2625s, abstractC2923y2, jArr).invoke();
            return new C2845l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2631A1 m320i(EnumC2805e4 enumC2805e4, InterfaceC2631A1 interfaceC2631A1, InterfaceC2631A1 interfaceC2631A12) {
        int i = AbstractC2637B1.f695a[enumC2805e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2715O1((InterfaceC2898u1) interfaceC2631A1, (InterfaceC2898u1) interfaceC2631A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2805e4);
                }
                return new C2727Q1((InterfaceC2922y1) interfaceC2631A1, (InterfaceC2922y1) interfaceC2631A12);
            }
            return new C2721P1((InterfaceC2910w1) interfaceC2631A1, (InterfaceC2910w1) interfaceC2631A12);
        }
        return new C2737S1(interfaceC2631A1, interfaceC2631A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2868p1 m319j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2752V1() : new C2747U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2631A1 m318k(EnumC2805e4 enumC2805e4) {
        int i = AbstractC2637B1.f695a[enumC2805e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1083d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2805e4);
                }
                return f1082c;
            }
            return f1081b;
        }
        return f1080a;
    }

    /* renamed from: l */
    public static InterfaceC2631A1 m317l(InterfaceC2631A1 interfaceC2631A1, InterfaceC2599m interfaceC2599m) {
        if (interfaceC2631A1.mo334p() > 0) {
            long count = interfaceC2631A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2599m.apply((int) count);
                new C2905v2(interfaceC2631A1, objArr, 0, (AbstractC2637B1) null).invoke();
                return new C2649D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2631A1;
    }

    /* renamed from: m */
    public static InterfaceC2898u1 m316m(InterfaceC2898u1 interfaceC2898u1) {
        if (interfaceC2898u1.mo334p() > 0) {
            long count = interfaceC2898u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C2899u2(interfaceC2898u1, dArr, 0).invoke();
                return new C2742T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2898u1;
    }

    /* renamed from: n */
    public static InterfaceC2910w1 m315n(InterfaceC2910w1 interfaceC2910w1) {
        if (interfaceC2910w1.mo334p() > 0) {
            long count = interfaceC2910w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C2899u2(interfaceC2910w1, iArr, 0).invoke();
                return new C2791c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2910w1;
    }

    /* renamed from: o */
    public static InterfaceC2922y1 m314o(InterfaceC2922y1 interfaceC2922y1) {
        if (interfaceC2922y1.mo334p() > 0) {
            long count = interfaceC2922y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C2899u2(interfaceC2922y1, jArr, 0).invoke();
                return new C2845l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2922y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2874q1 m313p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2803e2() : new C2797d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2880r1 m312q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2857n2() : new C2851m2(j);
    }
}
