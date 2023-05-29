package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3047D;
import p034j$.wrappers.C3075U;
import p034j$.wrappers.C3098i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2964o1 {
    /* renamed from: a */
    public static void m359a(InterfaceC2936j3 interfaceC2936j3, Double d) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC2936j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2936j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m358b(InterfaceC2942k3 interfaceC2942k3, Integer num) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC2942k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2942k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m357c(InterfaceC2948l3 interfaceC2948l3, Long l) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC2948l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2948l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m356d(InterfaceC2954m3 interfaceC2954m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m355e(InterfaceC2954m3 interfaceC2954m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m354f(InterfaceC2954m3 interfaceC2954m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m353g(InterfaceC3030z1 interfaceC3030z1, InterfaceC2701m interfaceC2701m) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3030z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3030z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2701m.apply((int) interfaceC3030z1.count());
            interfaceC3030z1.mo322i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m352h(InterfaceC3000u1 interfaceC3000u1, Double[] dArr, int i) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3000u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3000u1.mo277e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m351i(InterfaceC3012w1 interfaceC3012w1, Integer[] numArr, int i) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3012w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3012w1.mo277e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m350j(InterfaceC3024y1 interfaceC3024y1, Long[] lArr, int i) {
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3024y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3024y1.mo277e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m349k(InterfaceC3000u1 interfaceC3000u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2694f) {
            interfaceC3000u1.mo276g((InterfaceC2694f) consumer);
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3000u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2727s.InterfaceC2728a) interfaceC3000u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m348l(InterfaceC3012w1 interfaceC3012w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2700l) {
            interfaceC3012w1.mo276g((InterfaceC2700l) consumer);
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3012w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2727s.InterfaceC2729b) interfaceC3012w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m347m(InterfaceC3024y1 interfaceC3024y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2705q) {
            interfaceC3024y1.mo276g((InterfaceC2705q) consumer);
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(interfaceC3024y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2727s.InterfaceC2730c) interfaceC3024y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3000u1 m346n(InterfaceC3000u1 interfaceC3000u1, long j, long j2, InterfaceC2701m interfaceC2701m) {
        if (j == 0 && j2 == interfaceC3000u1.count()) {
            return interfaceC3000u1;
        }
        long j3 = j2 - j;
        InterfaceC2727s.InterfaceC2728a interfaceC2728a = (InterfaceC2727s.InterfaceC2728a) interfaceC3000u1.spliterator();
        InterfaceC2970p1 m305j = AbstractC3019x2.m305j(j3);
        m305j.mo297n(j3);
        for (int i = 0; i < j && interfaceC2728a.mo131k(C2994t1.f1059a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2728a.mo131k(m305j); i2++) {
        }
        m305j.mo321m();
        return m305j.mo323a();
    }

    /* renamed from: o */
    public static InterfaceC3012w1 m345o(InterfaceC3012w1 interfaceC3012w1, long j, long j2, InterfaceC2701m interfaceC2701m) {
        if (j == 0 && j2 == interfaceC3012w1.count()) {
            return interfaceC3012w1;
        }
        long j3 = j2 - j;
        InterfaceC2727s.InterfaceC2729b interfaceC2729b = (InterfaceC2727s.InterfaceC2729b) interfaceC3012w1.spliterator();
        InterfaceC2976q1 m299p = AbstractC3019x2.m299p(j3);
        m299p.mo297n(j3);
        for (int i = 0; i < j && interfaceC2729b.mo124g(C3006v1.f1069a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2729b.mo124g(m299p); i2++) {
        }
        m299p.mo321m();
        return m299p.mo323a();
    }

    /* renamed from: p */
    public static InterfaceC3024y1 m344p(InterfaceC3024y1 interfaceC3024y1, long j, long j2, InterfaceC2701m interfaceC2701m) {
        if (j == 0 && j2 == interfaceC3024y1.count()) {
            return interfaceC3024y1;
        }
        long j3 = j2 - j;
        InterfaceC2727s.InterfaceC2730c interfaceC2730c = (InterfaceC2727s.InterfaceC2730c) interfaceC3024y1.spliterator();
        InterfaceC2982r1 m298q = AbstractC3019x2.m298q(j3);
        m298q.mo297n(j3);
        for (int i = 0; i < j && interfaceC2730c.mo118i(C3018x1.f1082a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2730c.mo118i(m298q); i2++) {
        }
        m298q.mo321m();
        return m298q.mo323a();
    }

    /* renamed from: q */
    public static InterfaceC2733A1 m343q(InterfaceC2733A1 interfaceC2733A1, long j, long j2, InterfaceC2701m interfaceC2701m) {
        if (j == 0 && j2 == interfaceC2733A1.count()) {
            return interfaceC2733A1;
        }
        InterfaceC2727s spliterator = interfaceC2733A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2988s1 m311d = AbstractC3019x2.m311d(j3, interfaceC2701m);
        m311d.mo297n(j3);
        for (int i = 0; i < j && spliterator.mo113b(C2958n1.f1003a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo113b(m311d); i2++) {
        }
        m311d.mo321m();
        return m311d.mo323a();
    }

    /* renamed from: r */
    public static InterfaceC2847U m342r(InterfaceC2727s.InterfaceC2728a interfaceC2728a, boolean z) {
        return new C2821P(interfaceC2728a, EnumC2901d4.m421c(interfaceC2728a), z);
    }

    /* renamed from: s */
    public static IntStream m341s(InterfaceC2727s.InterfaceC2729b interfaceC2729b, boolean z) {
        return new C2780I0(interfaceC2729b, EnumC2901d4.m421c(interfaceC2729b), z);
    }

    /* renamed from: t */
    public static InterfaceC2904e1 m340t(InterfaceC2727s.InterfaceC2730c interfaceC2730c, boolean z) {
        return new C2880a1(interfaceC2730c, EnumC2901d4.m421c(interfaceC2730c), z);
    }

    /* renamed from: u */
    public static InterfaceC2814N4 m339u(C3047D c3047d, EnumC2940k1 enumC2940k1) {
        Objects.requireNonNull(c3047d);
        Objects.requireNonNull(enumC2940k1);
        return new C2946l1(EnumC2907e4.DOUBLE_VALUE, enumC2940k1, new C2962o(enumC2940k1, c3047d));
    }

    /* renamed from: v */
    public static InterfaceC2814N4 m338v(C3075U c3075u, EnumC2940k1 enumC2940k1) {
        Objects.requireNonNull(c3075u);
        Objects.requireNonNull(enumC2940k1);
        return new C2946l1(EnumC2907e4.INT_VALUE, enumC2940k1, new C2962o(enumC2940k1, c3075u));
    }

    /* renamed from: w */
    public static InterfaceC2814N4 m337w(C3098i0 c3098i0, EnumC2940k1 enumC2940k1) {
        Objects.requireNonNull(c3098i0);
        Objects.requireNonNull(enumC2940k1);
        return new C2946l1(EnumC2907e4.LONG_VALUE, enumC2940k1, new C2962o(enumC2940k1, c3098i0));
    }

    /* renamed from: x */
    public static InterfaceC2814N4 m336x(Predicate predicate, EnumC2940k1 enumC2940k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2940k1);
        return new C2946l1(EnumC2907e4.REFERENCE, enumC2940k1, new C2962o(enumC2940k1, predicate));
    }

    /* renamed from: y */
    public static Stream m335y(InterfaceC2727s interfaceC2727s, boolean z) {
        Objects.requireNonNull(interfaceC2727s);
        return new C2888b3(interfaceC2727s, EnumC2901d4.m421c(interfaceC2727s), z);
    }
}
