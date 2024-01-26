package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2814e;
import p033j$.util.function.C2820k;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3162C;
import p033j$.wrappers.C3187S;
import p033j$.wrappers.C3208g0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3081o1 {
    /* renamed from: a */
    public static void m426a(InterfaceC3053j3 interfaceC3053j3, Double d) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3053j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3053j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m425b(InterfaceC3059k3 interfaceC3059k3, Integer num) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3059k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3059k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m424c(InterfaceC3065l3 interfaceC3065l3, Long l) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3065l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3065l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m423d(InterfaceC3071m3 interfaceC3071m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m422e(InterfaceC3071m3 interfaceC3071m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m421f(InterfaceC3071m3 interfaceC3071m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m420g(InterfaceC3147z1 interfaceC3147z1, IntFunction intFunction) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3147z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3147z1.count() < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) interfaceC3147z1.count());
            interfaceC3147z1.mo389i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m419h(InterfaceC3117u1 interfaceC3117u1, Double[] dArr, int i) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3117u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3117u1.mo344e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m418i(InterfaceC3129w1 interfaceC3129w1, Integer[] numArr, int i) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3129w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3129w1.mo344e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m417j(InterfaceC3141y1 interfaceC3141y1, Long[] lArr, int i) {
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3141y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3141y1.mo344e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m416k(InterfaceC3117u1 interfaceC3117u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2815f) {
            interfaceC3117u1.mo343g((InterfaceC2815f) consumer);
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3117u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2771a) interfaceC3117u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m415l(InterfaceC3129w1 interfaceC3129w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2821l) {
            interfaceC3129w1.mo343g((InterfaceC2821l) consumer);
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3129w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2772b) interfaceC3129w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m414m(InterfaceC3141y1 interfaceC3141y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2825p) {
            interfaceC3141y1.mo343g((InterfaceC2825p) consumer);
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(interfaceC3141y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2773c) interfaceC3141y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3117u1 m413n(InterfaceC3117u1 interfaceC3117u1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3117u1.count()) {
            return interfaceC3117u1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2771a interfaceC2771a = (Spliterator.InterfaceC2771a) interfaceC3117u1.spliterator();
        InterfaceC3087p1 m372j = AbstractC3136x2.m372j(j3);
        m372j.mo364m(j3);
        for (int i = 0; i < j && interfaceC2771a.mo201n(new InterfaceC2815f() { // from class: j$.util.stream.t1
            @Override // p033j$.util.function.InterfaceC2815f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2815f
            /* renamed from: j */
            public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
                Objects.requireNonNull(interfaceC2815f);
                return new C2814e(this, interfaceC2815f);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2771a.mo201n(m372j); i2++) {
        }
        m372j.mo388l();
        return m372j.mo390a();
    }

    /* renamed from: o */
    public static InterfaceC3129w1 m412o(InterfaceC3129w1 interfaceC3129w1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3129w1.count()) {
            return interfaceC3129w1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2772b interfaceC2772b = (Spliterator.InterfaceC2772b) interfaceC3129w1.spliterator();
        InterfaceC3093q1 m366p = AbstractC3136x2.m366p(j3);
        m366p.mo364m(j3);
        for (int i = 0; i < j && interfaceC2772b.mo195g(new InterfaceC2821l() { // from class: j$.util.stream.v1
            @Override // p033j$.util.function.InterfaceC2821l
            public final void accept(int i2) {
            }

            @Override // p033j$.util.function.InterfaceC2821l
            /* renamed from: k */
            public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
                Objects.requireNonNull(interfaceC2821l);
                return new C2820k(this, interfaceC2821l);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2772b.mo195g(m366p); i2++) {
        }
        m366p.mo388l();
        return m366p.mo390a();
    }

    /* renamed from: p */
    public static InterfaceC3141y1 m411p(InterfaceC3141y1 interfaceC3141y1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3141y1.count()) {
            return interfaceC3141y1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2773c interfaceC2773c = (Spliterator.InterfaceC2773c) interfaceC3141y1.spliterator();
        InterfaceC3099r1 m365q = AbstractC3136x2.m365q(j3);
        m365q.mo364m(j3);
        for (int i = 0; i < j && interfaceC2773c.mo189i(new InterfaceC2825p() { // from class: j$.util.stream.x1
            @Override // p033j$.util.function.InterfaceC2825p
            public final void accept(long j4) {
            }

            @Override // p033j$.util.function.InterfaceC2825p
            /* renamed from: f */
            public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
                Objects.requireNonNull(interfaceC2825p);
                return new C2824o(this, interfaceC2825p);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2773c.mo189i(m365q); i2++) {
        }
        m365q.mo388l();
        return m365q.mo390a();
    }

    /* renamed from: q */
    public static InterfaceC2850A1 m410q(InterfaceC2850A1 interfaceC2850A1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC2850A1.count()) {
            return interfaceC2850A1;
        }
        Spliterator spliterator = interfaceC2850A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3105s1 m378d = AbstractC3136x2.m378d(j3, intFunction);
        m378d.mo364m(j3);
        for (int i = 0; i < j && spliterator.mo182b(new Consumer() { // from class: j$.util.stream.n1
            @Override // p033j$.util.function.Consumer
            public final void accept(Object obj) {
            }

            @Override // p033j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo182b(m378d); i2++) {
        }
        m378d.mo388l();
        return m378d.mo390a();
    }

    /* renamed from: r */
    public static InterfaceC2964U m409r(Spliterator.InterfaceC2771a interfaceC2771a, boolean z) {
        return new C2938P(interfaceC2771a, EnumC3018d4.m488c(interfaceC2771a), z);
    }

    /* renamed from: s */
    public static IntStream m408s(Spliterator.InterfaceC2772b interfaceC2772b, boolean z) {
        return new C2897I0(interfaceC2772b, EnumC3018d4.m488c(interfaceC2772b), z);
    }

    /* renamed from: t */
    public static InterfaceC3021e1 m407t(Spliterator.InterfaceC2773c interfaceC2773c, boolean z) {
        return new C2997a1(interfaceC2773c, EnumC3018d4.m488c(interfaceC2773c), z);
    }

    /* renamed from: u */
    public static InterfaceC2931N4 m406u(C3162C c3162c, EnumC3057k1 enumC3057k1) {
        Objects.requireNonNull(c3162c);
        Objects.requireNonNull(enumC3057k1);
        return new C3063l1(EnumC3024e4.DOUBLE_VALUE, enumC3057k1, new C3079o(enumC3057k1, c3162c));
    }

    /* renamed from: v */
    public static InterfaceC2931N4 m405v(C3187S c3187s, EnumC3057k1 enumC3057k1) {
        Objects.requireNonNull(c3187s);
        Objects.requireNonNull(enumC3057k1);
        return new C3063l1(EnumC3024e4.INT_VALUE, enumC3057k1, new C3079o(enumC3057k1, c3187s));
    }

    /* renamed from: w */
    public static InterfaceC2931N4 m404w(C3208g0 c3208g0, EnumC3057k1 enumC3057k1) {
        Objects.requireNonNull(c3208g0);
        Objects.requireNonNull(enumC3057k1);
        return new C3063l1(EnumC3024e4.LONG_VALUE, enumC3057k1, new C3079o(enumC3057k1, c3208g0));
    }

    /* renamed from: x */
    public static InterfaceC2931N4 m403x(Predicate predicate, EnumC3057k1 enumC3057k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3057k1);
        return new C3063l1(EnumC3024e4.REFERENCE, enumC3057k1, new C3079o(enumC3057k1, predicate));
    }

    /* renamed from: y */
    public static Stream m402y(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C3005b3(spliterator, EnumC3018d4.m488c(spliterator), z);
    }
}
