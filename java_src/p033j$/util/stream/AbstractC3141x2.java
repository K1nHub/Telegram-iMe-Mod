package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3141x2 {

    /* renamed from: a */
    private static final InterfaceC2855A1 f1218a = new C2996Z1(null);

    /* renamed from: b */
    private static final InterfaceC3134w1 f1219b = new C2986X1();

    /* renamed from: c */
    private static final InterfaceC3146y1 f1220c = new C2991Y1();

    /* renamed from: d */
    private static final InterfaceC3122u1 f1221d = new C2981W1();

    /* renamed from: e */
    private static final int[] f1222e = new int[0];

    /* renamed from: f */
    private static final long[] f1223f = new long[0];

    /* renamed from: g */
    private static final double[] f1224g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3110s1 m375d(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C3117t2() : new C3009b2(j, intFunction);
    }

    /* renamed from: e */
    public static InterfaceC2855A1 m374e(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long mo356p0 = abstractC3147y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2855A1 interfaceC2855A1 = (InterfaceC2855A1) new C2897H1(abstractC3147y2, intFunction, spliterator).invoke();
            return z ? m367l(interfaceC2855A1, intFunction) : interfaceC2855A1;
        } else if (mo356p0 < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) mo356p0);
            new C3105r2(spliterator, abstractC3147y2, objArr).invoke();
            return new C2873D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3122u1 m373f(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z) {
        long mo356p0 = abstractC3147y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3122u1 interfaceC3122u1 = (InterfaceC3122u1) new C2897H1(abstractC3147y2, spliterator, 0).invoke();
            return z ? m366m(interfaceC3122u1) : interfaceC3122u1;
        } else if (mo356p0 < 2147483639) {
            double[] dArr = new double[(int) mo356p0];
            new C3087o2(spliterator, abstractC3147y2, dArr).invoke();
            return new C2966T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3134w1 m372g(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z) {
        long mo356p0 = abstractC3147y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3134w1 interfaceC3134w1 = (InterfaceC3134w1) new C2897H1(abstractC3147y2, spliterator, 1).invoke();
            return z ? m365n(interfaceC3134w1) : interfaceC3134w1;
        } else if (mo356p0 < 2147483639) {
            int[] iArr = new int[(int) mo356p0];
            new C3093p2(spliterator, abstractC3147y2, iArr).invoke();
            return new C3015c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3146y1 m371h(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z) {
        long mo356p0 = abstractC3147y2.mo356p0(spliterator);
        if (mo356p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3146y1 interfaceC3146y1 = (InterfaceC3146y1) new C2897H1(abstractC3147y2, spliterator, 2).invoke();
            return z ? m364o(interfaceC3146y1) : interfaceC3146y1;
        } else if (mo356p0 < 2147483639) {
            long[] jArr = new long[(int) mo356p0];
            new C3099q2(spliterator, abstractC3147y2, jArr).invoke();
            return new C3069l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2855A1 m370i(EnumC3029e4 enumC3029e4, InterfaceC2855A1 interfaceC2855A1, InterfaceC2855A1 interfaceC2855A12) {
        int i = AbstractC2861B1.f833a[enumC3029e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2939O1((InterfaceC3122u1) interfaceC2855A1, (InterfaceC3122u1) interfaceC2855A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3029e4);
                }
                return new C2951Q1((InterfaceC3146y1) interfaceC2855A1, (InterfaceC3146y1) interfaceC2855A12);
            }
            return new C2945P1((InterfaceC3134w1) interfaceC2855A1, (InterfaceC3134w1) interfaceC2855A12);
        }
        return new C2961S1(interfaceC2855A1, interfaceC2855A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3092p1 m369j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2976V1() : new C2971U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2855A1 m368k(EnumC3029e4 enumC3029e4) {
        int i = AbstractC2861B1.f833a[enumC3029e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1221d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3029e4);
                }
                return f1220c;
            }
            return f1219b;
        }
        return f1218a;
    }

    /* renamed from: l */
    public static InterfaceC2855A1 m367l(InterfaceC2855A1 interfaceC2855A1, IntFunction intFunction) {
        if (interfaceC2855A1.mo384n() > 0) {
            long count = interfaceC2855A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) intFunction.apply((int) count);
                new C3129v2(interfaceC2855A1, objArr, 0, (AbstractC2861B1) null).invoke();
                return new C2873D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2855A1;
    }

    /* renamed from: m */
    public static InterfaceC3122u1 m366m(InterfaceC3122u1 interfaceC3122u1) {
        if (interfaceC3122u1.mo384n() > 0) {
            long count = interfaceC3122u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3123u2(interfaceC3122u1, dArr, 0).invoke();
                return new C2966T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3122u1;
    }

    /* renamed from: n */
    public static InterfaceC3134w1 m365n(InterfaceC3134w1 interfaceC3134w1) {
        if (interfaceC3134w1.mo384n() > 0) {
            long count = interfaceC3134w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3123u2(interfaceC3134w1, iArr, 0).invoke();
                return new C3015c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3134w1;
    }

    /* renamed from: o */
    public static InterfaceC3146y1 m364o(InterfaceC3146y1 interfaceC3146y1) {
        if (interfaceC3146y1.mo384n() > 0) {
            long count = interfaceC3146y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3123u2(interfaceC3146y1, jArr, 0).invoke();
                return new C3069l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3146y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3098q1 m363p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3027e2() : new C3021d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3104r1 m362q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3081n2() : new C3075m2(j);
    }
}
