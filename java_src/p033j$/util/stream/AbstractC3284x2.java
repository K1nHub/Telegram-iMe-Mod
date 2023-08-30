package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.x2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3284x2 {

    /* renamed from: a */
    private static final InterfaceC2998A1 f1178a = new C3139Z1(null);

    /* renamed from: b */
    private static final InterfaceC3277w1 f1179b = new C3129X1();

    /* renamed from: c */
    private static final InterfaceC3289y1 f1180c = new C3134Y1();

    /* renamed from: d */
    private static final InterfaceC3265u1 f1181d = new C3124W1();

    /* renamed from: e */
    private static final int[] f1182e = new int[0];

    /* renamed from: f */
    private static final long[] f1183f = new long[0];

    /* renamed from: g */
    private static final double[] f1184g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static InterfaceC3253s1 m329d(long j, InterfaceC2966m interfaceC2966m) {
        return (j < 0 || j >= 2147483639) ? new C3260t2() : new C3152b2(j, interfaceC2966m);
    }

    /* renamed from: e */
    public static InterfaceC2998A1 m328e(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m) {
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 < 0 || !interfaceC2992s.hasCharacteristics(16384)) {
            InterfaceC2998A1 interfaceC2998A1 = (InterfaceC2998A1) new C3040H1(abstractC3290y2, interfaceC2966m, interfaceC2992s).invoke();
            return z ? m321l(interfaceC2998A1, interfaceC2966m) : interfaceC2998A1;
        } else if (mo310q0 < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2966m.apply((int) mo310q0);
            new C3248r2(interfaceC2992s, abstractC3290y2, objArr).invoke();
            return new C3016D1(objArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: f */
    public static InterfaceC3265u1 m327f(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 < 0 || !interfaceC2992s.hasCharacteristics(16384)) {
            InterfaceC3265u1 interfaceC3265u1 = (InterfaceC3265u1) new C3040H1(abstractC3290y2, interfaceC2992s, 0).invoke();
            return z ? m320m(interfaceC3265u1) : interfaceC3265u1;
        } else if (mo310q0 < 2147483639) {
            double[] dArr = new double[(int) mo310q0];
            new C3230o2(interfaceC2992s, abstractC3290y2, dArr).invoke();
            return new C3109T1(dArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: g */
    public static InterfaceC3277w1 m326g(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 < 0 || !interfaceC2992s.hasCharacteristics(16384)) {
            InterfaceC3277w1 interfaceC3277w1 = (InterfaceC3277w1) new C3040H1(abstractC3290y2, interfaceC2992s, 1).invoke();
            return z ? m319n(interfaceC3277w1) : interfaceC3277w1;
        } else if (mo310q0 < 2147483639) {
            int[] iArr = new int[(int) mo310q0];
            new C3236p2(interfaceC2992s, abstractC3290y2, iArr).invoke();
            return new C3158c2(iArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static InterfaceC3289y1 m325h(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 < 0 || !interfaceC2992s.hasCharacteristics(16384)) {
            InterfaceC3289y1 interfaceC3289y1 = (InterfaceC3289y1) new C3040H1(abstractC3290y2, interfaceC2992s, 2).invoke();
            return z ? m318o(interfaceC3289y1) : interfaceC3289y1;
        } else if (mo310q0 < 2147483639) {
            long[] jArr = new long[(int) mo310q0];
            new C3242q2(interfaceC2992s, abstractC3290y2, jArr).invoke();
            return new C3212l2(jArr);
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static InterfaceC2998A1 m324i(EnumC3172e4 enumC3172e4, InterfaceC2998A1 interfaceC2998A1, InterfaceC2998A1 interfaceC2998A12) {
        int i = AbstractC3004B1.f793a[enumC3172e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return new C3082O1((InterfaceC3265u1) interfaceC2998A1, (InterfaceC3265u1) interfaceC2998A12);
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3172e4);
                }
                return new C3094Q1((InterfaceC3289y1) interfaceC2998A1, (InterfaceC3289y1) interfaceC2998A12);
            }
            return new C3088P1((InterfaceC3277w1) interfaceC2998A1, (InterfaceC3277w1) interfaceC2998A12);
        }
        return new C3104S1(interfaceC2998A1, interfaceC2998A12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static InterfaceC3235p1 m323j(long j) {
        return (j < 0 || j >= 2147483639) ? new C3119V1() : new C3114U1(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static InterfaceC2998A1 m322k(EnumC3172e4 enumC3172e4) {
        int i = AbstractC3004B1.f793a[enumC3172e4.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f1181d;
                    }
                    throw new IllegalStateException("Unknown shape " + enumC3172e4);
                }
                return f1180c;
            }
            return f1179b;
        }
        return f1178a;
    }

    /* renamed from: l */
    public static InterfaceC2998A1 m321l(InterfaceC2998A1 interfaceC2998A1, InterfaceC2966m interfaceC2966m) {
        if (interfaceC2998A1.mo338p() > 0) {
            long count = interfaceC2998A1.count();
            if (count < 2147483639) {
                Object[] objArr = (Object[]) interfaceC2966m.apply((int) count);
                new C3272v2(interfaceC2998A1, objArr, 0, (AbstractC3004B1) null).invoke();
                return new C3016D1(objArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC2998A1;
    }

    /* renamed from: m */
    public static InterfaceC3265u1 m320m(InterfaceC3265u1 interfaceC3265u1) {
        if (interfaceC3265u1.mo338p() > 0) {
            long count = interfaceC3265u1.count();
            if (count < 2147483639) {
                double[] dArr = new double[(int) count];
                new C3266u2(interfaceC3265u1, dArr, 0).invoke();
                return new C3109T1(dArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3265u1;
    }

    /* renamed from: n */
    public static InterfaceC3277w1 m319n(InterfaceC3277w1 interfaceC3277w1) {
        if (interfaceC3277w1.mo338p() > 0) {
            long count = interfaceC3277w1.count();
            if (count < 2147483639) {
                int[] iArr = new int[(int) count];
                new C3266u2(interfaceC3277w1, iArr, 0).invoke();
                return new C3158c2(iArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3277w1;
    }

    /* renamed from: o */
    public static InterfaceC3289y1 m318o(InterfaceC3289y1 interfaceC3289y1) {
        if (interfaceC3289y1.mo338p() > 0) {
            long count = interfaceC3289y1.count();
            if (count < 2147483639) {
                long[] jArr = new long[(int) count];
                new C3266u2(interfaceC3289y1, jArr, 0).invoke();
                return new C3212l2(jArr);
            }
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        return interfaceC3289y1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static InterfaceC3241q1 m317p(long j) {
        return (j < 0 || j >= 2147483639) ? new C3170e2() : new C3164d2(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static InterfaceC3247r1 m316q(long j) {
        return (j < 0 || j >= 2147483639) ? new C3224n2() : new C3218m2(j);
    }
}
