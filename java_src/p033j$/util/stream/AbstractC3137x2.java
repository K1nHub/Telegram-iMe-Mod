package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3137x2 {

    /* renamed from: a */
    private static final InterfaceC2851A1 f1218a = new C2992Z1(null);

    /* renamed from: b */
    private static final InterfaceC3130w1 f1219b = new C2982X1();

    /* renamed from: c */
    private static final InterfaceC3142y1 f1220c = new C2987Y1();

    /* renamed from: d */
    private static final InterfaceC3118u1 f1221d = new C2977W1();

    /* renamed from: e */
    private static final int[] f1222e = new int[0];

    /* renamed from: f */
    private static final long[] f1223f = new long[0];

    /* renamed from: g */
    private static final double[] f1224g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3106s1 m374d(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C3113t2() : new C3005b2(j, intFunction);
    }

    /* renamed from: e */
    public static InterfaceC2851A1 m373e(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2851A1 interfaceC2851A1 = (InterfaceC2851A1) new C2893H1(abstractC3143y2, intFunction, spliterator).invoke();
            return z ? m366l(interfaceC2851A1, intFunction) : interfaceC2851A1;
        } else if (mo355p0 < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) mo355p0);
            new C3101r2(spliterator, abstractC3143y2, objArr).invoke();
            return new C2869D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3118u1 m372f(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3118u1 interfaceC3118u1 = (InterfaceC3118u1) new C2893H1(abstractC3143y2, spliterator, 0).invoke();
            return z ? m365m(interfaceC3118u1) : interfaceC3118u1;
        } else if (mo355p0 < 2147483639) {
            double[] dArr = new double[(int) mo355p0];
            new C3083o2(spliterator, abstractC3143y2, dArr).invoke();
            return new C2962T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3130w1 m371g(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3130w1 interfaceC3130w1 = (InterfaceC3130w1) new C2893H1(abstractC3143y2, spliterator, 1).invoke();
            return z ? m364n(interfaceC3130w1) : interfaceC3130w1;
        } else if (mo355p0 < 2147483639) {
            int[] iArr = new int[(int) mo355p0];
            new C3089p2(spliterator, abstractC3143y2, iArr).invoke();
            return new C3011c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3142y1 m370h(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        long mo355p0 = abstractC3143y2.mo355p0(spliterator);
        if (mo355p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3142y1 interfaceC3142y1 = (InterfaceC3142y1) new C2893H1(abstractC3143y2, spliterator, 2).invoke();
            return z ? m363o(interfaceC3142y1) : interfaceC3142y1;
        } else if (mo355p0 < 2147483639) {
            long[] jArr = new long[(int) mo355p0];
            new C3095q2(spliterator, abstractC3143y2, jArr).invoke();
            return new C3065l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2851A1 m369i(EnumC3025e4 enumC3025e4, InterfaceC2851A1 interfaceC2851A1, InterfaceC2851A1 interfaceC2851A12) {
        int i = AbstractC2857B1.f833a[enumC3025e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2935O1((InterfaceC3118u1) interfaceC2851A1, (InterfaceC3118u1) interfaceC2851A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3025e4);
                }
                return new C2947Q1((InterfaceC3142y1) interfaceC2851A1, (InterfaceC3142y1) interfaceC2851A12);
            }
            return new C2941P1((InterfaceC3130w1) interfaceC2851A1, (InterfaceC3130w1) interfaceC2851A12);
        }
        return new C2957S1(interfaceC2851A1, interfaceC2851A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3088p1 m368j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2972V1() : new C2967U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2851A1 m367k(EnumC3025e4 enumC3025e4) {
        int i = AbstractC2857B1.f833a[enumC3025e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1221d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3025e4);
                }
                return f1220c;
            }
            return f1219b;
        }
        return f1218a;
    }

    /* renamed from: l */
    public static InterfaceC2851A1 m366l(InterfaceC2851A1 interfaceC2851A1, IntFunction intFunction) {
        if (interfaceC2851A1.mo383n() > 0) {
            long count = interfaceC2851A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) intFunction.apply((int) count);
                new C3125v2(interfaceC2851A1, objArr, 0, (AbstractC2857B1) null).invoke();
                return new C2869D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2851A1;
    }

    /* renamed from: m */
    public static InterfaceC3118u1 m365m(InterfaceC3118u1 interfaceC3118u1) {
        if (interfaceC3118u1.mo383n() > 0) {
            long count = interfaceC3118u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3119u2(interfaceC3118u1, dArr, 0).invoke();
                return new C2962T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3118u1;
    }

    /* renamed from: n */
    public static InterfaceC3130w1 m364n(InterfaceC3130w1 interfaceC3130w1) {
        if (interfaceC3130w1.mo383n() > 0) {
            long count = interfaceC3130w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3119u2(interfaceC3130w1, iArr, 0).invoke();
                return new C3011c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3130w1;
    }

    /* renamed from: o */
    public static InterfaceC3142y1 m363o(InterfaceC3142y1 interfaceC3142y1) {
        if (interfaceC3142y1.mo383n() > 0) {
            long count = interfaceC3142y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3119u2(interfaceC3142y1, jArr, 0).invoke();
                return new C3065l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3142y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3094q1 m362p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3023e2() : new C3017d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3100r1 m361q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3077n2() : new C3071m2(j);
    }
}
