package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3052D;
import p034j$.wrappers.C3080U;
import p034j$.wrappers.C3103i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2969o1 {
    /* renamed from: a */
    public static void m359a(InterfaceC2941j3 interfaceC2941j3, Double d) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC2941j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2941j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m358b(InterfaceC2947k3 interfaceC2947k3, Integer num) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC2947k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2947k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m357c(InterfaceC2953l3 interfaceC2953l3, Long l) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC2953l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2953l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m356d(InterfaceC2959m3 interfaceC2959m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m355e(InterfaceC2959m3 interfaceC2959m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m354f(InterfaceC2959m3 interfaceC2959m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m353g(InterfaceC3035z1 interfaceC3035z1, InterfaceC2706m interfaceC2706m) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3035z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3035z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2706m.apply((int) interfaceC3035z1.count());
            interfaceC3035z1.mo322i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m352h(InterfaceC3005u1 interfaceC3005u1, Double[] dArr, int i) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3005u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3005u1.mo277e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m351i(InterfaceC3017w1 interfaceC3017w1, Integer[] numArr, int i) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3017w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3017w1.mo277e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m350j(InterfaceC3029y1 interfaceC3029y1, Long[] lArr, int i) {
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3029y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3029y1.mo277e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m349k(InterfaceC3005u1 interfaceC3005u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2699f) {
            interfaceC3005u1.mo276g((InterfaceC2699f) consumer);
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3005u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2732s.InterfaceC2733a) interfaceC3005u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m348l(InterfaceC3017w1 interfaceC3017w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2705l) {
            interfaceC3017w1.mo276g((InterfaceC2705l) consumer);
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3017w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2732s.InterfaceC2734b) interfaceC3017w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m347m(InterfaceC3029y1 interfaceC3029y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2710q) {
            interfaceC3029y1.mo276g((InterfaceC2710q) consumer);
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(interfaceC3029y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2732s.InterfaceC2735c) interfaceC3029y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3005u1 m346n(InterfaceC3005u1 interfaceC3005u1, long j, long j2, InterfaceC2706m interfaceC2706m) {
        if (j == 0 && j2 == interfaceC3005u1.count()) {
            return interfaceC3005u1;
        }
        long j3 = j2 - j;
        InterfaceC2732s.InterfaceC2733a interfaceC2733a = (InterfaceC2732s.InterfaceC2733a) interfaceC3005u1.spliterator();
        InterfaceC2975p1 m305j = AbstractC3024x2.m305j(j3);
        m305j.mo297n(j3);
        for (int i = 0; i < j && interfaceC2733a.mo131k(C2999t1.f1059a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2733a.mo131k(m305j); i2++) {
        }
        m305j.mo321m();
        return m305j.mo323a();
    }

    /* renamed from: o */
    public static InterfaceC3017w1 m345o(InterfaceC3017w1 interfaceC3017w1, long j, long j2, InterfaceC2706m interfaceC2706m) {
        if (j == 0 && j2 == interfaceC3017w1.count()) {
            return interfaceC3017w1;
        }
        long j3 = j2 - j;
        InterfaceC2732s.InterfaceC2734b interfaceC2734b = (InterfaceC2732s.InterfaceC2734b) interfaceC3017w1.spliterator();
        InterfaceC2981q1 m299p = AbstractC3024x2.m299p(j3);
        m299p.mo297n(j3);
        for (int i = 0; i < j && interfaceC2734b.mo124g(C3011v1.f1069a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2734b.mo124g(m299p); i2++) {
        }
        m299p.mo321m();
        return m299p.mo323a();
    }

    /* renamed from: p */
    public static InterfaceC3029y1 m344p(InterfaceC3029y1 interfaceC3029y1, long j, long j2, InterfaceC2706m interfaceC2706m) {
        if (j == 0 && j2 == interfaceC3029y1.count()) {
            return interfaceC3029y1;
        }
        long j3 = j2 - j;
        InterfaceC2732s.InterfaceC2735c interfaceC2735c = (InterfaceC2732s.InterfaceC2735c) interfaceC3029y1.spliterator();
        InterfaceC2987r1 m298q = AbstractC3024x2.m298q(j3);
        m298q.mo297n(j3);
        for (int i = 0; i < j && interfaceC2735c.mo118i(C3023x1.f1082a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2735c.mo118i(m298q); i2++) {
        }
        m298q.mo321m();
        return m298q.mo323a();
    }

    /* renamed from: q */
    public static InterfaceC2738A1 m343q(InterfaceC2738A1 interfaceC2738A1, long j, long j2, InterfaceC2706m interfaceC2706m) {
        if (j == 0 && j2 == interfaceC2738A1.count()) {
            return interfaceC2738A1;
        }
        InterfaceC2732s spliterator = interfaceC2738A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2993s1 m311d = AbstractC3024x2.m311d(j3, interfaceC2706m);
        m311d.mo297n(j3);
        for (int i = 0; i < j && spliterator.mo113b(C2963n1.f1003a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo113b(m311d); i2++) {
        }
        m311d.mo321m();
        return m311d.mo323a();
    }

    /* renamed from: r */
    public static InterfaceC2852U m342r(InterfaceC2732s.InterfaceC2733a interfaceC2733a, boolean z) {
        return new C2826P(interfaceC2733a, EnumC2906d4.m421c(interfaceC2733a), z);
    }

    /* renamed from: s */
    public static IntStream m341s(InterfaceC2732s.InterfaceC2734b interfaceC2734b, boolean z) {
        return new C2785I0(interfaceC2734b, EnumC2906d4.m421c(interfaceC2734b), z);
    }

    /* renamed from: t */
    public static InterfaceC2909e1 m340t(InterfaceC2732s.InterfaceC2735c interfaceC2735c, boolean z) {
        return new C2885a1(interfaceC2735c, EnumC2906d4.m421c(interfaceC2735c), z);
    }

    /* renamed from: u */
    public static InterfaceC2819N4 m339u(C3052D c3052d, EnumC2945k1 enumC2945k1) {
        Objects.requireNonNull(c3052d);
        Objects.requireNonNull(enumC2945k1);
        return new C2951l1(EnumC2912e4.DOUBLE_VALUE, enumC2945k1, new C2967o(enumC2945k1, c3052d));
    }

    /* renamed from: v */
    public static InterfaceC2819N4 m338v(C3080U c3080u, EnumC2945k1 enumC2945k1) {
        Objects.requireNonNull(c3080u);
        Objects.requireNonNull(enumC2945k1);
        return new C2951l1(EnumC2912e4.INT_VALUE, enumC2945k1, new C2967o(enumC2945k1, c3080u));
    }

    /* renamed from: w */
    public static InterfaceC2819N4 m337w(C3103i0 c3103i0, EnumC2945k1 enumC2945k1) {
        Objects.requireNonNull(c3103i0);
        Objects.requireNonNull(enumC2945k1);
        return new C2951l1(EnumC2912e4.LONG_VALUE, enumC2945k1, new C2967o(enumC2945k1, c3103i0));
    }

    /* renamed from: x */
    public static InterfaceC2819N4 m336x(Predicate predicate, EnumC2945k1 enumC2945k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2945k1);
        return new C2951l1(EnumC2912e4.REFERENCE, enumC2945k1, new C2967o(enumC2945k1, predicate));
    }

    /* renamed from: y */
    public static Stream m335y(InterfaceC2732s interfaceC2732s, boolean z) {
        Objects.requireNonNull(interfaceC2732s);
        return new C2893b3(interfaceC2732s, EnumC2906d4.m421c(interfaceC2732s), z);
    }
}
