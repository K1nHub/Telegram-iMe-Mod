package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.C2814f;
import p033j$.util.C2842i;
import p033j$.util.InterfaceC2846m;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3177F;
import p033j$.wrappers.C3185J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2968T extends AbstractC3016c implements InterfaceC2973U {
    public AbstractC2968T(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    public AbstractC2968T(AbstractC3016c abstractC3016c, int i) {
        super(abstractC3016c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2854a m497L0(InterfaceC2853s interfaceC2853s) {
        return m496M0(interfaceC2853s);
    }

    /* renamed from: M0 */
    public static InterfaceC2853s.InterfaceC2854a m496M0(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s instanceof InterfaceC2853s.InterfaceC2854a) {
            return (InterfaceC2853s.InterfaceC2854a) interfaceC2853s;
        }
        if (AbstractC2958Q4.f913a) {
            AbstractC2958Q4.m500a(AbstractC3016c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        InterfaceC2820f c2887f;
        InterfaceC2853s.InterfaceC2854a m496M0 = m496M0(interfaceC2853s);
        if (interfaceC3080m3 instanceof InterfaceC2820f) {
            c2887f = (InterfaceC2820f) interfaceC3080m3;
        } else if (AbstractC2958Q4.f913a) {
            AbstractC2958Q4.m500a(AbstractC3016c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2887f = new C2887F(interfaceC3080m3);
        }
        while (!interfaceC3080m3.mo314o() && m496M0.mo149k(c2887f)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo428B0() {
        return EnumC3033e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: G */
    public final C2842i mo223G(InterfaceC2818d interfaceC2818d) {
        Objects.requireNonNull(interfaceC2818d);
        return (C2842i) m452x0(new C2878D2(EnumC3033e4.DOUBLE_VALUE, interfaceC2818d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: H */
    public final Object mo222H(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer) {
        C2869C c2869c = new C2869C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(interfaceC2835u);
        return m452x0(new C3157z2(EnumC3033e4.DOUBLE_VALUE, c2869c, interfaceC2835u, interfaceC2839y));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: K */
    public final double mo221K(double d, InterfaceC2818d interfaceC2818d) {
        Objects.requireNonNull(interfaceC2818d);
        return ((Double) m452x0(new C2866B2(EnumC3033e4.DOUBLE_VALUE, interfaceC2818d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo427K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C3093o4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: M */
    public final Stream mo220M(InterfaceC2821g interfaceC2821g) {
        Objects.requireNonNull(interfaceC2821g);
        return new C2923L(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, interfaceC2821g);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: R */
    public final IntStream mo219R(C3177F c3177f) {
        Objects.requireNonNull(c3177f);
        return new C2929M(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, c3177f);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: Y */
    public final boolean mo218Y(C3173D c3173d) {
        return ((Boolean) m452x0(AbstractC3090o1.m357u(c3173d, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i average() {
        double[] dArr = (double[]) mo222H(new InterfaceC2839y() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2835u() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2835u
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3070l.m395b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3070l.m395b(dArr2, dArr3[0]);
                AbstractC3070l.m395b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2842i.m550d(AbstractC3070l.m396a(dArr) / dArr[2]) : C2842i.m553a();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: b */
    public final InterfaceC2973U mo217b(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, 0, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final Stream boxed() {
        return mo220M(C2893G.f828a);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final long count() {
        return ((AbstractC3024d1) mo209x(new InterfaceC2822h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2822h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U distinct() {
        return ((AbstractC3032e3) mo220M(C2893G.f828a)).distinct().mo257j0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i findAny() {
        return (C2842i) m452x0(new C3023d0(false, EnumC3033e4.DOUBLE_VALUE, C2842i.m553a(), C2983W.f938a, C2998Z.f950a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i findFirst() {
        return (C2842i) m452x0(new C3023d0(true, EnumC3033e4.DOUBLE_VALUE, C2842i.m553a(), C2983W.f938a, C2998Z.f950a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: h0 */
    public final boolean mo216h0(C3173D c3173d) {
        return ((Boolean) m452x0(AbstractC3090o1.m357u(c3173d, EnumC3066k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: i0 */
    public final boolean mo215i0(C3173D c3173d) {
        return ((Boolean) m452x0(AbstractC3090o1.m357u(c3173d, EnumC3066k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2846m iterator() {
        return AbstractC2777I.m639f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public Iterator iterator() {
        return AbstractC2777I.m639f(spliterator());
    }

    /* renamed from: j */
    public void mo214j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        m452x0(new C3065k0(interfaceC2820f, false));
    }

    /* renamed from: l0 */
    public void mo213l0(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        m452x0(new C3065k0(interfaceC2820f, true));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m533f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i max() {
        return mo223G(new InterfaceC2818d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2818d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i min() {
        return mo223G(new InterfaceC2818d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2818d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: r */
    public final InterfaceC2973U mo211r(C3173D c3173d) {
        Objects.requireNonNull(c3173d);
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1008t, c3173d);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m533f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U sorted() {
        return new C2915J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2853s.InterfaceC2854a spliterator() {
        return m496M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final double sum() {
        return AbstractC3070l.m396a((double[]) mo222H(new InterfaceC2839y() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2835u() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2835u
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3070l.m395b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3070l.m395b(dArr, dArr2[0]);
                AbstractC3070l.m395b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2814f summaryStatistics() {
        return (C2814f) mo222H(new InterfaceC2839y() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new C2814f();
            }
        }, new InterfaceC2835u() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2835u
            public final void accept(Object obj, double d) {
                ((C2814f) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2814f) obj).m558b((C2814f) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo307t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m323j(j);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final double[] toArray() {
        return (double[]) AbstractC3145x2.m320m((InterfaceC3126u1) m451y0(new InterfaceC2827m() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.InterfaceC2827m
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m456C0() ? this : new C2941O(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1006r);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: w */
    public final InterfaceC2973U mo210w(InterfaceC2821g interfaceC2821g) {
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n | EnumC3027d4.f1008t, interfaceC2821g);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: x */
    public final InterfaceC3030e1 mo209x(InterfaceC2822h interfaceC2822h) {
        Objects.requireNonNull(interfaceC2822h);
        return new C2935N(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, interfaceC2822h);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: y */
    public final InterfaceC2973U mo208y(C3185J c3185j) {
        Objects.requireNonNull(c3185j);
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, c3185j);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo426z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m327f(abstractC3151y2, interfaceC2853s, z);
    }
}
