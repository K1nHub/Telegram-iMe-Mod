package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.C2808d;
import p033j$.util.C2835g;
import p033j$.util.InterfaceC2840l;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2804a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2814d;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2817g;
import p033j$.util.function.InterfaceC2818h;
import p033j$.util.function.InterfaceC2830t;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3163C;
import p033j$.wrappers.C3167E;
import p033j$.wrappers.C3175I;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2960T extends AbstractC3008c implements InterfaceC2965U {
    public AbstractC2960T(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2960T(AbstractC3008c abstractC3008c, int i) {
        super(abstractC3008c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2772a m542K0(Spliterator spliterator) {
        return m541L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2772a m541L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2772a) {
            return (Spliterator.InterfaceC2772a) spliterator;
        }
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(AbstractC3008c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: A0 */
    public final EnumC3025e4 mo474A0() {
        return EnumC3025e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: F */
    public final C2835g mo276F(InterfaceC2814d interfaceC2814d) {
        Objects.requireNonNull(interfaceC2814d);
        return (C2835g) m497w0(new C2870D2(EnumC3025e4.DOUBLE_VALUE, interfaceC2814d));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: G */
    public final Object mo275G(InterfaceC2834x interfaceC2834x, InterfaceC2830t interfaceC2830t, BiConsumer biConsumer) {
        C2861C c2861c = new C2861C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2834x);
        Objects.requireNonNull(interfaceC2830t);
        return m497w0(new C3149z2(EnumC3025e4.DOUBLE_VALUE, c2861c, interfaceC2830t, interfaceC2834x));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: J */
    public final double mo274J(double d, InterfaceC2814d interfaceC2814d) {
        Objects.requireNonNull(interfaceC2814d);
        return ((Double) m497w0(new C2858B2(EnumC3025e4.DOUBLE_VALUE, interfaceC2814d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: J0 */
    final Spliterator mo473J0(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        return new C3085o4(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: L */
    public final Stream mo273L(InterfaceC2817g interfaceC2817g) {
        Objects.requireNonNull(interfaceC2817g);
        return new C2915L(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, interfaceC2817g);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: Q */
    public final IntStream mo272Q(C3167E c3167e) {
        Objects.requireNonNull(c3167e);
        return new C2921M(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, c3167e);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: X */
    public final boolean mo271X(C3163C c3163c) {
        return ((Boolean) m497w0(AbstractC3082o1.m402u(c3163c, EnumC3058k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final C2835g average() {
        double[] dArr = (double[]) mo275G(new InterfaceC2834x() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2830t() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2830t
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3062l.m440b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3062l.m440b(dArr2, dArr3[0]);
                AbstractC3062l.m440b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2835g.m613d(AbstractC3062l.m441a(dArr) / dArr[2]) : C2835g.m616a();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: b */
    public final InterfaceC2965U mo270b(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2909K(this, this, EnumC3025e4.DOUBLE_VALUE, 0, interfaceC2816f);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final Stream boxed() {
        return mo273L(C2885G.f878a);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final long count() {
        return ((AbstractC3016d1) mo262w(new InterfaceC2818h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2818h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final InterfaceC2965U distinct() {
        return ((AbstractC3024e3) mo273L(C2885G.f878a)).distinct().mo302i0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final C2835g findAny() {
        return (C2835g) m497w0(new C3015d0(false, EnumC3025e4.DOUBLE_VALUE, C2835g.m616a(), C2975W.f988a, C2990Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final C2835g findFirst() {
        return (C2835g) m497w0(new C3015d0(true, EnumC3025e4.DOUBLE_VALUE, C2835g.m616a(), C2975W.f988a, C2990Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: g0 */
    public final boolean mo269g0(C3163C c3163c) {
        return ((Boolean) m497w0(AbstractC3082o1.m402u(c3163c, EnumC3058k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: h0 */
    public final boolean mo268h0(C3163C c3163c) {
        return ((Boolean) m497w0(AbstractC3082o1.m402u(c3163c, EnumC3058k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public final InterfaceC2840l iterator() {
        return AbstractC2769F.m679f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public Iterator iterator() {
        return AbstractC2769F.m679f(spliterator());
    }

    /* renamed from: j */
    public void mo267j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        m497w0(new C3057k0(interfaceC2816f, false));
    }

    /* renamed from: k0 */
    public void mo266k0(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        m497w0(new C3057k0(interfaceC2816f, true));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final InterfaceC2965U limit(long j) {
        if (j >= 0) {
            return AbstractC2859B3.m578f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final C2835g max() {
        return mo276F(new InterfaceC2814d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2814d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final C2835g min() {
        return mo276F(new InterfaceC2814d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2814d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: q */
    public final InterfaceC2965U mo264q(C3163C c3163c) {
        Objects.requireNonNull(c3163c);
        return new C2909K(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1058t, c3163c);
    }

    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: s0 */
    public final InterfaceC3106s1 mo352s0(long j, IntFunction intFunction) {
        return AbstractC3137x2.m368j(j);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final InterfaceC2965U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2859B3.m578f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final InterfaceC2965U sorted() {
        return new C2907J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g
    public final Spliterator.InterfaceC2772a spliterator() {
        return m541L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final double sum() {
        return AbstractC3062l.m441a((double[]) mo275G(new InterfaceC2834x() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2830t() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2830t
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3062l.m440b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3062l.m440b(dArr, dArr2[0]);
                AbstractC3062l.m440b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final C2808d summaryStatistics() {
        return (C2808d) mo275G(new InterfaceC2834x() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new C2808d();
            }
        }, new InterfaceC2830t() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2830t
            public final void accept(Object obj, double d) {
                ((C2808d) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2808d) obj).m621b((C2808d) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public final double[] toArray() {
        return (double[]) AbstractC3137x2.m365m((InterfaceC3118u1) m496x0(new IntFunction() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo340e();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public InterfaceC3032g unordered() {
        return !m501B0() ? this : new C2933O(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: v */
    public final InterfaceC2965U mo263v(InterfaceC2817g interfaceC2817g) {
        return new C2909K(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, interfaceC2817g);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: w */
    public final InterfaceC3022e1 mo262w(InterfaceC2818h interfaceC2818h) {
        Objects.requireNonNull(interfaceC2818h);
        return new C2927N(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, interfaceC2818h);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: x */
    public final InterfaceC2965U mo261x(C3175I c3175i) {
        Objects.requireNonNull(c3175i);
        return new C2909K(this, this, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, c3175i);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: y0 */
    final InterfaceC2851A1 mo472y0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3137x2.m372f(abstractC3143y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: z0 */
    final void mo471z0(Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3) {
        InterfaceC2816f c2879f;
        Spliterator.InterfaceC2772a m541L0 = m541L0(spliterator);
        if (interfaceC3072m3 instanceof InterfaceC2816f) {
            c2879f = (InterfaceC2816f) interfaceC3072m3;
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(AbstractC3008c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2879f = new C2879F(interfaceC3072m3);
        }
        while (!interfaceC3072m3.mo359o() && m541L0.mo197n(c2879f)) {
        }
    }
}
