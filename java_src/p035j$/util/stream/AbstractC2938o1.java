package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.Predicate;
import p035j$.wrappers.C3021D;
import p035j$.wrappers.C3049U;
import p035j$.wrappers.C3072i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2938o1 {
    /* renamed from: a */
    public static void m368a(InterfaceC2910j3 interfaceC2910j3, Double d) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2910j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2910j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m367b(InterfaceC2916k3 interfaceC2916k3, Integer num) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2916k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2916k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m366c(InterfaceC2922l3 interfaceC2922l3, Long l) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2922l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2922l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m365d(InterfaceC2928m3 interfaceC2928m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m364e(InterfaceC2928m3 interfaceC2928m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m363f(InterfaceC2928m3 interfaceC2928m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m362g(InterfaceC3004z1 interfaceC3004z1, InterfaceC2675m interfaceC2675m) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC3004z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3004z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2675m.apply((int) interfaceC3004z1.count());
            interfaceC3004z1.mo331i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m361h(InterfaceC2974u1 interfaceC2974u1, Double[] dArr, int i) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2974u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2974u1.mo286e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m360i(InterfaceC2986w1 interfaceC2986w1, Integer[] numArr, int i) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2986w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2986w1.mo286e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m359j(InterfaceC2998y1 interfaceC2998y1, Long[] lArr, int i) {
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2998y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC2998y1.mo286e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m358k(InterfaceC2974u1 interfaceC2974u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2668f) {
            interfaceC2974u1.mo285g((InterfaceC2668f) consumer);
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2974u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2701s.InterfaceC2702a) interfaceC2974u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m357l(InterfaceC2986w1 interfaceC2986w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2674l) {
            interfaceC2986w1.mo285g((InterfaceC2674l) consumer);
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2986w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2701s.InterfaceC2703b) interfaceC2986w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m356m(InterfaceC2998y1 interfaceC2998y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2679q) {
            interfaceC2998y1.mo285g((InterfaceC2679q) consumer);
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(interfaceC2998y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2701s.InterfaceC2704c) interfaceC2998y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC2974u1 m355n(InterfaceC2974u1 interfaceC2974u1, long j, long j2, InterfaceC2675m interfaceC2675m) {
        if (j == 0 && j2 == interfaceC2974u1.count()) {
            return interfaceC2974u1;
        }
        long j3 = j2 - j;
        InterfaceC2701s.InterfaceC2702a interfaceC2702a = (InterfaceC2701s.InterfaceC2702a) interfaceC2974u1.spliterator();
        InterfaceC2944p1 m314j = AbstractC2993x2.m314j(j3);
        m314j.mo306n(j3);
        for (int i = 0; i < j && interfaceC2702a.mo140k(C2968t1.f1061a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2702a.mo140k(m314j); i2++) {
        }
        m314j.mo330m();
        return m314j.mo332a();
    }

    /* renamed from: o */
    public static InterfaceC2986w1 m354o(InterfaceC2986w1 interfaceC2986w1, long j, long j2, InterfaceC2675m interfaceC2675m) {
        if (j == 0 && j2 == interfaceC2986w1.count()) {
            return interfaceC2986w1;
        }
        long j3 = j2 - j;
        InterfaceC2701s.InterfaceC2703b interfaceC2703b = (InterfaceC2701s.InterfaceC2703b) interfaceC2986w1.spliterator();
        InterfaceC2950q1 m308p = AbstractC2993x2.m308p(j3);
        m308p.mo306n(j3);
        for (int i = 0; i < j && interfaceC2703b.mo133g(C2980v1.f1071a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2703b.mo133g(m308p); i2++) {
        }
        m308p.mo330m();
        return m308p.mo332a();
    }

    /* renamed from: p */
    public static InterfaceC2998y1 m353p(InterfaceC2998y1 interfaceC2998y1, long j, long j2, InterfaceC2675m interfaceC2675m) {
        if (j == 0 && j2 == interfaceC2998y1.count()) {
            return interfaceC2998y1;
        }
        long j3 = j2 - j;
        InterfaceC2701s.InterfaceC2704c interfaceC2704c = (InterfaceC2701s.InterfaceC2704c) interfaceC2998y1.spliterator();
        InterfaceC2956r1 m307q = AbstractC2993x2.m307q(j3);
        m307q.mo306n(j3);
        for (int i = 0; i < j && interfaceC2704c.mo127i(C2992x1.f1084a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2704c.mo127i(m307q); i2++) {
        }
        m307q.mo330m();
        return m307q.mo332a();
    }

    /* renamed from: q */
    public static InterfaceC2707A1 m352q(InterfaceC2707A1 interfaceC2707A1, long j, long j2, InterfaceC2675m interfaceC2675m) {
        if (j == 0 && j2 == interfaceC2707A1.count()) {
            return interfaceC2707A1;
        }
        InterfaceC2701s spliterator = interfaceC2707A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2962s1 m320d = AbstractC2993x2.m320d(j3, interfaceC2675m);
        m320d.mo306n(j3);
        for (int i = 0; i < j && spliterator.mo122b(C2932n1.f1005a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo122b(m320d); i2++) {
        }
        m320d.mo330m();
        return m320d.mo332a();
    }

    /* renamed from: r */
    public static InterfaceC2821U m351r(InterfaceC2701s.InterfaceC2702a interfaceC2702a, boolean z) {
        return new C2795P(interfaceC2702a, EnumC2875d4.m430c(interfaceC2702a), z);
    }

    /* renamed from: s */
    public static IntStream m350s(InterfaceC2701s.InterfaceC2703b interfaceC2703b, boolean z) {
        return new C2754I0(interfaceC2703b, EnumC2875d4.m430c(interfaceC2703b), z);
    }

    /* renamed from: t */
    public static InterfaceC2878e1 m349t(InterfaceC2701s.InterfaceC2704c interfaceC2704c, boolean z) {
        return new C2854a1(interfaceC2704c, EnumC2875d4.m430c(interfaceC2704c), z);
    }

    /* renamed from: u */
    public static InterfaceC2788N4 m348u(C3021D c3021d, EnumC2914k1 enumC2914k1) {
        Objects.requireNonNull(c3021d);
        Objects.requireNonNull(enumC2914k1);
        return new C2920l1(EnumC2881e4.DOUBLE_VALUE, enumC2914k1, new C2936o(enumC2914k1, c3021d));
    }

    /* renamed from: v */
    public static InterfaceC2788N4 m347v(C3049U c3049u, EnumC2914k1 enumC2914k1) {
        Objects.requireNonNull(c3049u);
        Objects.requireNonNull(enumC2914k1);
        return new C2920l1(EnumC2881e4.INT_VALUE, enumC2914k1, new C2936o(enumC2914k1, c3049u));
    }

    /* renamed from: w */
    public static InterfaceC2788N4 m346w(C3072i0 c3072i0, EnumC2914k1 enumC2914k1) {
        Objects.requireNonNull(c3072i0);
        Objects.requireNonNull(enumC2914k1);
        return new C2920l1(EnumC2881e4.LONG_VALUE, enumC2914k1, new C2936o(enumC2914k1, c3072i0));
    }

    /* renamed from: x */
    public static InterfaceC2788N4 m345x(Predicate predicate, EnumC2914k1 enumC2914k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2914k1);
        return new C2920l1(EnumC2881e4.REFERENCE, enumC2914k1, new C2936o(enumC2914k1, predicate));
    }

    /* renamed from: y */
    public static Stream m344y(InterfaceC2701s interfaceC2701s, boolean z) {
        Objects.requireNonNull(interfaceC2701s);
        return new C2862b3(interfaceC2701s, EnumC2875d4.m430c(interfaceC2701s), z);
    }
}
