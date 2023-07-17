package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3224i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3090o1 {
    /* renamed from: a */
    public static void m359a(InterfaceC3062j3 interfaceC3062j3, Double d) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3062j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3062j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m358b(InterfaceC3068k3 interfaceC3068k3, Integer num) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3068k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3068k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m357c(InterfaceC3074l3 interfaceC3074l3, Long l) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3074l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3074l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m356d(InterfaceC3080m3 interfaceC3080m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m355e(InterfaceC3080m3 interfaceC3080m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m354f(InterfaceC3080m3 interfaceC3080m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m353g(InterfaceC3156z1 interfaceC3156z1, InterfaceC2827m interfaceC2827m) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3156z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3156z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2827m.apply((int) interfaceC3156z1.count());
            interfaceC3156z1.mo322i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m352h(InterfaceC3126u1 interfaceC3126u1, Double[] dArr, int i) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3126u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3126u1.mo277e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m351i(InterfaceC3138w1 interfaceC3138w1, Integer[] numArr, int i) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3138w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3138w1.mo277e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m350j(InterfaceC3150y1 interfaceC3150y1, Long[] lArr, int i) {
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3150y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3150y1.mo277e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m349k(InterfaceC3126u1 interfaceC3126u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            interfaceC3126u1.mo276g((InterfaceC2820f) consumer);
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3126u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2853s.InterfaceC2854a) interfaceC3126u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m348l(InterfaceC3138w1 interfaceC3138w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            interfaceC3138w1.mo276g((InterfaceC2826l) consumer);
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3138w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2853s.InterfaceC2855b) interfaceC3138w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m347m(InterfaceC3150y1 interfaceC3150y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            interfaceC3150y1.mo276g((InterfaceC2831q) consumer);
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(interfaceC3150y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2853s.InterfaceC2856c) interfaceC3150y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3126u1 m346n(InterfaceC3126u1 interfaceC3126u1, long j, long j2, InterfaceC2827m interfaceC2827m) {
        if (j == 0 && j2 == interfaceC3126u1.count()) {
            return interfaceC3126u1;
        }
        long j3 = j2 - j;
        InterfaceC2853s.InterfaceC2854a interfaceC2854a = (InterfaceC2853s.InterfaceC2854a) interfaceC3126u1.spliterator();
        InterfaceC3096p1 m305j = AbstractC3145x2.m305j(j3);
        m305j.mo297n(j3);
        for (int i = 0; i < j && interfaceC2854a.mo131k(C3120t1.f1141a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2854a.mo131k(m305j); i2++) {
        }
        m305j.mo321m();
        return m305j.mo323a();
    }

    /* renamed from: o */
    public static InterfaceC3138w1 m345o(InterfaceC3138w1 interfaceC3138w1, long j, long j2, InterfaceC2827m interfaceC2827m) {
        if (j == 0 && j2 == interfaceC3138w1.count()) {
            return interfaceC3138w1;
        }
        long j3 = j2 - j;
        InterfaceC2853s.InterfaceC2855b interfaceC2855b = (InterfaceC2853s.InterfaceC2855b) interfaceC3138w1.spliterator();
        InterfaceC3102q1 m299p = AbstractC3145x2.m299p(j3);
        m299p.mo297n(j3);
        for (int i = 0; i < j && interfaceC2855b.mo124g(C3132v1.f1151a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2855b.mo124g(m299p); i2++) {
        }
        m299p.mo321m();
        return m299p.mo323a();
    }

    /* renamed from: p */
    public static InterfaceC3150y1 m344p(InterfaceC3150y1 interfaceC3150y1, long j, long j2, InterfaceC2827m interfaceC2827m) {
        if (j == 0 && j2 == interfaceC3150y1.count()) {
            return interfaceC3150y1;
        }
        long j3 = j2 - j;
        InterfaceC2853s.InterfaceC2856c interfaceC2856c = (InterfaceC2853s.InterfaceC2856c) interfaceC3150y1.spliterator();
        InterfaceC3108r1 m298q = AbstractC3145x2.m298q(j3);
        m298q.mo297n(j3);
        for (int i = 0; i < j && interfaceC2856c.mo118i(C3144x1.f1164a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2856c.mo118i(m298q); i2++) {
        }
        m298q.mo321m();
        return m298q.mo323a();
    }

    /* renamed from: q */
    public static InterfaceC2859A1 m343q(InterfaceC2859A1 interfaceC2859A1, long j, long j2, InterfaceC2827m interfaceC2827m) {
        if (j == 0 && j2 == interfaceC2859A1.count()) {
            return interfaceC2859A1;
        }
        InterfaceC2853s spliterator = interfaceC2859A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3114s1 m311d = AbstractC3145x2.m311d(j3, interfaceC2827m);
        m311d.mo297n(j3);
        for (int i = 0; i < j && spliterator.mo113b(C3084n1.f1085a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo113b(m311d); i2++) {
        }
        m311d.mo321m();
        return m311d.mo323a();
    }

    /* renamed from: r */
    public static InterfaceC2973U m342r(InterfaceC2853s.InterfaceC2854a interfaceC2854a, boolean z) {
        return new C2947P(interfaceC2854a, EnumC3027d4.m421c(interfaceC2854a), z);
    }

    /* renamed from: s */
    public static IntStream m341s(InterfaceC2853s.InterfaceC2855b interfaceC2855b, boolean z) {
        return new C2906I0(interfaceC2855b, EnumC3027d4.m421c(interfaceC2855b), z);
    }

    /* renamed from: t */
    public static InterfaceC3030e1 m340t(InterfaceC2853s.InterfaceC2856c interfaceC2856c, boolean z) {
        return new C3006a1(interfaceC2856c, EnumC3027d4.m421c(interfaceC2856c), z);
    }

    /* renamed from: u */
    public static InterfaceC2940N4 m339u(C3173D c3173d, EnumC3066k1 enumC3066k1) {
        Objects.requireNonNull(c3173d);
        Objects.requireNonNull(enumC3066k1);
        return new C3072l1(EnumC3033e4.DOUBLE_VALUE, enumC3066k1, new C3088o(enumC3066k1, c3173d));
    }

    /* renamed from: v */
    public static InterfaceC2940N4 m338v(C3201U c3201u, EnumC3066k1 enumC3066k1) {
        Objects.requireNonNull(c3201u);
        Objects.requireNonNull(enumC3066k1);
        return new C3072l1(EnumC3033e4.INT_VALUE, enumC3066k1, new C3088o(enumC3066k1, c3201u));
    }

    /* renamed from: w */
    public static InterfaceC2940N4 m337w(C3224i0 c3224i0, EnumC3066k1 enumC3066k1) {
        Objects.requireNonNull(c3224i0);
        Objects.requireNonNull(enumC3066k1);
        return new C3072l1(EnumC3033e4.LONG_VALUE, enumC3066k1, new C3088o(enumC3066k1, c3224i0));
    }

    /* renamed from: x */
    public static InterfaceC2940N4 m336x(Predicate predicate, EnumC3066k1 enumC3066k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3066k1);
        return new C3072l1(EnumC3033e4.REFERENCE, enumC3066k1, new C3088o(enumC3066k1, predicate));
    }

    /* renamed from: y */
    public static Stream m335y(InterfaceC2853s interfaceC2853s, boolean z) {
        Objects.requireNonNull(interfaceC2853s);
        return new C3014b3(interfaceC2853s, EnumC3027d4.m421c(interfaceC2853s), z);
    }
}
