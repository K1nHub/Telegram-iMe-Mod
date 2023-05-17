package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2701m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3019x2 {

    /* renamed from: a */
    private static final InterfaceC2733A1 f1083a = new C2874Z1(null);

    /* renamed from: b */
    private static final InterfaceC3012w1 f1084b = new C2864X1();

    /* renamed from: c */
    private static final InterfaceC3024y1 f1085c = new C2869Y1();

    /* renamed from: d */
    private static final InterfaceC3000u1 f1086d = new C2859W1();

    /* renamed from: e */
    private static final int[] f1087e = new int[0];

    /* renamed from: f */
    private static final long[] f1088f = new long[0];

    /* renamed from: g */
    private static final double[] f1089g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2988s1 m311d(long j, InterfaceC2701m interfaceC2701m) {
        return (j < 0 || j >= 2147483639) ? new C2995t2() : new C2887b2(j, interfaceC2701m);
    }

    /* renamed from: e */
    public static InterfaceC2733A1 m310e(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m) {
        long mo292q0 = abstractC3025y2.mo292q0(interfaceC2727s);
        if (mo292q0 < 0 || !interfaceC2727s.hasCharacteristics(16384)) {
            InterfaceC2733A1 interfaceC2733A1 = (InterfaceC2733A1) new C2775H1(abstractC3025y2, interfaceC2701m, interfaceC2727s).invoke();
            return z ? m303l(interfaceC2733A1, interfaceC2701m) : interfaceC2733A1;
        } else if (mo292q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2701m.apply((int) mo292q0);
            new C2983r2(interfaceC2727s, abstractC3025y2, objArr).invoke();
            return new C2751D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3000u1 m309f(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z) {
        long mo292q0 = abstractC3025y2.mo292q0(interfaceC2727s);
        if (mo292q0 < 0 || !interfaceC2727s.hasCharacteristics(16384)) {
            InterfaceC3000u1 interfaceC3000u1 = (InterfaceC3000u1) new C2775H1(abstractC3025y2, interfaceC2727s, 0).invoke();
            return z ? m302m(interfaceC3000u1) : interfaceC3000u1;
        } else if (mo292q0 < 2147483639) {
            double[] dArr = new double[(int) mo292q0];
            new C2965o2(interfaceC2727s, abstractC3025y2, dArr).invoke();
            return new C2844T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3012w1 m308g(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z) {
        long mo292q0 = abstractC3025y2.mo292q0(interfaceC2727s);
        if (mo292q0 < 0 || !interfaceC2727s.hasCharacteristics(16384)) {
            InterfaceC3012w1 interfaceC3012w1 = (InterfaceC3012w1) new C2775H1(abstractC3025y2, interfaceC2727s, 1).invoke();
            return z ? m301n(interfaceC3012w1) : interfaceC3012w1;
        } else if (mo292q0 < 2147483639) {
            int[] iArr = new int[(int) mo292q0];
            new C2971p2(interfaceC2727s, abstractC3025y2, iArr).invoke();
            return new C2893c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3024y1 m307h(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z) {
        long mo292q0 = abstractC3025y2.mo292q0(interfaceC2727s);
        if (mo292q0 < 0 || !interfaceC2727s.hasCharacteristics(16384)) {
            InterfaceC3024y1 interfaceC3024y1 = (InterfaceC3024y1) new C2775H1(abstractC3025y2, interfaceC2727s, 2).invoke();
            return z ? m300o(interfaceC3024y1) : interfaceC3024y1;
        } else if (mo292q0 < 2147483639) {
            long[] jArr = new long[(int) mo292q0];
            new C2977q2(interfaceC2727s, abstractC3025y2, jArr).invoke();
            return new C2947l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2733A1 m306i(EnumC2907e4 enumC2907e4, InterfaceC2733A1 interfaceC2733A1, InterfaceC2733A1 interfaceC2733A12) {
        int i = AbstractC2739B1.f698a[enumC2907e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2817O1((InterfaceC3000u1) interfaceC2733A1, (InterfaceC3000u1) interfaceC2733A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2907e4);
                }
                return new C2829Q1((InterfaceC3024y1) interfaceC2733A1, (InterfaceC3024y1) interfaceC2733A12);
            }
            return new C2823P1((InterfaceC3012w1) interfaceC2733A1, (InterfaceC3012w1) interfaceC2733A12);
        }
        return new C2839S1(interfaceC2733A1, interfaceC2733A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2970p1 m305j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2854V1() : new C2849U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2733A1 m304k(EnumC2907e4 enumC2907e4) {
        int i = AbstractC2739B1.f698a[enumC2907e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1086d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2907e4);
                }
                return f1085c;
            }
            return f1084b;
        }
        return f1083a;
    }

    /* renamed from: l */
    public static InterfaceC2733A1 m303l(InterfaceC2733A1 interfaceC2733A1, InterfaceC2701m interfaceC2701m) {
        if (interfaceC2733A1.mo320p() > 0) {
            long count = interfaceC2733A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2701m.apply((int) count);
                new C3007v2(interfaceC2733A1, objArr, 0, (AbstractC2739B1) null).invoke();
                return new C2751D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2733A1;
    }

    /* renamed from: m */
    public static InterfaceC3000u1 m302m(InterfaceC3000u1 interfaceC3000u1) {
        if (interfaceC3000u1.mo320p() > 0) {
            long count = interfaceC3000u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3001u2(interfaceC3000u1, dArr, 0).invoke();
                return new C2844T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3000u1;
    }

    /* renamed from: n */
    public static InterfaceC3012w1 m301n(InterfaceC3012w1 interfaceC3012w1) {
        if (interfaceC3012w1.mo320p() > 0) {
            long count = interfaceC3012w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3001u2(interfaceC3012w1, iArr, 0).invoke();
                return new C2893c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3012w1;
    }

    /* renamed from: o */
    public static InterfaceC3024y1 m300o(InterfaceC3024y1 interfaceC3024y1) {
        if (interfaceC3024y1.mo320p() > 0) {
            long count = interfaceC3024y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3001u2(interfaceC3024y1, jArr, 0).invoke();
                return new C2947l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3024y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2976q1 m299p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2905e2() : new C2899d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2982r1 m298q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2959n2() : new C2953m2(j);
    }
}
