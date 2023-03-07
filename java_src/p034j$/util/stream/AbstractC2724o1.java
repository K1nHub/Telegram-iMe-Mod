package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2807D;
import p034j$.wrappers.C2835U;
import p034j$.wrappers.C2858i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2724o1 {
    /* renamed from: a */
    public static void m374a(InterfaceC2696j3 interfaceC2696j3, Double d) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2696j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2696j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m373b(InterfaceC2702k3 interfaceC2702k3, Integer num) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2702k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2702k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m372c(InterfaceC2708l3 interfaceC2708l3, Long l) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2708l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2708l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m371d(InterfaceC2714m3 interfaceC2714m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m370e(InterfaceC2714m3 interfaceC2714m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m369f(InterfaceC2714m3 interfaceC2714m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m368g(InterfaceC2790z1 interfaceC2790z1, InterfaceC2461m interfaceC2461m) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2790z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC2790z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2461m.apply((int) interfaceC2790z1.count());
            interfaceC2790z1.mo337i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m367h(InterfaceC2760u1 interfaceC2760u1, Double[] dArr, int i) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2760u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2760u1.mo292e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m366i(InterfaceC2772w1 interfaceC2772w1, Integer[] numArr, int i) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2772w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2772w1.mo292e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m365j(InterfaceC2784y1 interfaceC2784y1, Long[] lArr, int i) {
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2784y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC2784y1.mo292e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m364k(InterfaceC2760u1 interfaceC2760u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2454f) {
            interfaceC2760u1.mo291g((InterfaceC2454f) consumer);
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2760u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2487s.InterfaceC2488a) interfaceC2760u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m363l(InterfaceC2772w1 interfaceC2772w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2460l) {
            interfaceC2772w1.mo291g((InterfaceC2460l) consumer);
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2772w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2487s.InterfaceC2489b) interfaceC2772w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m362m(InterfaceC2784y1 interfaceC2784y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2465q) {
            interfaceC2784y1.mo291g((InterfaceC2465q) consumer);
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(interfaceC2784y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2487s.InterfaceC2490c) interfaceC2784y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC2760u1 m361n(InterfaceC2760u1 interfaceC2760u1, long j, long j2, InterfaceC2461m interfaceC2461m) {
        if (j == 0 && j2 == interfaceC2760u1.count()) {
            return interfaceC2760u1;
        }
        long j3 = j2 - j;
        InterfaceC2487s.InterfaceC2488a interfaceC2488a = (InterfaceC2487s.InterfaceC2488a) interfaceC2760u1.spliterator();
        InterfaceC2730p1 m320j = AbstractC2779x2.m320j(j3);
        m320j.mo312n(j3);
        for (int i = 0; i < j && interfaceC2488a.mo146k(C2754t1.f1050a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2488a.mo146k(m320j); i2++) {
        }
        m320j.mo336m();
        return m320j.mo338a();
    }

    /* renamed from: o */
    public static InterfaceC2772w1 m360o(InterfaceC2772w1 interfaceC2772w1, long j, long j2, InterfaceC2461m interfaceC2461m) {
        if (j == 0 && j2 == interfaceC2772w1.count()) {
            return interfaceC2772w1;
        }
        long j3 = j2 - j;
        InterfaceC2487s.InterfaceC2489b interfaceC2489b = (InterfaceC2487s.InterfaceC2489b) interfaceC2772w1.spliterator();
        InterfaceC2736q1 m314p = AbstractC2779x2.m314p(j3);
        m314p.mo312n(j3);
        for (int i = 0; i < j && interfaceC2489b.mo139g(C2766v1.f1060a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2489b.mo139g(m314p); i2++) {
        }
        m314p.mo336m();
        return m314p.mo338a();
    }

    /* renamed from: p */
    public static InterfaceC2784y1 m359p(InterfaceC2784y1 interfaceC2784y1, long j, long j2, InterfaceC2461m interfaceC2461m) {
        if (j == 0 && j2 == interfaceC2784y1.count()) {
            return interfaceC2784y1;
        }
        long j3 = j2 - j;
        InterfaceC2487s.InterfaceC2490c interfaceC2490c = (InterfaceC2487s.InterfaceC2490c) interfaceC2784y1.spliterator();
        InterfaceC2742r1 m313q = AbstractC2779x2.m313q(j3);
        m313q.mo312n(j3);
        for (int i = 0; i < j && interfaceC2490c.mo133i(C2778x1.f1073a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2490c.mo133i(m313q); i2++) {
        }
        m313q.mo336m();
        return m313q.mo338a();
    }

    /* renamed from: q */
    public static InterfaceC2493A1 m358q(InterfaceC2493A1 interfaceC2493A1, long j, long j2, InterfaceC2461m interfaceC2461m) {
        if (j == 0 && j2 == interfaceC2493A1.count()) {
            return interfaceC2493A1;
        }
        InterfaceC2487s spliterator = interfaceC2493A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2748s1 m326d = AbstractC2779x2.m326d(j3, interfaceC2461m);
        m326d.mo312n(j3);
        for (int i = 0; i < j && spliterator.mo128b(C2718n1.f994a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo128b(m326d); i2++) {
        }
        m326d.mo336m();
        return m326d.mo338a();
    }

    /* renamed from: r */
    public static InterfaceC2607U m357r(InterfaceC2487s.InterfaceC2488a interfaceC2488a, boolean z) {
        return new C2581P(interfaceC2488a, EnumC2661d4.m436c(interfaceC2488a), z);
    }

    /* renamed from: s */
    public static IntStream m356s(InterfaceC2487s.InterfaceC2489b interfaceC2489b, boolean z) {
        return new C2540I0(interfaceC2489b, EnumC2661d4.m436c(interfaceC2489b), z);
    }

    /* renamed from: t */
    public static InterfaceC2664e1 m355t(InterfaceC2487s.InterfaceC2490c interfaceC2490c, boolean z) {
        return new C2640a1(interfaceC2490c, EnumC2661d4.m436c(interfaceC2490c), z);
    }

    /* renamed from: u */
    public static InterfaceC2574N4 m354u(C2807D c2807d, EnumC2700k1 enumC2700k1) {
        Objects.requireNonNull(c2807d);
        Objects.requireNonNull(enumC2700k1);
        return new C2706l1(EnumC2667e4.DOUBLE_VALUE, enumC2700k1, new C2722o(enumC2700k1, c2807d));
    }

    /* renamed from: v */
    public static InterfaceC2574N4 m353v(C2835U c2835u, EnumC2700k1 enumC2700k1) {
        Objects.requireNonNull(c2835u);
        Objects.requireNonNull(enumC2700k1);
        return new C2706l1(EnumC2667e4.INT_VALUE, enumC2700k1, new C2722o(enumC2700k1, c2835u));
    }

    /* renamed from: w */
    public static InterfaceC2574N4 m352w(C2858i0 c2858i0, EnumC2700k1 enumC2700k1) {
        Objects.requireNonNull(c2858i0);
        Objects.requireNonNull(enumC2700k1);
        return new C2706l1(EnumC2667e4.LONG_VALUE, enumC2700k1, new C2722o(enumC2700k1, c2858i0));
    }

    /* renamed from: x */
    public static InterfaceC2574N4 m351x(Predicate predicate, EnumC2700k1 enumC2700k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2700k1);
        return new C2706l1(EnumC2667e4.REFERENCE, enumC2700k1, new C2722o(enumC2700k1, predicate));
    }

    /* renamed from: y */
    public static Stream m350y(InterfaceC2487s interfaceC2487s, boolean z) {
        Objects.requireNonNull(interfaceC2487s);
        return new C2648b3(interfaceC2487s, EnumC2661d4.m436c(interfaceC2487s), z);
    }
}
