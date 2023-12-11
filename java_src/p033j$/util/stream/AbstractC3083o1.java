package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2816e;
import p033j$.util.function.C2822k;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3164C;
import p033j$.wrappers.C3189S;
import p033j$.wrappers.C3210g0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3083o1 {
    /* renamed from: a */
    public static void m423a(InterfaceC3055j3 interfaceC3055j3, Double d) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3055j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3055j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m422b(InterfaceC3061k3 interfaceC3061k3, Integer num) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3061k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3061k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m421c(InterfaceC3067l3 interfaceC3067l3, Long l) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3067l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3067l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m420d(InterfaceC3073m3 interfaceC3073m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m419e(InterfaceC3073m3 interfaceC3073m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m418f(InterfaceC3073m3 interfaceC3073m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m417g(InterfaceC3149z1 interfaceC3149z1, IntFunction intFunction) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3149z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3149z1.count() < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) interfaceC3149z1.count());
            interfaceC3149z1.mo386i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m416h(InterfaceC3119u1 interfaceC3119u1, Double[] dArr, int i) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3119u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3119u1.mo341e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m415i(InterfaceC3131w1 interfaceC3131w1, Integer[] numArr, int i) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3131w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3131w1.mo341e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m414j(InterfaceC3143y1 interfaceC3143y1, Long[] lArr, int i) {
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3143y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3143y1.mo341e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m413k(InterfaceC3119u1 interfaceC3119u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2817f) {
            interfaceC3119u1.mo340g((InterfaceC2817f) consumer);
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3119u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2773a) interfaceC3119u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m412l(InterfaceC3131w1 interfaceC3131w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2823l) {
            interfaceC3131w1.mo340g((InterfaceC2823l) consumer);
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3131w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2774b) interfaceC3131w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m411m(InterfaceC3143y1 interfaceC3143y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2827p) {
            interfaceC3143y1.mo340g((InterfaceC2827p) consumer);
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(interfaceC3143y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2775c) interfaceC3143y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3119u1 m410n(InterfaceC3119u1 interfaceC3119u1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3119u1.count()) {
            return interfaceC3119u1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2773a interfaceC2773a = (Spliterator.InterfaceC2773a) interfaceC3119u1.spliterator();
        InterfaceC3089p1 m369j = AbstractC3138x2.m369j(j3);
        m369j.mo361m(j3);
        for (int i = 0; i < j && interfaceC2773a.mo198n(new InterfaceC2817f() { // from class: j$.util.stream.t1
            @Override // p033j$.util.function.InterfaceC2817f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2817f
            /* renamed from: j */
            public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
                Objects.requireNonNull(interfaceC2817f);
                return new C2816e(this, interfaceC2817f);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2773a.mo198n(m369j); i2++) {
        }
        m369j.mo385l();
        return m369j.mo387a();
    }

    /* renamed from: o */
    public static InterfaceC3131w1 m409o(InterfaceC3131w1 interfaceC3131w1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3131w1.count()) {
            return interfaceC3131w1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2774b interfaceC2774b = (Spliterator.InterfaceC2774b) interfaceC3131w1.spliterator();
        InterfaceC3095q1 m363p = AbstractC3138x2.m363p(j3);
        m363p.mo361m(j3);
        for (int i = 0; i < j && interfaceC2774b.mo192g(new InterfaceC2823l() { // from class: j$.util.stream.v1
            @Override // p033j$.util.function.InterfaceC2823l
            public final void accept(int i2) {
            }

            @Override // p033j$.util.function.InterfaceC2823l
            /* renamed from: k */
            public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
                Objects.requireNonNull(interfaceC2823l);
                return new C2822k(this, interfaceC2823l);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2774b.mo192g(m363p); i2++) {
        }
        m363p.mo385l();
        return m363p.mo387a();
    }

    /* renamed from: p */
    public static InterfaceC3143y1 m408p(InterfaceC3143y1 interfaceC3143y1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3143y1.count()) {
            return interfaceC3143y1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2775c interfaceC2775c = (Spliterator.InterfaceC2775c) interfaceC3143y1.spliterator();
        InterfaceC3101r1 m362q = AbstractC3138x2.m362q(j3);
        m362q.mo361m(j3);
        for (int i = 0; i < j && interfaceC2775c.mo186i(new InterfaceC2827p() { // from class: j$.util.stream.x1
            @Override // p033j$.util.function.InterfaceC2827p
            public final void accept(long j4) {
            }

            @Override // p033j$.util.function.InterfaceC2827p
            /* renamed from: f */
            public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
                Objects.requireNonNull(interfaceC2827p);
                return new C2826o(this, interfaceC2827p);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2775c.mo186i(m362q); i2++) {
        }
        m362q.mo385l();
        return m362q.mo387a();
    }

    /* renamed from: q */
    public static InterfaceC2852A1 m407q(InterfaceC2852A1 interfaceC2852A1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC2852A1.count()) {
            return interfaceC2852A1;
        }
        Spliterator spliterator = interfaceC2852A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3107s1 m375d = AbstractC3138x2.m375d(j3, intFunction);
        m375d.mo361m(j3);
        for (int i = 0; i < j && spliterator.mo179b(new Consumer() { // from class: j$.util.stream.n1
            @Override // p033j$.util.function.Consumer
            public final void accept(Object obj) {
            }

            @Override // p033j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo179b(m375d); i2++) {
        }
        m375d.mo385l();
        return m375d.mo387a();
    }

    /* renamed from: r */
    public static InterfaceC2966U m406r(Spliterator.InterfaceC2773a interfaceC2773a, boolean z) {
        return new C2940P(interfaceC2773a, EnumC3020d4.m485c(interfaceC2773a), z);
    }

    /* renamed from: s */
    public static IntStream m405s(Spliterator.InterfaceC2774b interfaceC2774b, boolean z) {
        return new C2899I0(interfaceC2774b, EnumC3020d4.m485c(interfaceC2774b), z);
    }

    /* renamed from: t */
    public static InterfaceC3023e1 m404t(Spliterator.InterfaceC2775c interfaceC2775c, boolean z) {
        return new C2999a1(interfaceC2775c, EnumC3020d4.m485c(interfaceC2775c), z);
    }

    /* renamed from: u */
    public static InterfaceC2933N4 m403u(C3164C c3164c, EnumC3059k1 enumC3059k1) {
        Objects.requireNonNull(c3164c);
        Objects.requireNonNull(enumC3059k1);
        return new C3065l1(EnumC3026e4.DOUBLE_VALUE, enumC3059k1, new C3081o(enumC3059k1, c3164c));
    }

    /* renamed from: v */
    public static InterfaceC2933N4 m402v(C3189S c3189s, EnumC3059k1 enumC3059k1) {
        Objects.requireNonNull(c3189s);
        Objects.requireNonNull(enumC3059k1);
        return new C3065l1(EnumC3026e4.INT_VALUE, enumC3059k1, new C3081o(enumC3059k1, c3189s));
    }

    /* renamed from: w */
    public static InterfaceC2933N4 m401w(C3210g0 c3210g0, EnumC3059k1 enumC3059k1) {
        Objects.requireNonNull(c3210g0);
        Objects.requireNonNull(enumC3059k1);
        return new C3065l1(EnumC3026e4.LONG_VALUE, enumC3059k1, new C3081o(enumC3059k1, c3210g0));
    }

    /* renamed from: x */
    public static InterfaceC2933N4 m400x(Predicate predicate, EnumC3059k1 enumC3059k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3059k1);
        return new C3065l1(EnumC3026e4.REFERENCE, enumC3059k1, new C3081o(enumC3059k1, predicate));
    }

    /* renamed from: y */
    public static Stream m399y(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C3007b3(spliterator, EnumC3020d4.m485c(spliterator), z);
    }
}
