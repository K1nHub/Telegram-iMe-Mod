package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2958e;
import p033j$.util.function.C2964k;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3312D;
import p033j$.wrappers.C3340U;
import p033j$.wrappers.C3363i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3229o1 {
    /* renamed from: a */
    public static void m377a(InterfaceC3201j3 interfaceC3201j3, Double d) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3201j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3201j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m376b(InterfaceC3207k3 interfaceC3207k3, Integer num) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3207k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3207k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m375c(InterfaceC3213l3 interfaceC3213l3, Long l) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3213l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3213l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m374d(InterfaceC3219m3 interfaceC3219m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m373e(InterfaceC3219m3 interfaceC3219m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m372f(InterfaceC3219m3 interfaceC3219m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m371g(InterfaceC3295z1 interfaceC3295z1, InterfaceC2966m interfaceC2966m) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3295z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3295z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2966m.apply((int) interfaceC3295z1.count());
            interfaceC3295z1.mo340i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m370h(InterfaceC3265u1 interfaceC3265u1, Double[] dArr, int i) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3265u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3265u1.mo295e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m369i(InterfaceC3277w1 interfaceC3277w1, Integer[] numArr, int i) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3277w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3277w1.mo295e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m368j(InterfaceC3289y1 interfaceC3289y1, Long[] lArr, int i) {
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3289y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3289y1.mo295e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m367k(InterfaceC3265u1 interfaceC3265u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2959f) {
            interfaceC3265u1.mo294g((InterfaceC2959f) consumer);
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3265u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2992s.InterfaceC2993a) interfaceC3265u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m366l(InterfaceC3277w1 interfaceC3277w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2965l) {
            interfaceC3277w1.mo294g((InterfaceC2965l) consumer);
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3277w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2992s.InterfaceC2994b) interfaceC3277w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m365m(InterfaceC3289y1 interfaceC3289y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2970q) {
            interfaceC3289y1.mo294g((InterfaceC2970q) consumer);
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(interfaceC3289y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2992s.InterfaceC2995c) interfaceC3289y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3265u1 m364n(InterfaceC3265u1 interfaceC3265u1, long j, long j2, InterfaceC2966m interfaceC2966m) {
        if (j == 0 && j2 == interfaceC3265u1.count()) {
            return interfaceC3265u1;
        }
        long j3 = j2 - j;
        InterfaceC2992s.InterfaceC2993a interfaceC2993a = (InterfaceC2992s.InterfaceC2993a) interfaceC3265u1.spliterator();
        InterfaceC3235p1 m323j = AbstractC3284x2.m323j(j3);
        m323j.mo315n(j3);
        for (int i = 0; i < j && interfaceC2993a.mo149k(new InterfaceC2959f() { // from class: j$.util.stream.t1
            @Override // p033j$.util.function.InterfaceC2959f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2959f
            /* renamed from: j */
            public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
                Objects.requireNonNull(interfaceC2959f);
                return new C2958e(this, interfaceC2959f);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2993a.mo149k(m323j); i2++) {
        }
        m323j.mo339m();
        return m323j.mo341a();
    }

    /* renamed from: o */
    public static InterfaceC3277w1 m363o(InterfaceC3277w1 interfaceC3277w1, long j, long j2, InterfaceC2966m interfaceC2966m) {
        if (j == 0 && j2 == interfaceC3277w1.count()) {
            return interfaceC3277w1;
        }
        long j3 = j2 - j;
        InterfaceC2992s.InterfaceC2994b interfaceC2994b = (InterfaceC2992s.InterfaceC2994b) interfaceC3277w1.spliterator();
        InterfaceC3241q1 m317p = AbstractC3284x2.m317p(j3);
        m317p.mo315n(j3);
        for (int i = 0; i < j && interfaceC2994b.mo142g(new InterfaceC2965l() { // from class: j$.util.stream.v1
            @Override // p033j$.util.function.InterfaceC2965l
            public final void accept(int i2) {
            }

            @Override // p033j$.util.function.InterfaceC2965l
            /* renamed from: l */
            public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
                Objects.requireNonNull(interfaceC2965l);
                return new C2964k(this, interfaceC2965l);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2994b.mo142g(m317p); i2++) {
        }
        m317p.mo339m();
        return m317p.mo341a();
    }

    /* renamed from: p */
    public static InterfaceC3289y1 m362p(InterfaceC3289y1 interfaceC3289y1, long j, long j2, InterfaceC2966m interfaceC2966m) {
        if (j == 0 && j2 == interfaceC3289y1.count()) {
            return interfaceC3289y1;
        }
        long j3 = j2 - j;
        InterfaceC2992s.InterfaceC2995c interfaceC2995c = (InterfaceC2992s.InterfaceC2995c) interfaceC3289y1.spliterator();
        InterfaceC3247r1 m316q = AbstractC3284x2.m316q(j3);
        m316q.mo315n(j3);
        for (int i = 0; i < j && interfaceC2995c.mo136i(new InterfaceC2970q() { // from class: j$.util.stream.x1
            @Override // p033j$.util.function.InterfaceC2970q
            public final void accept(long j4) {
            }

            @Override // p033j$.util.function.InterfaceC2970q
            /* renamed from: f */
            public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
                Objects.requireNonNull(interfaceC2970q);
                return new C2969p(this, interfaceC2970q);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2995c.mo136i(m316q); i2++) {
        }
        m316q.mo339m();
        return m316q.mo341a();
    }

    /* renamed from: q */
    public static InterfaceC2998A1 m361q(InterfaceC2998A1 interfaceC2998A1, long j, long j2, InterfaceC2966m interfaceC2966m) {
        if (j == 0 && j2 == interfaceC2998A1.count()) {
            return interfaceC2998A1;
        }
        InterfaceC2992s spliterator = interfaceC2998A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3253s1 m329d = AbstractC3284x2.m329d(j3, interfaceC2966m);
        m329d.mo315n(j3);
        for (int i = 0; i < j && spliterator.mo131b(new Consumer() { // from class: j$.util.stream.n1
            @Override // p033j$.util.function.Consumer
            public final void accept(Object obj) {
            }

            @Override // p033j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo131b(m329d); i2++) {
        }
        m329d.mo339m();
        return m329d.mo341a();
    }

    /* renamed from: r */
    public static InterfaceC3112U m360r(InterfaceC2992s.InterfaceC2993a interfaceC2993a, boolean z) {
        return new C3086P(interfaceC2993a, EnumC3166d4.m439c(interfaceC2993a), z);
    }

    /* renamed from: s */
    public static IntStream m359s(InterfaceC2992s.InterfaceC2994b interfaceC2994b, boolean z) {
        return new C3045I0(interfaceC2994b, EnumC3166d4.m439c(interfaceC2994b), z);
    }

    /* renamed from: t */
    public static InterfaceC3169e1 m358t(InterfaceC2992s.InterfaceC2995c interfaceC2995c, boolean z) {
        return new C3145a1(interfaceC2995c, EnumC3166d4.m439c(interfaceC2995c), z);
    }

    /* renamed from: u */
    public static InterfaceC3079N4 m357u(C3312D c3312d, EnumC3205k1 enumC3205k1) {
        Objects.requireNonNull(c3312d);
        Objects.requireNonNull(enumC3205k1);
        return new C3211l1(EnumC3172e4.DOUBLE_VALUE, enumC3205k1, new C3227o(enumC3205k1, c3312d));
    }

    /* renamed from: v */
    public static InterfaceC3079N4 m356v(C3340U c3340u, EnumC3205k1 enumC3205k1) {
        Objects.requireNonNull(c3340u);
        Objects.requireNonNull(enumC3205k1);
        return new C3211l1(EnumC3172e4.INT_VALUE, enumC3205k1, new C3227o(enumC3205k1, c3340u));
    }

    /* renamed from: w */
    public static InterfaceC3079N4 m355w(C3363i0 c3363i0, EnumC3205k1 enumC3205k1) {
        Objects.requireNonNull(c3363i0);
        Objects.requireNonNull(enumC3205k1);
        return new C3211l1(EnumC3172e4.LONG_VALUE, enumC3205k1, new C3227o(enumC3205k1, c3363i0));
    }

    /* renamed from: x */
    public static InterfaceC3079N4 m354x(Predicate predicate, EnumC3205k1 enumC3205k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3205k1);
        return new C3211l1(EnumC3172e4.REFERENCE, enumC3205k1, new C3227o(enumC3205k1, predicate));
    }

    /* renamed from: y */
    public static Stream m353y(InterfaceC2992s interfaceC2992s, boolean z) {
        Objects.requireNonNull(interfaceC2992s);
        return new C3153b3(interfaceC2992s, EnumC3166d4.m439c(interfaceC2992s), z);
    }
}
