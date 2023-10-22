package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2815e;
import p033j$.util.function.C2821k;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3163C;
import p033j$.wrappers.C3188S;
import p033j$.wrappers.C3209g0;
/* renamed from: j$.util.stream.o1 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3082o1 {
    /* renamed from: a */
    public static void m422a(InterfaceC3054j3 interfaceC3054j3, Double d) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3054j3.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        } else {
            interfaceC3054j3.accept(d.doubleValue());
        }
    }

    /* renamed from: b */
    public static void m421b(InterfaceC3060k3 interfaceC3060k3, Integer num) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3060k3.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        } else {
            interfaceC3060k3.accept(num.intValue());
        }
    }

    /* renamed from: c */
    public static void m420c(InterfaceC3066l3 interfaceC3066l3, Long l) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3066l3.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        } else {
            interfaceC3066l3.accept(l.longValue());
        }
    }

    /* renamed from: d */
    public static void m419d(InterfaceC3072m3 interfaceC3072m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: e */
    public static void m418e(InterfaceC3072m3 interfaceC3072m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: f */
    public static void m417f(InterfaceC3072m3 interfaceC3072m3) {
        throw new IllegalStateException("called wrong accept method");
    }

    /* renamed from: g */
    public static Object[] m416g(InterfaceC3148z1 interfaceC3148z1, IntFunction intFunction) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3148z1.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        } else if (interfaceC3148z1.count() < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) interfaceC3148z1.count());
            interfaceC3148z1.mo385i(objArr, 0);
            return objArr;
        } else {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
    }

    /* renamed from: h */
    public static void m415h(InterfaceC3118u1 interfaceC3118u1, Double[] dArr, int i) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3118u1.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC3118u1.mo340e();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* renamed from: i */
    public static void m414i(InterfaceC3130w1 interfaceC3130w1, Integer[] numArr, int i) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3130w1.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC3130w1.mo340e();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* renamed from: j */
    public static void m413j(InterfaceC3142y1 interfaceC3142y1, Long[] lArr, int i) {
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3142y1.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC3142y1.mo340e();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* renamed from: k */
    public static void m412k(InterfaceC3118u1 interfaceC3118u1, Consumer consumer) {
        if (consumer instanceof InterfaceC2816f) {
            interfaceC3118u1.mo339g((InterfaceC2816f) consumer);
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3118u1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2772a) interfaceC3118u1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: l */
    public static void m411l(InterfaceC3130w1 interfaceC3130w1, Consumer consumer) {
        if (consumer instanceof InterfaceC2822l) {
            interfaceC3130w1.mo339g((InterfaceC2822l) consumer);
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3130w1.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2773b) interfaceC3130w1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: m */
    public static void m410m(InterfaceC3142y1 interfaceC3142y1, Consumer consumer) {
        if (consumer instanceof InterfaceC2826p) {
            interfaceC3142y1.mo339g((InterfaceC2826p) consumer);
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(interfaceC3142y1.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
            throw null;
        } else {
            ((Spliterator.InterfaceC2774c) interfaceC3142y1.spliterator()).forEachRemaining(consumer);
        }
    }

    /* renamed from: n */
    public static InterfaceC3118u1 m409n(InterfaceC3118u1 interfaceC3118u1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3118u1.count()) {
            return interfaceC3118u1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2772a interfaceC2772a = (Spliterator.InterfaceC2772a) interfaceC3118u1.spliterator();
        InterfaceC3088p1 m368j = AbstractC3137x2.m368j(j3);
        m368j.mo360m(j3);
        for (int i = 0; i < j && interfaceC2772a.mo197n(new InterfaceC2816f() { // from class: j$.util.stream.t1
            @Override // p033j$.util.function.InterfaceC2816f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2816f
            /* renamed from: j */
            public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
                Objects.requireNonNull(interfaceC2816f);
                return new C2815e(this, interfaceC2816f);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2772a.mo197n(m368j); i2++) {
        }
        m368j.mo384l();
        return m368j.mo386a();
    }

    /* renamed from: o */
    public static InterfaceC3130w1 m408o(InterfaceC3130w1 interfaceC3130w1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3130w1.count()) {
            return interfaceC3130w1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2773b interfaceC2773b = (Spliterator.InterfaceC2773b) interfaceC3130w1.spliterator();
        InterfaceC3094q1 m362p = AbstractC3137x2.m362p(j3);
        m362p.mo360m(j3);
        for (int i = 0; i < j && interfaceC2773b.mo191g(new InterfaceC2822l() { // from class: j$.util.stream.v1
            @Override // p033j$.util.function.InterfaceC2822l
            public final void accept(int i2) {
            }

            @Override // p033j$.util.function.InterfaceC2822l
            /* renamed from: k */
            public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
                Objects.requireNonNull(interfaceC2822l);
                return new C2821k(this, interfaceC2822l);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2773b.mo191g(m362p); i2++) {
        }
        m362p.mo384l();
        return m362p.mo386a();
    }

    /* renamed from: p */
    public static InterfaceC3142y1 m407p(InterfaceC3142y1 interfaceC3142y1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC3142y1.count()) {
            return interfaceC3142y1;
        }
        long j3 = j2 - j;
        Spliterator.InterfaceC2774c interfaceC2774c = (Spliterator.InterfaceC2774c) interfaceC3142y1.spliterator();
        InterfaceC3100r1 m361q = AbstractC3137x2.m361q(j3);
        m361q.mo360m(j3);
        for (int i = 0; i < j && interfaceC2774c.mo185i(new InterfaceC2826p() { // from class: j$.util.stream.x1
            @Override // p033j$.util.function.InterfaceC2826p
            public final void accept(long j4) {
            }

            @Override // p033j$.util.function.InterfaceC2826p
            /* renamed from: f */
            public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
                Objects.requireNonNull(interfaceC2826p);
                return new C2825o(this, interfaceC2826p);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && interfaceC2774c.mo185i(m361q); i2++) {
        }
        m361q.mo384l();
        return m361q.mo386a();
    }

    /* renamed from: q */
    public static InterfaceC2851A1 m406q(InterfaceC2851A1 interfaceC2851A1, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC2851A1.count()) {
            return interfaceC2851A1;
        }
        Spliterator spliterator = interfaceC2851A1.spliterator();
        long j3 = j2 - j;
        InterfaceC3106s1 m374d = AbstractC3137x2.m374d(j3, intFunction);
        m374d.mo360m(j3);
        for (int i = 0; i < j && spliterator.mo178b(new Consumer() { // from class: j$.util.stream.n1
            @Override // p033j$.util.function.Consumer
            public final void accept(Object obj) {
            }

            @Override // p033j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }); i++) {
        }
        for (int i2 = 0; i2 < j3 && spliterator.mo178b(m374d); i2++) {
        }
        m374d.mo384l();
        return m374d.mo386a();
    }

    /* renamed from: r */
    public static InterfaceC2965U m405r(Spliterator.InterfaceC2772a interfaceC2772a, boolean z) {
        return new C2939P(interfaceC2772a, EnumC3019d4.m484c(interfaceC2772a), z);
    }

    /* renamed from: s */
    public static IntStream m404s(Spliterator.InterfaceC2773b interfaceC2773b, boolean z) {
        return new C2898I0(interfaceC2773b, EnumC3019d4.m484c(interfaceC2773b), z);
    }

    /* renamed from: t */
    public static InterfaceC3022e1 m403t(Spliterator.InterfaceC2774c interfaceC2774c, boolean z) {
        return new C2998a1(interfaceC2774c, EnumC3019d4.m484c(interfaceC2774c), z);
    }

    /* renamed from: u */
    public static InterfaceC2932N4 m402u(C3163C c3163c, EnumC3058k1 enumC3058k1) {
        Objects.requireNonNull(c3163c);
        Objects.requireNonNull(enumC3058k1);
        return new C3064l1(EnumC3025e4.DOUBLE_VALUE, enumC3058k1, new C3080o(enumC3058k1, c3163c));
    }

    /* renamed from: v */
    public static InterfaceC2932N4 m401v(C3188S c3188s, EnumC3058k1 enumC3058k1) {
        Objects.requireNonNull(c3188s);
        Objects.requireNonNull(enumC3058k1);
        return new C3064l1(EnumC3025e4.INT_VALUE, enumC3058k1, new C3080o(enumC3058k1, c3188s));
    }

    /* renamed from: w */
    public static InterfaceC2932N4 m400w(C3209g0 c3209g0, EnumC3058k1 enumC3058k1) {
        Objects.requireNonNull(c3209g0);
        Objects.requireNonNull(enumC3058k1);
        return new C3064l1(EnumC3025e4.LONG_VALUE, enumC3058k1, new C3080o(enumC3058k1, c3209g0));
    }

    /* renamed from: x */
    public static InterfaceC2932N4 m399x(Predicate predicate, EnumC3058k1 enumC3058k1) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3058k1);
        return new C3064l1(EnumC3025e4.REFERENCE, enumC3058k1, new C3080o(enumC3058k1, predicate));
    }

    /* renamed from: y */
    public static Stream m398y(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C3006b3(spliterator, EnumC3019d4.m484c(spliterator), z);
    }
}
