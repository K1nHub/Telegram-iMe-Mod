package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3145x2 {

    /* renamed from: a */
    private static final InterfaceC2859A1 f1168a = new C3000Z1(null);

    /* renamed from: b */
    private static final InterfaceC3138w1 f1169b = new C2990X1();

    /* renamed from: c */
    private static final InterfaceC3150y1 f1170c = new C2995Y1();

    /* renamed from: d */
    private static final InterfaceC3126u1 f1171d = new C2985W1();

    /* renamed from: e */
    private static final int[] f1172e = new int[0];

    /* renamed from: f */
    private static final long[] f1173f = new long[0];

    /* renamed from: g */
    private static final double[] f1174g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3114s1 m329d(long j, InterfaceC2827m interfaceC2827m) {
        return (j < 0 || j >= 2147483639) ? new C3121t2() : new C3013b2(j, interfaceC2827m);
    }

    /* renamed from: e */
    public static InterfaceC2859A1 m328e(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 < 0 || !interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC2859A1 interfaceC2859A1 = (InterfaceC2859A1) new C2901H1(abstractC3151y2, interfaceC2827m, interfaceC2853s).invoke();
            return z ? m321l(interfaceC2859A1, interfaceC2827m) : interfaceC2859A1;
        } else if (mo310q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2827m.apply((int) mo310q0);
            new C3109r2(interfaceC2853s, abstractC3151y2, objArr).invoke();
            return new C2877D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3126u1 m327f(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 < 0 || !interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC3126u1 interfaceC3126u1 = (InterfaceC3126u1) new C2901H1(abstractC3151y2, interfaceC2853s, 0).invoke();
            return z ? m320m(interfaceC3126u1) : interfaceC3126u1;
        } else if (mo310q0 < 2147483639) {
            double[] dArr = new double[(int) mo310q0];
            new C3091o2(interfaceC2853s, abstractC3151y2, dArr).invoke();
            return new C2970T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3138w1 m326g(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 < 0 || !interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC3138w1 interfaceC3138w1 = (InterfaceC3138w1) new C2901H1(abstractC3151y2, interfaceC2853s, 1).invoke();
            return z ? m319n(interfaceC3138w1) : interfaceC3138w1;
        } else if (mo310q0 < 2147483639) {
            int[] iArr = new int[(int) mo310q0];
            new C3097p2(interfaceC2853s, abstractC3151y2, iArr).invoke();
            return new C3019c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3150y1 m325h(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 < 0 || !interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC3150y1 interfaceC3150y1 = (InterfaceC3150y1) new C2901H1(abstractC3151y2, interfaceC2853s, 2).invoke();
            return z ? m318o(interfaceC3150y1) : interfaceC3150y1;
        } else if (mo310q0 < 2147483639) {
            long[] jArr = new long[(int) mo310q0];
            new C3103q2(interfaceC2853s, abstractC3151y2, jArr).invoke();
            return new C3073l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2859A1 m324i(EnumC3033e4 enumC3033e4, InterfaceC2859A1 interfaceC2859A1, InterfaceC2859A1 interfaceC2859A12) {
        int i = AbstractC2865B1.f783a[enumC3033e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2943O1((InterfaceC3126u1) interfaceC2859A1, (InterfaceC3126u1) interfaceC2859A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3033e4);
                }
                return new C2955Q1((InterfaceC3150y1) interfaceC2859A1, (InterfaceC3150y1) interfaceC2859A12);
            }
            return new C2949P1((InterfaceC3138w1) interfaceC2859A1, (InterfaceC3138w1) interfaceC2859A12);
        }
        return new C2965S1(interfaceC2859A1, interfaceC2859A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3096p1 m323j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2980V1() : new C2975U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2859A1 m322k(EnumC3033e4 enumC3033e4) {
        int i = AbstractC2865B1.f783a[enumC3033e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1171d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3033e4);
                }
                return f1170c;
            }
            return f1169b;
        }
        return f1168a;
    }

    /* renamed from: l */
    public static InterfaceC2859A1 m321l(InterfaceC2859A1 interfaceC2859A1, InterfaceC2827m interfaceC2827m) {
        if (interfaceC2859A1.mo338p() > 0) {
            long count = interfaceC2859A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2827m.apply((int) count);
                new C3133v2(interfaceC2859A1, objArr, 0, (AbstractC2865B1) null).invoke();
                return new C2877D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2859A1;
    }

    /* renamed from: m */
    public static InterfaceC3126u1 m320m(InterfaceC3126u1 interfaceC3126u1) {
        if (interfaceC3126u1.mo338p() > 0) {
            long count = interfaceC3126u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3127u2(interfaceC3126u1, dArr, 0).invoke();
                return new C2970T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3126u1;
    }

    /* renamed from: n */
    public static InterfaceC3138w1 m319n(InterfaceC3138w1 interfaceC3138w1) {
        if (interfaceC3138w1.mo338p() > 0) {
            long count = interfaceC3138w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3127u2(interfaceC3138w1, iArr, 0).invoke();
                return new C3019c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3138w1;
    }

    /* renamed from: o */
    public static InterfaceC3150y1 m318o(InterfaceC3150y1 interfaceC3150y1) {
        if (interfaceC3150y1.mo338p() > 0) {
            long count = interfaceC3150y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3127u2(interfaceC3150y1, jArr, 0).invoke();
                return new C3073l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3150y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3102q1 m317p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3031e2() : new C3025d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3108r1 m316q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3085n2() : new C3079m2(j);
    }
}
