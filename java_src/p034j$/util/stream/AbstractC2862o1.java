package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2945D;
import p034j$.wrappers.C2973U;
import p034j$.wrappers.C2996i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2862o1 {
    /* renamed from: a */
    public static void m373a(InterfaceC2834j3 interfaceC2834j3, Double d) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2834j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2834j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m372b(InterfaceC2840k3 interfaceC2840k3, Integer num) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2840k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2840k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m371c(InterfaceC2846l3 interfaceC2846l3, Long l) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2846l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2846l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m370d(InterfaceC2852m3 interfaceC2852m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m369e(InterfaceC2852m3 interfaceC2852m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m368f(InterfaceC2852m3 interfaceC2852m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m367g(InterfaceC2928z1 interfaceC2928z1, InterfaceC2599m interfaceC2599m) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2928z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC2928z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2599m.apply((int) interfaceC2928z1.count());
            interfaceC2928z1.mo336i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m366h(InterfaceC2898u1 interfaceC2898u1, Double[] dArr, int i) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2898u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2898u1.mo291e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m365i(InterfaceC2910w1 interfaceC2910w1, Integer[] numArr, int i) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2910w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2910w1.mo291e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m364j(InterfaceC2922y1 interfaceC2922y1, Long[] lArr, int i) {
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2922y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC2922y1.mo291e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m363k(InterfaceC2898u1 interfaceC2898u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2592f) {
            interfaceC2898u1.mo290g((InterfaceC2592f) consumer);
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2898u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2625s.InterfaceC2626a) interfaceC2898u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m362l(InterfaceC2910w1 interfaceC2910w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2598l) {
            interfaceC2910w1.mo290g((InterfaceC2598l) consumer);
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2910w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2625s.InterfaceC2627b) interfaceC2910w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m361m(InterfaceC2922y1 interfaceC2922y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2603q) {
            interfaceC2922y1.mo290g((InterfaceC2603q) consumer);
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(interfaceC2922y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2625s.InterfaceC2628c) interfaceC2922y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC2898u1 m360n(InterfaceC2898u1 interfaceC2898u1, long j, long j2, InterfaceC2599m interfaceC2599m) {
        if (j == 0 && j2 == interfaceC2898u1.count()) {
            return interfaceC2898u1;
        }
        long j3 = j2 - j;
        InterfaceC2625s.InterfaceC2626a interfaceC2626a = (InterfaceC2625s.InterfaceC2626a) interfaceC2898u1.spliterator();
        InterfaceC2868p1 m319j = AbstractC2917x2.m319j(j3);
        m319j.mo311n(j3);
        for (int i = 0; i < j && interfaceC2626a.mo145k(C2892t1.f1056a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2626a.mo145k(m319j); i2++) {
        }
        m319j.mo335m();
        return m319j.mo337a();
    }

    /* renamed from: o */
    public static InterfaceC2910w1 m359o(InterfaceC2910w1 interfaceC2910w1, long j, long j2, InterfaceC2599m interfaceC2599m) {
        if (j == 0 && j2 == interfaceC2910w1.count()) {
            return interfaceC2910w1;
        }
        long j3 = j2 - j;
        InterfaceC2625s.InterfaceC2627b interfaceC2627b = (InterfaceC2625s.InterfaceC2627b) interfaceC2910w1.spliterator();
        InterfaceC2874q1 m313p = AbstractC2917x2.m313p(j3);
        m313p.mo311n(j3);
        for (int i = 0; i < j && interfaceC2627b.mo138g(C2904v1.f1066a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2627b.mo138g(m313p); i2++) {
        }
        m313p.mo335m();
        return m313p.mo337a();
    }

    /* renamed from: p */
    public static InterfaceC2922y1 m358p(InterfaceC2922y1 interfaceC2922y1, long j, long j2, InterfaceC2599m interfaceC2599m) {
        if (j == 0 && j2 == interfaceC2922y1.count()) {
            return interfaceC2922y1;
        }
        long j3 = j2 - j;
        InterfaceC2625s.InterfaceC2628c interfaceC2628c = (InterfaceC2625s.InterfaceC2628c) interfaceC2922y1.spliterator();
        InterfaceC2880r1 m312q = AbstractC2917x2.m312q(j3);
        m312q.mo311n(j3);
        for (int i = 0; i < j && interfaceC2628c.mo132i(C2916x1.f1079a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2628c.mo132i(m312q); i2++) {
        }
        m312q.mo335m();
        return m312q.mo337a();
    }

    /* renamed from: q */
    public static InterfaceC2631A1 m357q(InterfaceC2631A1 interfaceC2631A1, long j, long j2, InterfaceC2599m interfaceC2599m) {
        if (j == 0 && j2 == interfaceC2631A1.count()) {
            return interfaceC2631A1;
        }
        InterfaceC2625s spliterator = interfaceC2631A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2886s1 m325d = AbstractC2917x2.m325d(j3, interfaceC2599m);
        m325d.mo311n(j3);
        for (int i = 0; i < j && spliterator.mo127b(C2856n1.f1000a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo127b(m325d); i2++) {
        }
        m325d.mo335m();
        return m325d.mo337a();
    }

    /* renamed from: r */
    public static InterfaceC2745U m356r(InterfaceC2625s.InterfaceC2626a interfaceC2626a, boolean z) {
        return new C2719P(interfaceC2626a, EnumC2799d4.m435c(interfaceC2626a), z);
    }

    /* renamed from: s */
    public static IntStream m355s(InterfaceC2625s.InterfaceC2627b interfaceC2627b, boolean z) {
        return new C2678I0(interfaceC2627b, EnumC2799d4.m435c(interfaceC2627b), z);
    }

    /* renamed from: t */
    public static InterfaceC2802e1 m354t(InterfaceC2625s.InterfaceC2628c interfaceC2628c, boolean z) {
        return new C2778a1(interfaceC2628c, EnumC2799d4.m435c(interfaceC2628c), z);
    }

    /* renamed from: u */
    public static InterfaceC2712N4 m353u(C2945D c2945d, EnumC2838k1 enumC2838k1) {
        Objects.requireNonNull(c2945d);
        Objects.requireNonNull(enumC2838k1);
        return new C2844l1(EnumC2805e4.DOUBLE_VALUE, enumC2838k1, new C2860o(enumC2838k1, c2945d));
    }

    /* renamed from: v */
    public static InterfaceC2712N4 m352v(C2973U c2973u, EnumC2838k1 enumC2838k1) {
        Objects.requireNonNull(c2973u);
        Objects.requireNonNull(enumC2838k1);
        return new C2844l1(EnumC2805e4.INT_VALUE, enumC2838k1, new C2860o(enumC2838k1, c2973u));
    }

    /* renamed from: w */
    public static InterfaceC2712N4 m351w(C2996i0 c2996i0, EnumC2838k1 enumC2838k1) {
        Objects.requireNonNull(c2996i0);
        Objects.requireNonNull(enumC2838k1);
        return new C2844l1(EnumC2805e4.LONG_VALUE, enumC2838k1, new C2860o(enumC2838k1, c2996i0));
    }

    /* renamed from: x */
    public static InterfaceC2712N4 m350x(Predicate predicate, EnumC2838k1 enumC2838k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2838k1);
        return new C2844l1(EnumC2805e4.REFERENCE, enumC2838k1, new C2860o(enumC2838k1, predicate));
    }

    /* renamed from: y */
    public static Stream m349y(InterfaceC2625s interfaceC2625s, boolean z) {
        Objects.requireNonNull(interfaceC2625s);
        return new C2786b3(interfaceC2625s, EnumC2799d4.m435c(interfaceC2625s), z);
    }
}
