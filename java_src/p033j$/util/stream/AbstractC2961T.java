package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2770F;
import p033j$.util.C2809d;
import p033j$.util.C2836g;
import p033j$.util.InterfaceC2841l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2815d;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2818g;
import p033j$.util.function.InterfaceC2819h;
import p033j$.util.function.InterfaceC2831t;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3164C;
import p033j$.wrappers.C3168E;
import p033j$.wrappers.C3176I;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2961T extends AbstractC3009c implements InterfaceC2966U {
    public AbstractC2961T(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2961T(AbstractC3009c abstractC3009c, int i) {
        super(abstractC3009c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2773a m543K0(Spliterator spliterator) {
        return m542L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2773a m542L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2773a) {
            return (Spliterator.InterfaceC2773a) spliterator;
        }
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(AbstractC3009c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: A0 */
    public final EnumC3026e4 mo475A0() {
        return EnumC3026e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: F */
    public final C2836g mo277F(InterfaceC2815d interfaceC2815d) {
        Objects.requireNonNull(interfaceC2815d);
        return (C2836g) m498w0(new C2871D2(EnumC3026e4.DOUBLE_VALUE, interfaceC2815d));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: G */
    public final Object mo276G(InterfaceC2835x interfaceC2835x, InterfaceC2831t interfaceC2831t, BiConsumer biConsumer) {
        C2862C c2862c = new C2862C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2835x);
        Objects.requireNonNull(interfaceC2831t);
        return m498w0(new C3150z2(EnumC3026e4.DOUBLE_VALUE, c2862c, interfaceC2831t, interfaceC2835x));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: J */
    public final double mo275J(double d, InterfaceC2815d interfaceC2815d) {
        Objects.requireNonNull(interfaceC2815d);
        return ((Double) m498w0(new C2859B2(EnumC3026e4.DOUBLE_VALUE, interfaceC2815d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z) {
        return new C3086o4(abstractC3144y2, interfaceC2835x, z);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: L */
    public final Stream mo274L(InterfaceC2818g interfaceC2818g) {
        Objects.requireNonNull(interfaceC2818g);
        return new C2916L(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, interfaceC2818g);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: Q */
    public final IntStream mo273Q(C3168E c3168e) {
        Objects.requireNonNull(c3168e);
        return new C2922M(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, c3168e);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: X */
    public final boolean mo272X(C3164C c3164c) {
        return ((Boolean) m498w0(AbstractC3083o1.m403u(c3164c, EnumC3059k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final C2836g average() {
        double[] dArr = (double[]) mo276G(new InterfaceC2835x() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2831t() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2831t
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3063l.m441b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3063l.m441b(dArr2, dArr3[0]);
                AbstractC3063l.m441b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2836g.m614d(AbstractC3063l.m442a(dArr) / dArr[2]) : C2836g.m617a();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: b */
    public final InterfaceC2966U mo271b(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2910K(this, this, EnumC3026e4.DOUBLE_VALUE, 0, interfaceC2817f);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final Stream boxed() {
        return mo274L(C2886G.f878a);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final long count() {
        return ((AbstractC3017d1) mo263w(new InterfaceC2819h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2819h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final InterfaceC2966U distinct() {
        return ((AbstractC3025e3) mo274L(C2886G.f878a)).distinct().mo303i0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final C2836g findAny() {
        return (C2836g) m498w0(new C3016d0(false, EnumC3026e4.DOUBLE_VALUE, C2836g.m617a(), C2976W.f988a, C2991Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final C2836g findFirst() {
        return (C2836g) m498w0(new C3016d0(true, EnumC3026e4.DOUBLE_VALUE, C2836g.m617a(), C2976W.f988a, C2991Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: g0 */
    public final boolean mo270g0(C3164C c3164c) {
        return ((Boolean) m498w0(AbstractC3083o1.m403u(c3164c, EnumC3059k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: h0 */
    public final boolean mo269h0(C3164C c3164c) {
        return ((Boolean) m498w0(AbstractC3083o1.m403u(c3164c, EnumC3059k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public final InterfaceC2841l iterator() {
        return AbstractC2770F.m680f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public Iterator iterator() {
        return AbstractC2770F.m680f(spliterator());
    }

    /* renamed from: j */
    public void mo268j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        m498w0(new C3058k0(interfaceC2817f, false));
    }

    /* renamed from: k0 */
    public void mo267k0(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        m498w0(new C3058k0(interfaceC2817f, true));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final InterfaceC2966U limit(long j) {
        if (j >= 0) {
            return AbstractC2860B3.m579f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final C2836g max() {
        return mo277F(new InterfaceC2815d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2815d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final C2836g min() {
        return mo277F(new InterfaceC2815d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2815d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: q */
    public final InterfaceC2966U mo265q(C3164C c3164c) {
        Objects.requireNonNull(c3164c);
        return new C2910K(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1058t, c3164c);
    }

    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: s0 */
    public final InterfaceC3107s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3138x2.m369j(j);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final InterfaceC2966U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2860B3.m579f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final InterfaceC2966U sorted() {
        return new C2908J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g
    public final Spliterator.InterfaceC2773a spliterator() {
        return m542L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final double sum() {
        return AbstractC3063l.m442a((double[]) mo276G(new InterfaceC2835x() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2831t() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2831t
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3063l.m441b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3063l.m441b(dArr, dArr2[0]);
                AbstractC3063l.m441b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final C2809d summaryStatistics() {
        return (C2809d) mo276G(new InterfaceC2835x() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new C2809d();
            }
        }, new InterfaceC2831t() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2831t
            public final void accept(Object obj, double d) {
                ((C2809d) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2809d) obj).m622b((C2809d) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public final double[] toArray() {
        return (double[]) AbstractC3138x2.m366m((InterfaceC3119u1) m497x0(new IntFunction() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo341e();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public InterfaceC3033g unordered() {
        return !m502B0() ? this : new C2934O(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: v */
    public final InterfaceC2966U mo264v(InterfaceC2818g interfaceC2818g) {
        return new C2910K(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n | EnumC3020d4.f1058t, interfaceC2818g);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: w */
    public final InterfaceC3023e1 mo263w(InterfaceC2819h interfaceC2819h) {
        Objects.requireNonNull(interfaceC2819h);
        return new C2928N(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, interfaceC2819h);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: x */
    public final InterfaceC2966U mo262x(C3176I c3176i) {
        Objects.requireNonNull(c3176i);
        return new C2910K(this, this, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, c3176i);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: y0 */
    final InterfaceC2852A1 mo473y0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3138x2.m373f(abstractC3144y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3073m3 interfaceC3073m3) {
        InterfaceC2817f c2880f;
        Spliterator.InterfaceC2773a m542L0 = m542L0(spliterator);
        if (interfaceC3073m3 instanceof InterfaceC2817f) {
            c2880f = (InterfaceC2817f) interfaceC3073m3;
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(AbstractC3009c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2880f = new C2880F(interfaceC3073m3);
        }
        while (!interfaceC3073m3.mo360o() && m542L0.mo198n(c2880f)) {
        }
    }
}
