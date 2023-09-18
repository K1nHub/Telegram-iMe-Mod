package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3200x2 {

    /* renamed from: a */
    private static final InterfaceC2914A1 f1169a = new C3055Z1(null);

    /* renamed from: b */
    private static final InterfaceC3193w1 f1170b = new C3045X1();

    /* renamed from: c */
    private static final InterfaceC3205y1 f1171c = new C3050Y1();

    /* renamed from: d */
    private static final InterfaceC3181u1 f1172d = new C3040W1();

    /* renamed from: e */
    private static final int[] f1173e = new int[0];

    /* renamed from: f */
    private static final long[] f1174f = new long[0];

    /* renamed from: g */
    private static final double[] f1175g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3169s1 m329d(long j, InterfaceC2882m interfaceC2882m) {
        return (j < 0 || j >= 2147483639) ? new C3176t2() : new C3068b2(j, interfaceC2882m);
    }

    /* renamed from: e */
    public static InterfaceC2914A1 m328e(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m) {
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 < 0 || !interfaceC2908s.hasCharacteristics(16384)) {
            InterfaceC2914A1 interfaceC2914A1 = (InterfaceC2914A1) new C2956H1(abstractC3206y2, interfaceC2882m, interfaceC2908s).invoke();
            return z ? m321l(interfaceC2914A1, interfaceC2882m) : interfaceC2914A1;
        } else if (mo310q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2882m.apply((int) mo310q0);
            new C3164r2(interfaceC2908s, abstractC3206y2, objArr).invoke();
            return new C2932D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3181u1 m327f(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z) {
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 < 0 || !interfaceC2908s.hasCharacteristics(16384)) {
            InterfaceC3181u1 interfaceC3181u1 = (InterfaceC3181u1) new C2956H1(abstractC3206y2, interfaceC2908s, 0).invoke();
            return z ? m320m(interfaceC3181u1) : interfaceC3181u1;
        } else if (mo310q0 < 2147483639) {
            double[] dArr = new double[(int) mo310q0];
            new C3146o2(interfaceC2908s, abstractC3206y2, dArr).invoke();
            return new C3025T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3193w1 m326g(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z) {
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 < 0 || !interfaceC2908s.hasCharacteristics(16384)) {
            InterfaceC3193w1 interfaceC3193w1 = (InterfaceC3193w1) new C2956H1(abstractC3206y2, interfaceC2908s, 1).invoke();
            return z ? m319n(interfaceC3193w1) : interfaceC3193w1;
        } else if (mo310q0 < 2147483639) {
            int[] iArr = new int[(int) mo310q0];
            new C3152p2(interfaceC2908s, abstractC3206y2, iArr).invoke();
            return new C3074c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3205y1 m325h(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z) {
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 < 0 || !interfaceC2908s.hasCharacteristics(16384)) {
            InterfaceC3205y1 interfaceC3205y1 = (InterfaceC3205y1) new C2956H1(abstractC3206y2, interfaceC2908s, 2).invoke();
            return z ? m318o(interfaceC3205y1) : interfaceC3205y1;
        } else if (mo310q0 < 2147483639) {
            long[] jArr = new long[(int) mo310q0];
            new C3158q2(interfaceC2908s, abstractC3206y2, jArr).invoke();
            return new C3128l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2914A1 m324i(EnumC3088e4 enumC3088e4, InterfaceC2914A1 interfaceC2914A1, InterfaceC2914A1 interfaceC2914A12) {
        int i = AbstractC2920B1.f784a[enumC3088e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2998O1((InterfaceC3181u1) interfaceC2914A1, (InterfaceC3181u1) interfaceC2914A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3088e4);
                }
                return new C3010Q1((InterfaceC3205y1) interfaceC2914A1, (InterfaceC3205y1) interfaceC2914A12);
            }
            return new C3004P1((InterfaceC3193w1) interfaceC2914A1, (InterfaceC3193w1) interfaceC2914A12);
        }
        return new C3020S1(interfaceC2914A1, interfaceC2914A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3151p1 m323j(long j) {
        return (j < 0 || j >= 2147483639) ? new C3035V1() : new C3030U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2914A1 m322k(EnumC3088e4 enumC3088e4) {
        int i = AbstractC2920B1.f784a[enumC3088e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1172d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3088e4);
                }
                return f1171c;
            }
            return f1170b;
        }
        return f1169a;
    }

    /* renamed from: l */
    public static InterfaceC2914A1 m321l(InterfaceC2914A1 interfaceC2914A1, InterfaceC2882m interfaceC2882m) {
        if (interfaceC2914A1.mo338p() > 0) {
            long count = interfaceC2914A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2882m.apply((int) count);
                new C3188v2(interfaceC2914A1, objArr, 0, (AbstractC2920B1) null).invoke();
                return new C2932D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2914A1;
    }

    /* renamed from: m */
    public static InterfaceC3181u1 m320m(InterfaceC3181u1 interfaceC3181u1) {
        if (interfaceC3181u1.mo338p() > 0) {
            long count = interfaceC3181u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3182u2(interfaceC3181u1, dArr, 0).invoke();
                return new C3025T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3181u1;
    }

    /* renamed from: n */
    public static InterfaceC3193w1 m319n(InterfaceC3193w1 interfaceC3193w1) {
        if (interfaceC3193w1.mo338p() > 0) {
            long count = interfaceC3193w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3182u2(interfaceC3193w1, iArr, 0).invoke();
                return new C3074c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3193w1;
    }

    /* renamed from: o */
    public static InterfaceC3205y1 m318o(InterfaceC3205y1 interfaceC3205y1) {
        if (interfaceC3205y1.mo338p() > 0) {
            long count = interfaceC3205y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3182u2(interfaceC3205y1, jArr, 0).invoke();
                return new C3128l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3205y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3157q1 m317p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3086e2() : new C3080d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3163r1 m316q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3140n2() : new C3134m2(j);
    }
}
