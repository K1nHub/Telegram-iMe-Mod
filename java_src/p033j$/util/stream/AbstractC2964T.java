package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.C2812d;
import p033j$.util.C2839g;
import p033j$.util.InterfaceC2844l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3167C;
import p033j$.wrappers.C3171E;
import p033j$.wrappers.C3179I;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2964T extends AbstractC3012c implements InterfaceC2969U {
    public AbstractC2964T(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2964T(AbstractC3012c abstractC3012c, int i) {
        super(abstractC3012c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2776a m543K0(Spliterator spliterator) {
        return m542L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2776a m542L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2776a) {
            return (Spliterator.InterfaceC2776a) spliterator;
        }
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(AbstractC3012c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: A0 */
    public final EnumC3029e4 mo475A0() {
        return EnumC3029e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: F */
    public final C2839g mo277F(InterfaceC2818d interfaceC2818d) {
        Objects.requireNonNull(interfaceC2818d);
        return (C2839g) m498w0(new C2874D2(EnumC3029e4.DOUBLE_VALUE, interfaceC2818d));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: G */
    public final Object mo276G(InterfaceC2838x interfaceC2838x, InterfaceC2834t interfaceC2834t, BiConsumer biConsumer) {
        C2865C c2865c = new C2865C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2838x);
        Objects.requireNonNull(interfaceC2834t);
        return m498w0(new C3153z2(EnumC3029e4.DOUBLE_VALUE, c2865c, interfaceC2834t, interfaceC2838x));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: J */
    public final double mo275J(double d, InterfaceC2818d interfaceC2818d) {
        Objects.requireNonNull(interfaceC2818d);
        return ((Double) m498w0(new C2862B2(EnumC3029e4.DOUBLE_VALUE, interfaceC2818d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        return new C3089o4(abstractC3147y2, interfaceC2838x, z);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: L */
    public final Stream mo274L(InterfaceC2821g interfaceC2821g) {
        Objects.requireNonNull(interfaceC2821g);
        return new C2919L(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, interfaceC2821g);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: Q */
    public final IntStream mo273Q(C3171E c3171e) {
        Objects.requireNonNull(c3171e);
        return new C2925M(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, c3171e);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: X */
    public final boolean mo272X(C3167C c3167c) {
        return ((Boolean) m498w0(AbstractC3086o1.m403u(c3167c, EnumC3062k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final C2839g average() {
        double[] dArr = (double[]) mo276G(new InterfaceC2838x() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2834t() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2834t
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3066l.m441b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3066l.m441b(dArr2, dArr3[0]);
                AbstractC3066l.m441b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2839g.m614d(AbstractC3066l.m442a(dArr) / dArr[2]) : C2839g.m617a();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: b */
    public final InterfaceC2969U mo271b(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2913K(this, this, EnumC3029e4.DOUBLE_VALUE, 0, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final Stream boxed() {
        return mo274L(C2889G.f878a);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final long count() {
        return ((AbstractC3020d1) mo263w(new InterfaceC2822h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2822h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final InterfaceC2969U distinct() {
        return ((AbstractC3028e3) mo274L(C2889G.f878a)).distinct().mo303i0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final C2839g findAny() {
        return (C2839g) m498w0(new C3019d0(false, EnumC3029e4.DOUBLE_VALUE, C2839g.m617a(), C2979W.f988a, C2994Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final C2839g findFirst() {
        return (C2839g) m498w0(new C3019d0(true, EnumC3029e4.DOUBLE_VALUE, C2839g.m617a(), C2979W.f988a, C2994Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: g0 */
    public final boolean mo270g0(C3167C c3167c) {
        return ((Boolean) m498w0(AbstractC3086o1.m403u(c3167c, EnumC3062k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: h0 */
    public final boolean mo269h0(C3167C c3167c) {
        return ((Boolean) m498w0(AbstractC3086o1.m403u(c3167c, EnumC3062k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public final InterfaceC2844l iterator() {
        return AbstractC2773F.m680f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public Iterator iterator() {
        return AbstractC2773F.m680f(spliterator());
    }

    /* renamed from: j */
    public void mo268j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        m498w0(new C3061k0(interfaceC2820f, false));
    }

    /* renamed from: k0 */
    public void mo267k0(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        m498w0(new C3061k0(interfaceC2820f, true));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final InterfaceC2969U limit(long j) {
        if (j >= 0) {
            return AbstractC2863B3.m579f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final C2839g max() {
        return mo277F(new InterfaceC2818d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2818d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final C2839g min() {
        return mo277F(new InterfaceC2818d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2818d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: q */
    public final InterfaceC2969U mo265q(C3167C c3167c) {
        Objects.requireNonNull(c3167c);
        return new C2913K(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1058t, c3167c);
    }

    @Override // p033j$.util.stream.AbstractC3147y2
    /* renamed from: s0 */
    public final InterfaceC3110s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3141x2.m369j(j);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final InterfaceC2969U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2863B3.m579f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final InterfaceC2969U sorted() {
        return new C2911J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g
    public final Spliterator.InterfaceC2776a spliterator() {
        return m542L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final double sum() {
        return AbstractC3066l.m442a((double[]) mo276G(new InterfaceC2838x() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2834t() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2834t
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3066l.m441b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3066l.m441b(dArr, dArr2[0]);
                AbstractC3066l.m441b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final C2812d summaryStatistics() {
        return (C2812d) mo276G(new InterfaceC2838x() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new C2812d();
            }
        }, new InterfaceC2834t() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2834t
            public final void accept(Object obj, double d) {
                ((C2812d) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2812d) obj).m622b((C2812d) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public final double[] toArray() {
        return (double[]) AbstractC3141x2.m366m((InterfaceC3122u1) m497x0(new IntFunction() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo341e();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public InterfaceC3036g unordered() {
        return !m502B0() ? this : new C2937O(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: v */
    public final InterfaceC2969U mo264v(InterfaceC2821g interfaceC2821g) {
        return new C2913K(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, interfaceC2821g);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: w */
    public final InterfaceC3026e1 mo263w(InterfaceC2822h interfaceC2822h) {
        Objects.requireNonNull(interfaceC2822h);
        return new C2931N(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, interfaceC2822h);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: x */
    public final InterfaceC2969U mo262x(C3179I c3179i) {
        Objects.requireNonNull(c3179i);
        return new C2913K(this, this, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, c3179i);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: y0 */
    final InterfaceC2855A1 mo473y0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3141x2.m373f(abstractC3147y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3076m3 interfaceC3076m3) {
        InterfaceC2820f c2883f;
        Spliterator.InterfaceC2776a m542L0 = m542L0(spliterator);
        if (interfaceC3076m3 instanceof InterfaceC2820f) {
            c2883f = (InterfaceC2820f) interfaceC3076m3;
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(AbstractC3012c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2883f = new C2883F(interfaceC3076m3);
        }
        while (!interfaceC3076m3.mo360o() && m542L0.mo198n(c2883f)) {
        }
    }
}
