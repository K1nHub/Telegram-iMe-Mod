package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2931D;
import p034j$.wrappers.C2959U;
import p034j$.wrappers.C2982i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2848o1 {
    /* renamed from: a */
    public static void m374a(InterfaceC2820j3 interfaceC2820j3, Double d) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2820j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2820j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m373b(InterfaceC2826k3 interfaceC2826k3, Integer num) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2826k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2826k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m372c(InterfaceC2832l3 interfaceC2832l3, Long l) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2832l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2832l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m371d(InterfaceC2838m3 interfaceC2838m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m370e(InterfaceC2838m3 interfaceC2838m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m369f(InterfaceC2838m3 interfaceC2838m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m368g(InterfaceC2914z1 interfaceC2914z1, InterfaceC2585m interfaceC2585m) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2914z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC2914z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2585m.apply((int) interfaceC2914z1.count());
            interfaceC2914z1.mo337i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m367h(InterfaceC2884u1 interfaceC2884u1, Double[] dArr, int i) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2884u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2884u1.mo292e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m366i(InterfaceC2896w1 interfaceC2896w1, Integer[] numArr, int i) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2896w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2896w1.mo292e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m365j(InterfaceC2908y1 interfaceC2908y1, Long[] lArr, int i) {
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2908y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC2908y1.mo292e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m364k(InterfaceC2884u1 interfaceC2884u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2578f) {
            interfaceC2884u1.mo291g((InterfaceC2578f) consumer);
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2884u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2611s.InterfaceC2612a) interfaceC2884u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m363l(InterfaceC2896w1 interfaceC2896w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2584l) {
            interfaceC2896w1.mo291g((InterfaceC2584l) consumer);
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2896w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2611s.InterfaceC2613b) interfaceC2896w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m362m(InterfaceC2908y1 interfaceC2908y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2589q) {
            interfaceC2908y1.mo291g((InterfaceC2589q) consumer);
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(interfaceC2908y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2611s.InterfaceC2614c) interfaceC2908y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC2884u1 m361n(InterfaceC2884u1 interfaceC2884u1, long j, long j2, InterfaceC2585m interfaceC2585m) {
        if (j == 0 && j2 == interfaceC2884u1.count()) {
            return interfaceC2884u1;
        }
        long j3 = j2 - j;
        InterfaceC2611s.InterfaceC2612a interfaceC2612a = (InterfaceC2611s.InterfaceC2612a) interfaceC2884u1.spliterator();
        InterfaceC2854p1 m320j = AbstractC2903x2.m320j(j3);
        m320j.mo312n(j3);
        for (int i = 0; i < j && interfaceC2612a.mo146k(C2878t1.f1055a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2612a.mo146k(m320j); i2++) {
        }
        m320j.mo336m();
        return m320j.mo338a();
    }

    /* renamed from: o */
    public static InterfaceC2896w1 m360o(InterfaceC2896w1 interfaceC2896w1, long j, long j2, InterfaceC2585m interfaceC2585m) {
        if (j == 0 && j2 == interfaceC2896w1.count()) {
            return interfaceC2896w1;
        }
        long j3 = j2 - j;
        InterfaceC2611s.InterfaceC2613b interfaceC2613b = (InterfaceC2611s.InterfaceC2613b) interfaceC2896w1.spliterator();
        InterfaceC2860q1 m314p = AbstractC2903x2.m314p(j3);
        m314p.mo312n(j3);
        for (int i = 0; i < j && interfaceC2613b.mo139g(C2890v1.f1065a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2613b.mo139g(m314p); i2++) {
        }
        m314p.mo336m();
        return m314p.mo338a();
    }

    /* renamed from: p */
    public static InterfaceC2908y1 m359p(InterfaceC2908y1 interfaceC2908y1, long j, long j2, InterfaceC2585m interfaceC2585m) {
        if (j == 0 && j2 == interfaceC2908y1.count()) {
            return interfaceC2908y1;
        }
        long j3 = j2 - j;
        InterfaceC2611s.InterfaceC2614c interfaceC2614c = (InterfaceC2611s.InterfaceC2614c) interfaceC2908y1.spliterator();
        InterfaceC2866r1 m313q = AbstractC2903x2.m313q(j3);
        m313q.mo312n(j3);
        for (int i = 0; i < j && interfaceC2614c.mo133i(C2902x1.f1078a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2614c.mo133i(m313q); i2++) {
        }
        m313q.mo336m();
        return m313q.mo338a();
    }

    /* renamed from: q */
    public static InterfaceC2617A1 m358q(InterfaceC2617A1 interfaceC2617A1, long j, long j2, InterfaceC2585m interfaceC2585m) {
        if (j == 0 && j2 == interfaceC2617A1.count()) {
            return interfaceC2617A1;
        }
        InterfaceC2611s spliterator = interfaceC2617A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2872s1 m326d = AbstractC2903x2.m326d(j3, interfaceC2585m);
        m326d.mo312n(j3);
        for (int i = 0; i < j && spliterator.mo128b(C2842n1.f999a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo128b(m326d); i2++) {
        }
        m326d.mo336m();
        return m326d.mo338a();
    }

    /* renamed from: r */
    public static InterfaceC2731U m357r(InterfaceC2611s.InterfaceC2612a interfaceC2612a, boolean z) {
        return new C2705P(interfaceC2612a, EnumC2785d4.m436c(interfaceC2612a), z);
    }

    /* renamed from: s */
    public static IntStream m356s(InterfaceC2611s.InterfaceC2613b interfaceC2613b, boolean z) {
        return new C2664I0(interfaceC2613b, EnumC2785d4.m436c(interfaceC2613b), z);
    }

    /* renamed from: t */
    public static InterfaceC2788e1 m355t(InterfaceC2611s.InterfaceC2614c interfaceC2614c, boolean z) {
        return new C2764a1(interfaceC2614c, EnumC2785d4.m436c(interfaceC2614c), z);
    }

    /* renamed from: u */
    public static InterfaceC2698N4 m354u(C2931D c2931d, EnumC2824k1 enumC2824k1) {
        Objects.requireNonNull(c2931d);
        Objects.requireNonNull(enumC2824k1);
        return new C2830l1(EnumC2791e4.DOUBLE_VALUE, enumC2824k1, new C2846o(enumC2824k1, c2931d));
    }

    /* renamed from: v */
    public static InterfaceC2698N4 m353v(C2959U c2959u, EnumC2824k1 enumC2824k1) {
        Objects.requireNonNull(c2959u);
        Objects.requireNonNull(enumC2824k1);
        return new C2830l1(EnumC2791e4.INT_VALUE, enumC2824k1, new C2846o(enumC2824k1, c2959u));
    }

    /* renamed from: w */
    public static InterfaceC2698N4 m352w(C2982i0 c2982i0, EnumC2824k1 enumC2824k1) {
        Objects.requireNonNull(c2982i0);
        Objects.requireNonNull(enumC2824k1);
        return new C2830l1(EnumC2791e4.LONG_VALUE, enumC2824k1, new C2846o(enumC2824k1, c2982i0));
    }

    /* renamed from: x */
    public static InterfaceC2698N4 m351x(Predicate predicate, EnumC2824k1 enumC2824k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2824k1);
        return new C2830l1(EnumC2791e4.REFERENCE, enumC2824k1, new C2846o(enumC2824k1, predicate));
    }

    /* renamed from: y */
    public static Stream m350y(InterfaceC2611s interfaceC2611s, boolean z) {
        Objects.requireNonNull(interfaceC2611s);
        return new C2772b3(interfaceC2611s, EnumC2785d4.m436c(interfaceC2611s), z);
    }
}
