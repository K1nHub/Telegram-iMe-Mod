package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3136x2 {

    /* renamed from: a */
    private static final InterfaceC2850A1 f1218a = new C2991Z1(null);

    /* renamed from: b */
    private static final InterfaceC3129w1 f1219b = new C2981X1();

    /* renamed from: c */
    private static final InterfaceC3141y1 f1220c = new C2986Y1();

    /* renamed from: d */
    private static final InterfaceC3117u1 f1221d = new C2976W1();

    /* renamed from: e */
    private static final int[] f1222e = new int[0];

    /* renamed from: f */
    private static final long[] f1223f = new long[0];

    /* renamed from: g */
    private static final double[] f1224g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3105s1 m378d(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C3112t2() : new C3004b2(j, intFunction);
    }

    /* renamed from: e */
    public static InterfaceC2850A1 m377e(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long mo359p0 = abstractC3142y2.mo359p0(spliterator);
        if (mo359p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2850A1 interfaceC2850A1 = (InterfaceC2850A1) new C2892H1(abstractC3142y2, intFunction, spliterator).invoke();
            return z ? m370l(interfaceC2850A1, intFunction) : interfaceC2850A1;
        } else if (mo359p0 < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) mo359p0);
            new C3100r2(spliterator, abstractC3142y2, objArr).invoke();
            return new C2868D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3117u1 m376f(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        long mo359p0 = abstractC3142y2.mo359p0(spliterator);
        if (mo359p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3117u1 interfaceC3117u1 = (InterfaceC3117u1) new C2892H1(abstractC3142y2, spliterator, 0).invoke();
            return z ? m369m(interfaceC3117u1) : interfaceC3117u1;
        } else if (mo359p0 < 2147483639) {
            double[] dArr = new double[(int) mo359p0];
            new C3082o2(spliterator, abstractC3142y2, dArr).invoke();
            return new C2961T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3129w1 m375g(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        long mo359p0 = abstractC3142y2.mo359p0(spliterator);
        if (mo359p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3129w1 interfaceC3129w1 = (InterfaceC3129w1) new C2892H1(abstractC3142y2, spliterator, 1).invoke();
            return z ? m368n(interfaceC3129w1) : interfaceC3129w1;
        } else if (mo359p0 < 2147483639) {
            int[] iArr = new int[(int) mo359p0];
            new C3088p2(spliterator, abstractC3142y2, iArr).invoke();
            return new C3010c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3141y1 m374h(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        long mo359p0 = abstractC3142y2.mo359p0(spliterator);
        if (mo359p0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC3141y1 interfaceC3141y1 = (InterfaceC3141y1) new C2892H1(abstractC3142y2, spliterator, 2).invoke();
            return z ? m367o(interfaceC3141y1) : interfaceC3141y1;
        } else if (mo359p0 < 2147483639) {
            long[] jArr = new long[(int) mo359p0];
            new C3094q2(spliterator, abstractC3142y2, jArr).invoke();
            return new C3064l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2850A1 m373i(EnumC3024e4 enumC3024e4, InterfaceC2850A1 interfaceC2850A1, InterfaceC2850A1 interfaceC2850A12) {
        int i = AbstractC2856B1.f833a[enumC3024e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2934O1((InterfaceC3117u1) interfaceC2850A1, (InterfaceC3117u1) interfaceC2850A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3024e4);
                }
                return new C2946Q1((InterfaceC3141y1) interfaceC2850A1, (InterfaceC3141y1) interfaceC2850A12);
            }
            return new C2940P1((InterfaceC3129w1) interfaceC2850A1, (InterfaceC3129w1) interfaceC2850A12);
        }
        return new C2956S1(interfaceC2850A1, interfaceC2850A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3087p1 m372j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2971V1() : new C2966U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2850A1 m371k(EnumC3024e4 enumC3024e4) {
        int i = AbstractC2856B1.f833a[enumC3024e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1221d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3024e4);
                }
                return f1220c;
            }
            return f1219b;
        }
        return f1218a;
    }

    /* renamed from: l */
    public static InterfaceC2850A1 m370l(InterfaceC2850A1 interfaceC2850A1, IntFunction intFunction) {
        if (interfaceC2850A1.mo387n() > 0) {
            long count = interfaceC2850A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) intFunction.apply((int) count);
                new C3124v2(interfaceC2850A1, objArr, 0, (AbstractC2856B1) null).invoke();
                return new C2868D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2850A1;
    }

    /* renamed from: m */
    public static InterfaceC3117u1 m369m(InterfaceC3117u1 interfaceC3117u1) {
        if (interfaceC3117u1.mo387n() > 0) {
            long count = interfaceC3117u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3118u2(interfaceC3117u1, dArr, 0).invoke();
                return new C2961T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3117u1;
    }

    /* renamed from: n */
    public static InterfaceC3129w1 m368n(InterfaceC3129w1 interfaceC3129w1) {
        if (interfaceC3129w1.mo387n() > 0) {
            long count = interfaceC3129w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3118u2(interfaceC3129w1, iArr, 0).invoke();
                return new C3010c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3129w1;
    }

    /* renamed from: o */
    public static InterfaceC3141y1 m367o(InterfaceC3141y1 interfaceC3141y1) {
        if (interfaceC3141y1.mo387n() > 0) {
            long count = interfaceC3141y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3118u2(interfaceC3141y1, jArr, 0).invoke();
                return new C3064l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3141y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3093q1 m366p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3022e2() : new C3016d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3099r1 m365q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3076n2() : new C3070m2(j);
    }
}
