package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.C2807d;
import p033j$.util.C2834g;
import p033j$.util.InterfaceC2839l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2813d;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2816g;
import p033j$.util.function.InterfaceC2817h;
import p033j$.util.function.InterfaceC2829t;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3162C;
import p033j$.wrappers.C3166E;
import p033j$.wrappers.C3174I;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2959T extends AbstractC3007c implements InterfaceC2964U {
    public AbstractC2959T(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2959T(AbstractC3007c abstractC3007c, int i) {
        super(abstractC3007c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2771a m546K0(Spliterator spliterator) {
        return m545L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2771a m545L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2771a) {
            return (Spliterator.InterfaceC2771a) spliterator;
        }
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(AbstractC3007c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: A0 */
    public final EnumC3024e4 mo478A0() {
        return EnumC3024e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: F */
    public final C2834g mo280F(InterfaceC2813d interfaceC2813d) {
        Objects.requireNonNull(interfaceC2813d);
        return (C2834g) m501w0(new C2869D2(EnumC3024e4.DOUBLE_VALUE, interfaceC2813d));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: G */
    public final Object mo279G(InterfaceC2833x interfaceC2833x, InterfaceC2829t interfaceC2829t, BiConsumer biConsumer) {
        C2860C c2860c = new C2860C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2833x);
        Objects.requireNonNull(interfaceC2829t);
        return m501w0(new C3148z2(EnumC3024e4.DOUBLE_VALUE, c2860c, interfaceC2829t, interfaceC2833x));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: J */
    public final double mo278J(double d, InterfaceC2813d interfaceC2813d) {
        Objects.requireNonNull(interfaceC2813d);
        return ((Double) m501w0(new C2857B2(EnumC3024e4.DOUBLE_VALUE, interfaceC2813d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: J0 */
    final Spliterator mo477J0(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        return new C3084o4(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: L */
    public final Stream mo277L(InterfaceC2816g interfaceC2816g) {
        Objects.requireNonNull(interfaceC2816g);
        return new C2914L(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, interfaceC2816g);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: Q */
    public final IntStream mo276Q(C3166E c3166e) {
        Objects.requireNonNull(c3166e);
        return new C2920M(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, c3166e);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: X */
    public final boolean mo275X(C3162C c3162c) {
        return ((Boolean) m501w0(AbstractC3081o1.m406u(c3162c, EnumC3057k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final C2834g average() {
        double[] dArr = (double[]) mo279G(new InterfaceC2833x() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2829t() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2829t
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3061l.m444b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3061l.m444b(dArr2, dArr3[0]);
                AbstractC3061l.m444b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2834g.m617d(AbstractC3061l.m445a(dArr) / dArr[2]) : C2834g.m620a();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: b */
    public final InterfaceC2964U mo274b(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2908K(this, this, EnumC3024e4.DOUBLE_VALUE, 0, interfaceC2815f);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final Stream boxed() {
        return mo277L(C2884G.f878a);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final long count() {
        return ((AbstractC3015d1) mo266w(new InterfaceC2817h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2817h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final InterfaceC2964U distinct() {
        return ((AbstractC3023e3) mo277L(C2884G.f878a)).distinct().mo306i0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final C2834g findAny() {
        return (C2834g) m501w0(new C3014d0(false, EnumC3024e4.DOUBLE_VALUE, C2834g.m620a(), C2974W.f988a, C2989Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final C2834g findFirst() {
        return (C2834g) m501w0(new C3014d0(true, EnumC3024e4.DOUBLE_VALUE, C2834g.m620a(), C2974W.f988a, C2989Z.f1000a));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: g0 */
    public final boolean mo273g0(C3162C c3162c) {
        return ((Boolean) m501w0(AbstractC3081o1.m406u(c3162c, EnumC3057k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: h0 */
    public final boolean mo272h0(C3162C c3162c) {
        return ((Boolean) m501w0(AbstractC3081o1.m406u(c3162c, EnumC3057k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public final InterfaceC2839l iterator() {
        return AbstractC2768F.m683f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public Iterator iterator() {
        return AbstractC2768F.m683f(spliterator());
    }

    /* renamed from: j */
    public void mo271j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        m501w0(new C3056k0(interfaceC2815f, false));
    }

    /* renamed from: k0 */
    public void mo270k0(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        m501w0(new C3056k0(interfaceC2815f, true));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final InterfaceC2964U limit(long j) {
        if (j >= 0) {
            return AbstractC2858B3.m582f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final C2834g max() {
        return mo280F(new InterfaceC2813d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2813d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final C2834g min() {
        return mo280F(new InterfaceC2813d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2813d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: q */
    public final InterfaceC2964U mo268q(C3162C c3162c) {
        Objects.requireNonNull(c3162c);
        return new C2908K(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1058t, c3162c);
    }

    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: s0 */
    public final InterfaceC3105s1 mo356s0(long j, IntFunction intFunction) {
        return AbstractC3136x2.m372j(j);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final InterfaceC2964U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2858B3.m582f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final InterfaceC2964U sorted() {
        return new C2906J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g
    public final Spliterator.InterfaceC2771a spliterator() {
        return m545L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final double sum() {
        return AbstractC3061l.m445a((double[]) mo279G(new InterfaceC2833x() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2829t() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2829t
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3061l.m444b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3061l.m444b(dArr, dArr2[0]);
                AbstractC3061l.m444b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final C2807d summaryStatistics() {
        return (C2807d) mo279G(new InterfaceC2833x() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new C2807d();
            }
        }, new InterfaceC2829t() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2829t
            public final void accept(Object obj, double d) {
                ((C2807d) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2807d) obj).m625b((C2807d) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public final double[] toArray() {
        return (double[]) AbstractC3136x2.m369m((InterfaceC3117u1) m500x0(new IntFunction() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo344e();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public InterfaceC3031g unordered() {
        return !m505B0() ? this : new C2932O(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: v */
    public final InterfaceC2964U mo267v(InterfaceC2816g interfaceC2816g) {
        return new C2908K(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, interfaceC2816g);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: w */
    public final InterfaceC3021e1 mo266w(InterfaceC2817h interfaceC2817h) {
        Objects.requireNonNull(interfaceC2817h);
        return new C2926N(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, interfaceC2817h);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: x */
    public final InterfaceC2964U mo265x(C3174I c3174i) {
        Objects.requireNonNull(c3174i);
        return new C2908K(this, this, EnumC3024e4.DOUBLE_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, c3174i);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: y0 */
    final InterfaceC2850A1 mo476y0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3136x2.m376f(abstractC3142y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: z0 */
    final void mo475z0(Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3) {
        InterfaceC2815f c2878f;
        Spliterator.InterfaceC2771a m545L0 = m545L0(spliterator);
        if (interfaceC3071m3 instanceof InterfaceC2815f) {
            c2878f = (InterfaceC2815f) interfaceC3071m3;
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(AbstractC3007c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2878f = new C2878F(interfaceC3071m3);
        }
        while (!interfaceC3071m3.mo363o() && m545L0.mo201n(c2878f)) {
        }
    }
}
