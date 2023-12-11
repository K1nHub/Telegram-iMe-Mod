package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3138x2 {

    /* renamed from: a */
    private static final InterfaceC2852A1 f1218a = new C2993Z1(null);

    /* renamed from: b */
    private static final InterfaceC3131w1 f1219b = new C2983X1();

    /* renamed from: c */
    private static final InterfaceC3143y1 f1220c = new C2988Y1();

    /* renamed from: d */
    private static final InterfaceC3119u1 f1221d = new C2978W1();

    /* renamed from: e */
    private static final int[] f1222e = new int[0];

    /* renamed from: f */
    private static final long[] f1223f = new long[0];

    /* renamed from: g */
    private static final double[] f1224g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3107s1 m375d(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C3114t2() : new C3006b2(j, intFunction);
    }

    /* renamed from: e */
    public static InterfaceC2852A1 m374e(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long mo356p0 = abstractC3144y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2852A1 interfaceC2852A1 = (InterfaceC2852A1) new C2894H1(abstractC3144y2, intFunction, spliterator).invoke();
            return z ? m367l(interfaceC2852A1, intFunction) : interfaceC2852A1;
        } else if (mo356p0 < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) mo356p0);
            new C3102r2(spliterator, abstractC3144y2, objArr).invoke();
            return new C2870D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3119u1 m373f(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z) {
        long mo356p0 = abstractC3144y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3119u1 interfaceC3119u1 = (InterfaceC3119u1) new C2894H1(abstractC3144y2, spliterator, 0).invoke();
            return z ? m366m(interfaceC3119u1) : interfaceC3119u1;
        } else if (mo356p0 < 2147483639) {
            double[] dArr = new double[(int) mo356p0];
            new C3084o2(spliterator, abstractC3144y2, dArr).invoke();
            return new C2963T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3131w1 m372g(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z) {
        long mo356p0 = abstractC3144y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3131w1 interfaceC3131w1 = (InterfaceC3131w1) new C2894H1(abstractC3144y2, spliterator, 1).invoke();
            return z ? m365n(interfaceC3131w1) : interfaceC3131w1;
        } else if (mo356p0 < 2147483639) {
            int[] iArr = new int[(int) mo356p0];
            new C3090p2(spliterator, abstractC3144y2, iArr).invoke();
            return new C3012c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3143y1 m371h(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z) {
        long mo356p0 = abstractC3144y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3143y1 interfaceC3143y1 = (InterfaceC3143y1) new C2894H1(abstractC3144y2, spliterator, 2).invoke();
            return z ? m364o(interfaceC3143y1) : interfaceC3143y1;
        } else if (mo356p0 < 2147483639) {
            long[] jArr = new long[(int) mo356p0];
            new C3096q2(spliterator, abstractC3144y2, jArr).invoke();
            return new C3066l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2852A1 m370i(EnumC3026e4 enumC3026e4, InterfaceC2852A1 interfaceC2852A1, InterfaceC2852A1 interfaceC2852A12) {
        int i = AbstractC2858B1.f833a[enumC3026e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2936O1((InterfaceC3119u1) interfaceC2852A1, (InterfaceC3119u1) interfaceC2852A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3026e4);
                }
                return new C2948Q1((InterfaceC3143y1) interfaceC2852A1, (InterfaceC3143y1) interfaceC2852A12);
            }
            return new C2942P1((InterfaceC3131w1) interfaceC2852A1, (InterfaceC3131w1) interfaceC2852A12);
        }
        return new C2958S1(interfaceC2852A1, interfaceC2852A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3089p1 m369j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2973V1() : new C2968U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2852A1 m368k(EnumC3026e4 enumC3026e4) {
        int i = AbstractC2858B1.f833a[enumC3026e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1221d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3026e4);
                }
                return f1220c;
            }
            return f1219b;
        }
        return f1218a;
    }

    /* renamed from: l */
    public static InterfaceC2852A1 m367l(InterfaceC2852A1 interfaceC2852A1, IntFunction intFunction) {
        if (interfaceC2852A1.mo384n() > 0) {
            long count = interfaceC2852A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) intFunction.apply((int) count);
                new C3126v2(interfaceC2852A1, objArr, 0, (AbstractC2858B1) null).invoke();
                return new C2870D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2852A1;
    }

    /* renamed from: m */
    public static InterfaceC3119u1 m366m(InterfaceC3119u1 interfaceC3119u1) {
        if (interfaceC3119u1.mo384n() > 0) {
            long count = interfaceC3119u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3120u2(interfaceC3119u1, dArr, 0).invoke();
                return new C2963T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3119u1;
    }

    /* renamed from: n */
    public static InterfaceC3131w1 m365n(InterfaceC3131w1 interfaceC3131w1) {
        if (interfaceC3131w1.mo384n() > 0) {
            long count = interfaceC3131w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3120u2(interfaceC3131w1, iArr, 0).invoke();
                return new C3012c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3131w1;
    }

    /* renamed from: o */
    public static InterfaceC3143y1 m364o(InterfaceC3143y1 interfaceC3143y1) {
        if (interfaceC3143y1.mo384n() > 0) {
            long count = interfaceC3143y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3120u2(interfaceC3143y1, jArr, 0).invoke();
                return new C3066l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3143y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3095q1 m363p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3024e2() : new C3018d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3101r1 m362q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3078n2() : new C3072m2(j);
    }
}
