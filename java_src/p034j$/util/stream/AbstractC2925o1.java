package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3008D;
import p034j$.wrappers.C3036U;
import p034j$.wrappers.C3059i0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2925o1 {
    /* renamed from: a */
    public static void m354a(InterfaceC2897j3 interfaceC2897j3, Double d) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2897j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC2897j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m353b(InterfaceC2903k3 interfaceC2903k3, Integer num) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2903k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC2903k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m352c(InterfaceC2909l3 interfaceC2909l3, Long l) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2909l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC2909l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m351d(InterfaceC2915m3 interfaceC2915m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m350e(InterfaceC2915m3 interfaceC2915m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m349f(InterfaceC2915m3 interfaceC2915m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m348g(InterfaceC2991z1 interfaceC2991z1, InterfaceC2662m interfaceC2662m) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2991z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC2991z1.count() < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2662m.apply((int) interfaceC2991z1.count());
            interfaceC2991z1.mo317i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m347h(InterfaceC2961u1 interfaceC2961u1, Double[] dArr, int i) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2961u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2961u1.mo272e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m346i(InterfaceC2973w1 interfaceC2973w1, Integer[] numArr, int i) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2973w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2973w1.mo272e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m345j(InterfaceC2985y1 interfaceC2985y1, Long[] lArr, int i) {
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2985y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC2985y1.mo272e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m344k(InterfaceC2961u1 interfaceC2961u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2655f) {
            interfaceC2961u1.mo271g((InterfaceC2655f) consumer);
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2961u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2688s.InterfaceC2689a) interfaceC2961u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m343l(InterfaceC2973w1 interfaceC2973w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2661l) {
            interfaceC2973w1.mo271g((InterfaceC2661l) consumer);
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2973w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2688s.InterfaceC2690b) interfaceC2973w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m342m(InterfaceC2985y1 interfaceC2985y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2666q) {
            interfaceC2985y1.mo271g((InterfaceC2666q) consumer);
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(interfaceC2985y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((InterfaceC2688s.InterfaceC2691c) interfaceC2985y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC2961u1 m341n(InterfaceC2961u1 interfaceC2961u1, long j, long j2, InterfaceC2662m interfaceC2662m) {
        if (j == 0 && j2 == interfaceC2961u1.count()) {
            return interfaceC2961u1;
        }
        long j3 = j2 - j;
        InterfaceC2688s.InterfaceC2689a interfaceC2689a = (InterfaceC2688s.InterfaceC2689a) interfaceC2961u1.spliterator();
        InterfaceC2931p1 m300j = AbstractC2980x2.m300j(j3);
        m300j.mo292n(j3);
        for (int i = 0; i < j && interfaceC2689a.mo126k(C2955t1.f1056a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2689a.mo126k(m300j); i2++) {
        }
        m300j.mo316m();
        return m300j.mo318a();
    }

    /* renamed from: o */
    public static InterfaceC2973w1 m340o(InterfaceC2973w1 interfaceC2973w1, long j, long j2, InterfaceC2662m interfaceC2662m) {
        if (j == 0 && j2 == interfaceC2973w1.count()) {
            return interfaceC2973w1;
        }
        long j3 = j2 - j;
        InterfaceC2688s.InterfaceC2690b interfaceC2690b = (InterfaceC2688s.InterfaceC2690b) interfaceC2973w1.spliterator();
        InterfaceC2937q1 m294p = AbstractC2980x2.m294p(j3);
        m294p.mo292n(j3);
        for (int i = 0; i < j && interfaceC2690b.mo119g(C2967v1.f1066a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2690b.mo119g(m294p); i2++) {
        }
        m294p.mo316m();
        return m294p.mo318a();
    }

    /* renamed from: p */
    public static InterfaceC2985y1 m339p(InterfaceC2985y1 interfaceC2985y1, long j, long j2, InterfaceC2662m interfaceC2662m) {
        if (j == 0 && j2 == interfaceC2985y1.count()) {
            return interfaceC2985y1;
        }
        long j3 = j2 - j;
        InterfaceC2688s.InterfaceC2691c interfaceC2691c = (InterfaceC2688s.InterfaceC2691c) interfaceC2985y1.spliterator();
        InterfaceC2943r1 m293q = AbstractC2980x2.m293q(j3);
        m293q.mo292n(j3);
        for (int i = 0; i < j && interfaceC2691c.mo113i(C2979x1.f1079a); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2691c.mo113i(m293q); i2++) {
        }
        m293q.mo316m();
        return m293q.mo318a();
    }

    /* renamed from: q */
    public static InterfaceC2694A1 m338q(InterfaceC2694A1 interfaceC2694A1, long j, long j2, InterfaceC2662m interfaceC2662m) {
        if (j == 0 && j2 == interfaceC2694A1.count()) {
            return interfaceC2694A1;
        }
        InterfaceC2688s spliterator = interfaceC2694A1.spliterator();
        long j3 = j2 - j;
        InterfaceC2949s1 m306d = AbstractC2980x2.m306d(j3, interfaceC2662m);
        m306d.mo292n(j3);
        for (int i = 0; i < j && spliterator.mo108b(C2919n1.f1000a); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo108b(m306d); i2++) {
        }
        m306d.mo316m();
        return m306d.mo318a();
    }

    /* renamed from: r */
    public static InterfaceC2808U m337r(InterfaceC2688s.InterfaceC2689a interfaceC2689a, boolean z) {
        return new C2782P(interfaceC2689a, EnumC2862d4.m416c(interfaceC2689a), z);
    }

    /* renamed from: s */
    public static IntStream m336s(InterfaceC2688s.InterfaceC2690b interfaceC2690b, boolean z) {
        return new C2741I0(interfaceC2690b, EnumC2862d4.m416c(interfaceC2690b), z);
    }

    /* renamed from: t */
    public static InterfaceC2865e1 m335t(InterfaceC2688s.InterfaceC2691c interfaceC2691c, boolean z) {
        return new C2841a1(interfaceC2691c, EnumC2862d4.m416c(interfaceC2691c), z);
    }

    /* renamed from: u */
    public static InterfaceC2775N4 m334u(C3008D c3008d, EnumC2901k1 enumC2901k1) {
        Objects.requireNonNull(c3008d);
        Objects.requireNonNull(enumC2901k1);
        return new C2907l1(EnumC2868e4.DOUBLE_VALUE, enumC2901k1, new C2923o(enumC2901k1, c3008d));
    }

    /* renamed from: v */
    public static InterfaceC2775N4 m333v(C3036U c3036u, EnumC2901k1 enumC2901k1) {
        Objects.requireNonNull(c3036u);
        Objects.requireNonNull(enumC2901k1);
        return new C2907l1(EnumC2868e4.INT_VALUE, enumC2901k1, new C2923o(enumC2901k1, c3036u));
    }

    /* renamed from: w */
    public static InterfaceC2775N4 m332w(C3059i0 c3059i0, EnumC2901k1 enumC2901k1) {
        Objects.requireNonNull(c3059i0);
        Objects.requireNonNull(enumC2901k1);
        return new C2907l1(EnumC2868e4.LONG_VALUE, enumC2901k1, new C2923o(enumC2901k1, c3059i0));
    }

    /* renamed from: x */
    public static InterfaceC2775N4 m331x(Predicate predicate, EnumC2901k1 enumC2901k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2901k1);
        return new C2907l1(EnumC2868e4.REFERENCE, enumC2901k1, new C2923o(enumC2901k1, predicate));
    }

    /* renamed from: y */
    public static Stream m330y(InterfaceC2688s interfaceC2688s, boolean z) {
        Objects.requireNonNull(interfaceC2688s);
        return new C2849b3(interfaceC2688s, EnumC2862d4.m416c(interfaceC2688s), z);
    }
}
