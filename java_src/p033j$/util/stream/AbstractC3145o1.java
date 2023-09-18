package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2874e;
import p033j$.util.function.C2880k;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3228D;
import p033j$.wrappers.C3256U;
import p033j$.wrappers.C3279i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3145o1 {
    /* renamed from: a */
    public static void m377a(InterfaceC3117j3 interfaceC3117j3, Double d) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3117j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3117j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m376b(InterfaceC3123k3 interfaceC3123k3, Integer num) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3123k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3123k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m375c(InterfaceC3129l3 interfaceC3129l3, Long l) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3129l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3129l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m374d(InterfaceC3135m3 interfaceC3135m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m373e(InterfaceC3135m3 interfaceC3135m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m372f(InterfaceC3135m3 interfaceC3135m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m371g(InterfaceC3211z1 interfaceC3211z1, InterfaceC2882m interfaceC2882m) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3211z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3211z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2882m.apply((int) interfaceC3211z1.count());
            interfaceC3211z1.mo340i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m370h(InterfaceC3181u1 interfaceC3181u1, Double[] dArr, int i) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3181u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3181u1.mo295e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m369i(InterfaceC3193w1 interfaceC3193w1, Integer[] numArr, int i) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3193w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3193w1.mo295e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m368j(InterfaceC3205y1 interfaceC3205y1, Long[] lArr, int i) {
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3205y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3205y1.mo295e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m367k(InterfaceC3181u1 interfaceC3181u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2875f) {
            interfaceC3181u1.mo294g((InterfaceC2875f) consumer);
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3181u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2908s.InterfaceC2909a) interfaceC3181u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m366l(InterfaceC3193w1 interfaceC3193w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2881l) {
            interfaceC3193w1.mo294g((InterfaceC2881l) consumer);
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3193w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2908s.InterfaceC2910b) interfaceC3193w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m365m(InterfaceC3205y1 interfaceC3205y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2886q) {
            interfaceC3205y1.mo294g((InterfaceC2886q) consumer);
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(interfaceC3205y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2908s.InterfaceC2911c) interfaceC3205y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3181u1 m364n(InterfaceC3181u1 interfaceC3181u1, long j, long j2, InterfaceC2882m interfaceC2882m) {
        if (j == 0 && j2 == interfaceC3181u1.count()) {
            return interfaceC3181u1;
        }
        long j3 = j2 - j;
        InterfaceC2908s.InterfaceC2909a interfaceC2909a = (InterfaceC2908s.InterfaceC2909a) interfaceC3181u1.spliterator();
        InterfaceC3151p1 m323j = AbstractC3200x2.m323j(j3);
        m323j.mo315n(j3);
        for (int i = 0; i < j && interfaceC2909a.mo149k(new InterfaceC2875f() { // from class: j$.util.stream.t1
            @Override // p033j$.util.function.InterfaceC2875f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2875f
            /* renamed from: j */
            public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
                Objects.requireNonNull(interfaceC2875f);
                return new C2874e(this, interfaceC2875f);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2909a.mo149k(m323j); i2++) {
        }
        m323j.mo339m();
        return m323j.mo341a();
    }

    /* renamed from: o */
    public static InterfaceC3193w1 m363o(InterfaceC3193w1 interfaceC3193w1, long j, long j2, InterfaceC2882m interfaceC2882m) {
        if (j == 0 && j2 == interfaceC3193w1.count()) {
            return interfaceC3193w1;
        }
        long j3 = j2 - j;
        InterfaceC2908s.InterfaceC2910b interfaceC2910b = (InterfaceC2908s.InterfaceC2910b) interfaceC3193w1.spliterator();
        InterfaceC3157q1 m317p = AbstractC3200x2.m317p(j3);
        m317p.mo315n(j3);
        for (int i = 0; i < j && interfaceC2910b.mo142g(new InterfaceC2881l() { // from class: j$.util.stream.v1
            @Override // p033j$.util.function.InterfaceC2881l
            public final void accept(int i2) {
            }

            @Override // p033j$.util.function.InterfaceC2881l
            /* renamed from: l */
            public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
                Objects.requireNonNull(interfaceC2881l);
                return new C2880k(this, interfaceC2881l);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2910b.mo142g(m317p); i2++) {
        }
        m317p.mo339m();
        return m317p.mo341a();
    }

    /* renamed from: p */
    public static InterfaceC3205y1 m362p(InterfaceC3205y1 interfaceC3205y1, long j, long j2, InterfaceC2882m interfaceC2882m) {
        if (j == 0 && j2 == interfaceC3205y1.count()) {
            return interfaceC3205y1;
        }
        long j3 = j2 - j;
        InterfaceC2908s.InterfaceC2911c interfaceC2911c = (InterfaceC2908s.InterfaceC2911c) interfaceC3205y1.spliterator();
        InterfaceC3163r1 m316q = AbstractC3200x2.m316q(j3);
        m316q.mo315n(j3);
        for (int i = 0; i < j && interfaceC2911c.mo136i(new InterfaceC2886q() { // from class: j$.util.stream.x1
            @Override // p033j$.util.function.InterfaceC2886q
            public final void accept(long j4) {
            }

            @Override // p033j$.util.function.InterfaceC2886q
            /* renamed from: f */
            public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
                Objects.requireNonNull(interfaceC2886q);
                return new C2885p(this, interfaceC2886q);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2911c.mo136i(m316q); i2++) {
        }
        m316q.mo339m();
        return m316q.mo341a();
    }

    /* renamed from: q */
    public static InterfaceC2914A1 m361q(InterfaceC2914A1 interfaceC2914A1, long j, long j2, InterfaceC2882m interfaceC2882m) {
        if (j == 0 && j2 == interfaceC2914A1.count()) {
            return interfaceC2914A1;
        }
        InterfaceC2908s spliterator = interfaceC2914A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3169s1 m329d = AbstractC3200x2.m329d(j3, interfaceC2882m);
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
    public static InterfaceC3028U m360r(InterfaceC2908s.InterfaceC2909a interfaceC2909a, boolean z) {
        return new C3002P(interfaceC2909a, EnumC3082d4.m439c(interfaceC2909a), z);
    }

    /* renamed from: s */
    public static IntStream m359s(InterfaceC2908s.InterfaceC2910b interfaceC2910b, boolean z) {
        return new C2961I0(interfaceC2910b, EnumC3082d4.m439c(interfaceC2910b), z);
    }

    /* renamed from: t */
    public static InterfaceC3085e1 m358t(InterfaceC2908s.InterfaceC2911c interfaceC2911c, boolean z) {
        return new C3061a1(interfaceC2911c, EnumC3082d4.m439c(interfaceC2911c), z);
    }

    /* renamed from: u */
    public static InterfaceC2995N4 m357u(C3228D c3228d, EnumC3121k1 enumC3121k1) {
        Objects.requireNonNull(c3228d);
        Objects.requireNonNull(enumC3121k1);
        return new C3127l1(EnumC3088e4.DOUBLE_VALUE, enumC3121k1, new C3143o(enumC3121k1, c3228d));
    }

    /* renamed from: v */
    public static InterfaceC2995N4 m356v(C3256U c3256u, EnumC3121k1 enumC3121k1) {
        Objects.requireNonNull(c3256u);
        Objects.requireNonNull(enumC3121k1);
        return new C3127l1(EnumC3088e4.INT_VALUE, enumC3121k1, new C3143o(enumC3121k1, c3256u));
    }

    /* renamed from: w */
    public static InterfaceC2995N4 m355w(C3279i0 c3279i0, EnumC3121k1 enumC3121k1) {
        Objects.requireNonNull(c3279i0);
        Objects.requireNonNull(enumC3121k1);
        return new C3127l1(EnumC3088e4.LONG_VALUE, enumC3121k1, new C3143o(enumC3121k1, c3279i0));
    }

    /* renamed from: x */
    public static InterfaceC2995N4 m354x(Predicate predicate, EnumC3121k1 enumC3121k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3121k1);
        return new C3127l1(EnumC3088e4.REFERENCE, enumC3121k1, new C3143o(enumC3121k1, predicate));
    }

    /* renamed from: y */
    public static Stream m353y(InterfaceC2908s interfaceC2908s, boolean z) {
        Objects.requireNonNull(interfaceC2908s);
        return new C3069b3(interfaceC2908s, EnumC3082d4.m439c(interfaceC2908s), z);
    }
}
