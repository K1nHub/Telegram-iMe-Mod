package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2980x2 {

    /* renamed from: a */
    private static final InterfaceC2694A1 f1080a = new C2835Z1(null);

    /* renamed from: b */
    private static final InterfaceC2973w1 f1081b = new C2825X1();

    /* renamed from: c */
    private static final InterfaceC2985y1 f1082c = new C2830Y1();

    /* renamed from: d */
    private static final InterfaceC2961u1 f1083d = new C2820W1();

    /* renamed from: e */
    private static final int[] f1084e = new int[0];

    /* renamed from: f */
    private static final long[] f1085f = new long[0];

    /* renamed from: g */
    private static final double[] f1086g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2949s1 m306d(long j, InterfaceC2662m interfaceC2662m) {
        return (j < 0 || j >= 2147483639) ? new C2956t2() : new C2848b2(j, interfaceC2662m);
    }

    /* renamed from: e */
    public static InterfaceC2694A1 m305e(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m) {
        long mo287q0 = abstractC2986y2.mo287q0(interfaceC2688s);
        if (mo287q0 < 0 || !interfaceC2688s.hasCharacteristics(16384)) {
            InterfaceC2694A1 interfaceC2694A1 = (InterfaceC2694A1) new C2736H1(abstractC2986y2, interfaceC2662m, interfaceC2688s).invoke();
            return z ? m298l(interfaceC2694A1, interfaceC2662m) : interfaceC2694A1;
        } else if (mo287q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2662m.apply((int) mo287q0);
            new C2944r2(interfaceC2688s, abstractC2986y2, objArr).invoke();
            return new C2712D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC2961u1 m304f(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        long mo287q0 = abstractC2986y2.mo287q0(interfaceC2688s);
        if (mo287q0 < 0 || !interfaceC2688s.hasCharacteristics(16384)) {
            InterfaceC2961u1 interfaceC2961u1 = (InterfaceC2961u1) new C2736H1(abstractC2986y2, interfaceC2688s, 0).invoke();
            return z ? m297m(interfaceC2961u1) : interfaceC2961u1;
        } else if (mo287q0 < 2147483639) {
            double[] dArr = new double[(int) mo287q0];
            new C2926o2(interfaceC2688s, abstractC2986y2, dArr).invoke();
            return new C2805T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC2973w1 m303g(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        long mo287q0 = abstractC2986y2.mo287q0(interfaceC2688s);
        if (mo287q0 < 0 || !interfaceC2688s.hasCharacteristics(16384)) {
            InterfaceC2973w1 interfaceC2973w1 = (InterfaceC2973w1) new C2736H1(abstractC2986y2, interfaceC2688s, 1).invoke();
            return z ? m296n(interfaceC2973w1) : interfaceC2973w1;
        } else if (mo287q0 < 2147483639) {
            int[] iArr = new int[(int) mo287q0];
            new C2932p2(interfaceC2688s, abstractC2986y2, iArr).invoke();
            return new C2854c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC2985y1 m302h(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        long mo287q0 = abstractC2986y2.mo287q0(interfaceC2688s);
        if (mo287q0 < 0 || !interfaceC2688s.hasCharacteristics(16384)) {
            InterfaceC2985y1 interfaceC2985y1 = (InterfaceC2985y1) new C2736H1(abstractC2986y2, interfaceC2688s, 2).invoke();
            return z ? m295o(interfaceC2985y1) : interfaceC2985y1;
        } else if (mo287q0 < 2147483639) {
            long[] jArr = new long[(int) mo287q0];
            new C2938q2(interfaceC2688s, abstractC2986y2, jArr).invoke();
            return new C2908l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2694A1 m301i(EnumC2868e4 enumC2868e4, InterfaceC2694A1 interfaceC2694A1, InterfaceC2694A1 interfaceC2694A12) {
        int i = AbstractC2700B1.f695a[enumC2868e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2778O1((InterfaceC2961u1) interfaceC2694A1, (InterfaceC2961u1) interfaceC2694A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2868e4);
                }
                return new C2790Q1((InterfaceC2985y1) interfaceC2694A1, (InterfaceC2985y1) interfaceC2694A12);
            }
            return new C2784P1((InterfaceC2973w1) interfaceC2694A1, (InterfaceC2973w1) interfaceC2694A12);
        }
        return new C2800S1(interfaceC2694A1, interfaceC2694A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2931p1 m300j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2815V1() : new C2810U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2694A1 m299k(EnumC2868e4 enumC2868e4) {
        int i = AbstractC2700B1.f695a[enumC2868e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1083d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2868e4);
                }
                return f1082c;
            }
            return f1081b;
        }
        return f1080a;
    }

    /* renamed from: l */
    public static InterfaceC2694A1 m298l(InterfaceC2694A1 interfaceC2694A1, InterfaceC2662m interfaceC2662m) {
        if (interfaceC2694A1.mo315p() > 0) {
            long count = interfaceC2694A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2662m.apply((int) count);
                new C2968v2(interfaceC2694A1, objArr, 0, (AbstractC2700B1) null).invoke();
                return new C2712D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2694A1;
    }

    /* renamed from: m */
    public static InterfaceC2961u1 m297m(InterfaceC2961u1 interfaceC2961u1) {
        if (interfaceC2961u1.mo315p() > 0) {
            long count = interfaceC2961u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C2962u2(interfaceC2961u1, dArr, 0).invoke();
                return new C2805T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2961u1;
    }

    /* renamed from: n */
    public static InterfaceC2973w1 m296n(InterfaceC2973w1 interfaceC2973w1) {
        if (interfaceC2973w1.mo315p() > 0) {
            long count = interfaceC2973w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C2962u2(interfaceC2973w1, iArr, 0).invoke();
                return new C2854c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2973w1;
    }

    /* renamed from: o */
    public static InterfaceC2985y1 m295o(InterfaceC2985y1 interfaceC2985y1) {
        if (interfaceC2985y1.mo315p() > 0) {
            long count = interfaceC2985y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C2962u2(interfaceC2985y1, jArr, 0).invoke();
                return new C2908l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2985y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2937q1 m294p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2866e2() : new C2860d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2943r1 m293q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2920n2() : new C2914m2(j);
    }
}
