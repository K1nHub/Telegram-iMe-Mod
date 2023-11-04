package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.C2825k;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3167C;
import p033j$.wrappers.C3192S;
import p033j$.wrappers.C3213g0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3086o1 {
    /* renamed from: a */
    public static void m423a(InterfaceC3058j3 interfaceC3058j3, Double d) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3058j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3058j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m422b(InterfaceC3064k3 interfaceC3064k3, Integer num) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3064k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3064k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m421c(InterfaceC3070l3 interfaceC3070l3, Long l) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3070l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3070l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m420d(InterfaceC3076m3 interfaceC3076m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m419e(InterfaceC3076m3 interfaceC3076m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m418f(InterfaceC3076m3 interfaceC3076m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m417g(InterfaceC3152z1 interfaceC3152z1, IntFunction intFunction) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3152z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3152z1.count() < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) interfaceC3152z1.count());
            interfaceC3152z1.mo386i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m416h(InterfaceC3122u1 interfaceC3122u1, Double[] dArr, int i) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3122u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3122u1.mo341e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m415i(InterfaceC3134w1 interfaceC3134w1, Integer[] numArr, int i) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3134w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3134w1.mo341e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m414j(InterfaceC3146y1 interfaceC3146y1, Long[] lArr, int i) {
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3146y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3146y1.mo341e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m413k(InterfaceC3122u1 interfaceC3122u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            interfaceC3122u1.mo340g((InterfaceC2820f) consumer);
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3122u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2776a) interfaceC3122u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m412l(InterfaceC3134w1 interfaceC3134w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            interfaceC3134w1.mo340g((InterfaceC2826l) consumer);
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3134w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2777b) interfaceC3134w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m411m(InterfaceC3146y1 interfaceC3146y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2830p) {
            interfaceC3146y1.mo340g((InterfaceC2830p) consumer);
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(interfaceC3146y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2778c) interfaceC3146y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3122u1 m410n(InterfaceC3122u1 interfaceC3122u1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3122u1.count()) {
            return interfaceC3122u1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2776a interfaceC2776a = (Spliterator.InterfaceC2776a) interfaceC3122u1.spliterator();
        InterfaceC3092p1 m369j = AbstractC3141x2.m369j(j3);
        m369j.mo361m(j3);
        for (int i = 0; i < j && interfaceC2776a.mo198n(new InterfaceC2820f() { // from class: j$.util.stream.t1
            @Override // p033j$.util.function.InterfaceC2820f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2820f
            /* renamed from: j */
            public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2776a.mo198n(m369j); i2++) {
        }
        m369j.mo385l();
        return m369j.mo387a();
    }

    /* renamed from: o */
    public static InterfaceC3134w1 m409o(InterfaceC3134w1 interfaceC3134w1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3134w1.count()) {
            return interfaceC3134w1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2777b interfaceC2777b = (Spliterator.InterfaceC2777b) interfaceC3134w1.spliterator();
        InterfaceC3098q1 m363p = AbstractC3141x2.m363p(j3);
        m363p.mo361m(j3);
        for (int i = 0; i < j && interfaceC2777b.mo192g(new InterfaceC2826l() { // from class: j$.util.stream.v1
            @Override // p033j$.util.function.InterfaceC2826l
            public final void accept(int i2) {
            }

            @Override // p033j$.util.function.InterfaceC2826l
            /* renamed from: k */
            public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
                Objects.requireNonNull(interfaceC2826l);
                return new C2825k(this, interfaceC2826l);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2777b.mo192g(m363p); i2++) {
        }
        m363p.mo385l();
        return m363p.mo387a();
    }

    /* renamed from: p */
    public static InterfaceC3146y1 m408p(InterfaceC3146y1 interfaceC3146y1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3146y1.count()) {
            return interfaceC3146y1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2778c interfaceC2778c = (Spliterator.InterfaceC2778c) interfaceC3146y1.spliterator();
        InterfaceC3104r1 m362q = AbstractC3141x2.m362q(j3);
        m362q.mo361m(j3);
        for (int i = 0; i < j && interfaceC2778c.mo186i(new InterfaceC2830p() { // from class: j$.util.stream.x1
            @Override // p033j$.util.function.InterfaceC2830p
            public final void accept(long j4) {
            }

            @Override // p033j$.util.function.InterfaceC2830p
            /* renamed from: f */
            public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
                Objects.requireNonNull(interfaceC2830p);
                return new C2829o(this, interfaceC2830p);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2778c.mo186i(m362q); i2++) {
        }
        m362q.mo385l();
        return m362q.mo387a();
    }

    /* renamed from: q */
    public static InterfaceC2855A1 m407q(InterfaceC2855A1 interfaceC2855A1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC2855A1.count()) {
            return interfaceC2855A1;
        }
        Spliterator spliterator = interfaceC2855A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3110s1 m375d = AbstractC3141x2.m375d(j3, intFunction);
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
    public static InterfaceC2969U m406r(Spliterator.InterfaceC2776a interfaceC2776a, boolean z) {
        return new C2943P(interfaceC2776a, EnumC3023d4.m485c(interfaceC2776a), z);
    }

    /* renamed from: s */
    public static IntStream m405s(Spliterator.InterfaceC2777b interfaceC2777b, boolean z) {
        return new C2902I0(interfaceC2777b, EnumC3023d4.m485c(interfaceC2777b), z);
    }

    /* renamed from: t */
    public static InterfaceC3026e1 m404t(Spliterator.InterfaceC2778c interfaceC2778c, boolean z) {
        return new C3002a1(interfaceC2778c, EnumC3023d4.m485c(interfaceC2778c), z);
    }

    /* renamed from: u */
    public static InterfaceC2936N4 m403u(C3167C c3167c, EnumC3062k1 enumC3062k1) {
        Objects.requireNonNull(c3167c);
        Objects.requireNonNull(enumC3062k1);
        return new C3068l1(EnumC3029e4.DOUBLE_VALUE, enumC3062k1, new C3084o(enumC3062k1, c3167c));
    }

    /* renamed from: v */
    public static InterfaceC2936N4 m402v(C3192S c3192s, EnumC3062k1 enumC3062k1) {
        Objects.requireNonNull(c3192s);
        Objects.requireNonNull(enumC3062k1);
        return new C3068l1(EnumC3029e4.INT_VALUE, enumC3062k1, new C3084o(enumC3062k1, c3192s));
    }

    /* renamed from: w */
    public static InterfaceC2936N4 m401w(C3213g0 c3213g0, EnumC3062k1 enumC3062k1) {
        Objects.requireNonNull(c3213g0);
        Objects.requireNonNull(enumC3062k1);
        return new C3068l1(EnumC3029e4.LONG_VALUE, enumC3062k1, new C3084o(enumC3062k1, c3213g0));
    }

    /* renamed from: x */
    public static InterfaceC2936N4 m400x(Predicate predicate, EnumC3062k1 enumC3062k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3062k1);
        return new C3068l1(EnumC3029e4.REFERENCE, enumC3062k1, new C3084o(enumC3062k1, predicate));
    }

    /* renamed from: y */
    public static Stream m399y(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C3010b3(spliterator, EnumC3023d4.m485c(spliterator), z);
    }
}
