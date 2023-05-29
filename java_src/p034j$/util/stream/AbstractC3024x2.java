package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3024x2 {

    /* renamed from: a */
    private static final InterfaceC2738A1 f1083a = new C2879Z1(null);

    /* renamed from: b */
    private static final InterfaceC3017w1 f1084b = new C2869X1();

    /* renamed from: c */
    private static final InterfaceC3029y1 f1085c = new C2874Y1();

    /* renamed from: d */
    private static final InterfaceC3005u1 f1086d = new C2864W1();

    /* renamed from: e */
    private static final int[] f1087e = new int[0];

    /* renamed from: f */
    private static final long[] f1088f = new long[0];

    /* renamed from: g */
    private static final double[] f1089g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2993s1 m311d(long j, InterfaceC2706m interfaceC2706m) {
        return (j < 0 || j >= 2147483639) ? new C3000t2() : new C2892b2(j, interfaceC2706m);
    }

    /* renamed from: e */
    public static InterfaceC2738A1 m310e(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m) {
        long mo292q0 = abstractC3030y2.mo292q0(interfaceC2732s);
        if (mo292q0 < 0 || !interfaceC2732s.hasCharacteristics(16384)) {
            InterfaceC2738A1 interfaceC2738A1 = (InterfaceC2738A1) new C2780H1(abstractC3030y2, interfaceC2706m, interfaceC2732s).invoke();
            return z ? m303l(interfaceC2738A1, interfaceC2706m) : interfaceC2738A1;
        } else if (mo292q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2706m.apply((int) mo292q0);
            new C2988r2(interfaceC2732s, abstractC3030y2, objArr).invoke();
            return new C2756D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3005u1 m309f(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        long mo292q0 = abstractC3030y2.mo292q0(interfaceC2732s);
        if (mo292q0 < 0 || !interfaceC2732s.hasCharacteristics(16384)) {
            InterfaceC3005u1 interfaceC3005u1 = (InterfaceC3005u1) new C2780H1(abstractC3030y2, interfaceC2732s, 0).invoke();
            return z ? m302m(interfaceC3005u1) : interfaceC3005u1;
        } else if (mo292q0 < 2147483639) {
            double[] dArr = new double[(int) mo292q0];
            new C2970o2(interfaceC2732s, abstractC3030y2, dArr).invoke();
            return new C2849T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3017w1 m308g(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        long mo292q0 = abstractC3030y2.mo292q0(interfaceC2732s);
        if (mo292q0 < 0 || !interfaceC2732s.hasCharacteristics(16384)) {
            InterfaceC3017w1 interfaceC3017w1 = (InterfaceC3017w1) new C2780H1(abstractC3030y2, interfaceC2732s, 1).invoke();
            return z ? m301n(interfaceC3017w1) : interfaceC3017w1;
        } else if (mo292q0 < 2147483639) {
            int[] iArr = new int[(int) mo292q0];
            new C2976p2(interfaceC2732s, abstractC3030y2, iArr).invoke();
            return new C2898c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3029y1 m307h(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        long mo292q0 = abstractC3030y2.mo292q0(interfaceC2732s);
        if (mo292q0 < 0 || !interfaceC2732s.hasCharacteristics(16384)) {
            InterfaceC3029y1 interfaceC3029y1 = (InterfaceC3029y1) new C2780H1(abstractC3030y2, interfaceC2732s, 2).invoke();
            return z ? m300o(interfaceC3029y1) : interfaceC3029y1;
        } else if (mo292q0 < 2147483639) {
            long[] jArr = new long[(int) mo292q0];
            new C2982q2(interfaceC2732s, abstractC3030y2, jArr).invoke();
            return new C2952l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2738A1 m306i(EnumC2912e4 enumC2912e4, InterfaceC2738A1 interfaceC2738A1, InterfaceC2738A1 interfaceC2738A12) {
        int i = AbstractC2744B1.f698a[enumC2912e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2822O1((InterfaceC3005u1) interfaceC2738A1, (InterfaceC3005u1) interfaceC2738A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2912e4);
                }
                return new C2834Q1((InterfaceC3029y1) interfaceC2738A1, (InterfaceC3029y1) interfaceC2738A12);
            }
            return new C2828P1((InterfaceC3017w1) interfaceC2738A1, (InterfaceC3017w1) interfaceC2738A12);
        }
        return new C2844S1(interfaceC2738A1, interfaceC2738A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2975p1 m305j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2859V1() : new C2854U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2738A1 m304k(EnumC2912e4 enumC2912e4) {
        int i = AbstractC2744B1.f698a[enumC2912e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1086d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2912e4);
                }
                return f1085c;
            }
            return f1084b;
        }
        return f1083a;
    }

    /* renamed from: l */
    public static InterfaceC2738A1 m303l(InterfaceC2738A1 interfaceC2738A1, InterfaceC2706m interfaceC2706m) {
        if (interfaceC2738A1.mo320p() > 0) {
            long count = interfaceC2738A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2706m.apply((int) count);
                new C3012v2(interfaceC2738A1, objArr, 0, (AbstractC2744B1) null).invoke();
                return new C2756D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2738A1;
    }

    /* renamed from: m */
    public static InterfaceC3005u1 m302m(InterfaceC3005u1 interfaceC3005u1) {
        if (interfaceC3005u1.mo320p() > 0) {
            long count = interfaceC3005u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3006u2(interfaceC3005u1, dArr, 0).invoke();
                return new C2849T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3005u1;
    }

    /* renamed from: n */
    public static InterfaceC3017w1 m301n(InterfaceC3017w1 interfaceC3017w1) {
        if (interfaceC3017w1.mo320p() > 0) {
            long count = interfaceC3017w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3006u2(interfaceC3017w1, iArr, 0).invoke();
                return new C2898c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3017w1;
    }

    /* renamed from: o */
    public static InterfaceC3029y1 m300o(InterfaceC3029y1 interfaceC3029y1) {
        if (interfaceC3029y1.mo320p() > 0) {
            long count = interfaceC3029y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3006u2(interfaceC3029y1, jArr, 0).invoke();
                return new C2952l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3029y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2981q1 m299p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2910e2() : new C2904d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2987r1 m298q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2964n2() : new C2958m2(j);
    }
}
