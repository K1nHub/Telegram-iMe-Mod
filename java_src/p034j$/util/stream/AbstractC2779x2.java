package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2779x2 {

    /* renamed from: a */
    private static final InterfaceC2493A1 f1074a = new C2634Z1(null);

    /* renamed from: b */
    private static final InterfaceC2772w1 f1075b = new C2624X1();

    /* renamed from: c */
    private static final InterfaceC2784y1 f1076c = new C2629Y1();

    /* renamed from: d */
    private static final InterfaceC2760u1 f1077d = new C2619W1();

    /* renamed from: e */
    private static final int[] f1078e = new int[0];

    /* renamed from: f */
    private static final long[] f1079f = new long[0];

    /* renamed from: g */
    private static final double[] f1080g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC2748s1 m326d(long j, InterfaceC2461m interfaceC2461m) {
        return (j < 0 || j >= 2147483639) ? new C2755t2() : new C2647b2(j, interfaceC2461m);
    }

    /* renamed from: e */
    public static InterfaceC2493A1 m325e(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 < 0 || !interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2493A1 interfaceC2493A1 = (InterfaceC2493A1) new C2535H1(abstractC2785y2, interfaceC2461m, interfaceC2487s).invoke();
            return z ? m318l(interfaceC2493A1, interfaceC2461m) : interfaceC2493A1;
        } else if (mo307q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2461m.apply((int) mo307q0);
            new C2743r2(interfaceC2487s, abstractC2785y2, objArr).invoke();
            return new C2511D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC2760u1 m324f(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 < 0 || !interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2760u1 interfaceC2760u1 = (InterfaceC2760u1) new C2535H1(abstractC2785y2, interfaceC2487s, 0).invoke();
            return z ? m317m(interfaceC2760u1) : interfaceC2760u1;
        } else if (mo307q0 < 2147483639) {
            double[] dArr = new double[(int) mo307q0];
            new C2725o2(interfaceC2487s, abstractC2785y2, dArr).invoke();
            return new C2604T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC2772w1 m323g(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 < 0 || !interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2772w1 interfaceC2772w1 = (InterfaceC2772w1) new C2535H1(abstractC2785y2, interfaceC2487s, 1).invoke();
            return z ? m316n(interfaceC2772w1) : interfaceC2772w1;
        } else if (mo307q0 < 2147483639) {
            int[] iArr = new int[(int) mo307q0];
            new C2731p2(interfaceC2487s, abstractC2785y2, iArr).invoke();
            return new C2653c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC2784y1 m322h(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 < 0 || !interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2784y1 interfaceC2784y1 = (InterfaceC2784y1) new C2535H1(abstractC2785y2, interfaceC2487s, 2).invoke();
            return z ? m315o(interfaceC2784y1) : interfaceC2784y1;
        } else if (mo307q0 < 2147483639) {
            long[] jArr = new long[(int) mo307q0];
            new C2737q2(interfaceC2487s, abstractC2785y2, jArr).invoke();
            return new C2707l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2493A1 m321i(EnumC2667e4 enumC2667e4, InterfaceC2493A1 interfaceC2493A1, InterfaceC2493A1 interfaceC2493A12) {
        int i = AbstractC2499B1.f689a[enumC2667e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C2577O1((InterfaceC2760u1) interfaceC2493A1, (InterfaceC2760u1) interfaceC2493A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2667e4);
                }
                return new C2589Q1((InterfaceC2784y1) interfaceC2493A1, (InterfaceC2784y1) interfaceC2493A12);
            }
            return new C2583P1((InterfaceC2772w1) interfaceC2493A1, (InterfaceC2772w1) interfaceC2493A12);
        }
        return new C2599S1(interfaceC2493A1, interfaceC2493A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC2730p1 m320j(long j) {
        return (j < 0 || j >= 2147483639) ? new C2614V1() : new C2609U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2493A1 m319k(EnumC2667e4 enumC2667e4) {
        int i = AbstractC2499B1.f689a[enumC2667e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1077d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC2667e4);
                }
                return f1076c;
            }
            return f1075b;
        }
        return f1074a;
    }

    /* renamed from: l */
    public static InterfaceC2493A1 m318l(InterfaceC2493A1 interfaceC2493A1, InterfaceC2461m interfaceC2461m) {
        if (interfaceC2493A1.mo335p() > 0) {
            long count = interfaceC2493A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2461m.apply((int) count);
                new C2767v2(interfaceC2493A1, objArr, 0, (AbstractC2499B1) null).invoke();
                return new C2511D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2493A1;
    }

    /* renamed from: m */
    public static InterfaceC2760u1 m317m(InterfaceC2760u1 interfaceC2760u1) {
        if (interfaceC2760u1.mo335p() > 0) {
            long count = interfaceC2760u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C2761u2(interfaceC2760u1, dArr, 0).invoke();
                return new C2604T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2760u1;
    }

    /* renamed from: n */
    public static InterfaceC2772w1 m316n(InterfaceC2772w1 interfaceC2772w1) {
        if (interfaceC2772w1.mo335p() > 0) {
            long count = interfaceC2772w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C2761u2(interfaceC2772w1, iArr, 0).invoke();
                return new C2653c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2772w1;
    }

    /* renamed from: o */
    public static InterfaceC2784y1 m315o(InterfaceC2784y1 interfaceC2784y1) {
        if (interfaceC2784y1.mo335p() > 0) {
            long count = interfaceC2784y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C2761u2(interfaceC2784y1, jArr, 0).invoke();
                return new C2707l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2784y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC2736q1 m314p(long j) {
        return (j < 0 || j >= 2147483639) ? new C2665e2() : new C2659d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC2742r1 m313q(long j) {
        return (j < 0 || j >= 2147483639) ? new C2719n2() : new C2713m2(j);
    }
}
