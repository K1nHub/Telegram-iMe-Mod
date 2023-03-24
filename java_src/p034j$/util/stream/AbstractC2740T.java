package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.C2586f;
import p034j$.util.C2614i;
import p034j$.util.InterfaceC2618m;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2590d;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2593g;
import p034j$.util.function.InterfaceC2594h;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2607u;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2945D;
import p034j$.wrappers.C2949F;
import p034j$.wrappers.C2957J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2740T extends AbstractC2788c implements InterfaceC2745U {
    public AbstractC2740T(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        super(interfaceC2625s, i, z);
    }

    public AbstractC2740T(AbstractC2788c abstractC2788c, int i) {
        super(abstractC2788c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2625s.InterfaceC2626a m493L0(InterfaceC2625s interfaceC2625s) {
        return m492M0(interfaceC2625s);
    }

    /* renamed from: M0 */
    public static InterfaceC2625s.InterfaceC2626a m492M0(InterfaceC2625s interfaceC2625s) {
        if (interfaceC2625s instanceof InterfaceC2625s.InterfaceC2626a) {
            return (InterfaceC2625s.InterfaceC2626a) interfaceC2625s;
        }
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(AbstractC2788c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: A0 */
    final void mo425A0(InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3) {
        InterfaceC2592f c2659f;
        InterfaceC2625s.InterfaceC2626a m492M0 = m492M0(interfaceC2625s);
        if (interfaceC2852m3 instanceof InterfaceC2592f) {
            c2659f = (InterfaceC2592f) interfaceC2852m3;
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(AbstractC2788c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2659f = new C2659F(interfaceC2852m3);
        }
        while (!interfaceC2852m3.mo310o() && m492M0.mo145k(c2659f)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: B0 */
    public final EnumC2805e4 mo424B0() {
        return EnumC2805e4.DOUBLE_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: G */
    public final C2614i mo219G(InterfaceC2590d interfaceC2590d) {
        Objects.requireNonNull(interfaceC2590d);
        return (C2614i) m448x0(new C2650D2(EnumC2805e4.DOUBLE_VALUE, interfaceC2590d));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: H */
    public final Object mo218H(InterfaceC2611y interfaceC2611y, InterfaceC2607u interfaceC2607u, BiConsumer biConsumer) {
        C2641C c2641c = new C2641C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2611y);
        Objects.requireNonNull(interfaceC2607u);
        return m448x0(new C2929z2(EnumC2805e4.DOUBLE_VALUE, c2641c, interfaceC2607u, interfaceC2611y));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: K */
    public final double mo217K(double d, InterfaceC2590d interfaceC2590d) {
        Objects.requireNonNull(interfaceC2590d);
        return ((Double) m448x0(new C2638B2(EnumC2805e4.DOUBLE_VALUE, interfaceC2590d, d))).doubleValue();
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: K0 */
    final InterfaceC2625s mo423K0(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        return new C2865o4(abstractC2923y2, interfaceC2611y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: M */
    public final Stream mo216M(InterfaceC2593g interfaceC2593g) {
        Objects.requireNonNull(interfaceC2593g);
        return new C2695L(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, interfaceC2593g);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: R */
    public final IntStream mo215R(C2949F c2949f) {
        Objects.requireNonNull(c2949f);
        return new C2701M(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, c2949f);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: Y */
    public final boolean mo214Y(C2945D c2945d) {
        return ((Boolean) m448x0(AbstractC2862o1.m353u(c2945d, EnumC2838k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final C2614i average() {
        double[] dArr = (double[]) mo218H(C2914x.f1077a, C2902v.f1064a, C2629A.f680a);
        return dArr[2] > 0.0d ? C2614i.m546d(AbstractC2842l.m392a(dArr) / dArr[2]) : C2614i.m549a();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: b */
    public final InterfaceC2745U mo213b(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2689K(this, this, EnumC2805e4.DOUBLE_VALUE, 0, interfaceC2592f);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final Stream boxed() {
        return mo216M(C2665G.f740a);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final long count() {
        return ((AbstractC2796d1) mo205x(C2671H.f748a)).sum();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final InterfaceC2745U distinct() {
        return ((AbstractC2804e3) mo216M(C2665G.f740a)).distinct().mo253j0(C2926z.f1095a);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final C2614i findAny() {
        return (C2614i) m448x0(new C2795d0(false, EnumC2805e4.DOUBLE_VALUE, C2614i.m549a(), C2755W.f850a, C2770Z.f862a));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final C2614i findFirst() {
        return (C2614i) m448x0(new C2795d0(true, EnumC2805e4.DOUBLE_VALUE, C2614i.m549a(), C2755W.f850a, C2770Z.f862a));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: h0 */
    public final boolean mo212h0(C2945D c2945d) {
        return ((Boolean) m448x0(AbstractC2862o1.m353u(c2945d, EnumC2838k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: i0 */
    public final boolean mo211i0(C2945D c2945d) {
        return ((Boolean) m448x0(AbstractC2862o1.m353u(c2945d, EnumC2838k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public final InterfaceC2618m iterator() {
        return AbstractC2549I.m636f(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public Iterator iterator() {
        return AbstractC2549I.m636f(spliterator());
    }

    /* renamed from: j */
    public void mo210j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        m448x0(new C2837k0(interfaceC2592f, false));
    }

    /* renamed from: l0 */
    public void mo209l0(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        m448x0(new C2837k0(interfaceC2592f, true));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final InterfaceC2745U limit(long j) {
        if (j >= 0) {
            return AbstractC2639B3.m529f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final C2614i max() {
        return mo219G(C2647D.f709a);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final C2614i min() {
        return mo219G(C2653E.f721a);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: r */
    public final InterfaceC2745U mo207r(C2945D c2945d) {
        Objects.requireNonNull(c2945d);
        return new C2689K(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f920t, c2945d);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final InterfaceC2745U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2639B3.m529f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final InterfaceC2745U sorted() {
        return new C2687J3(this);
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g
    public final InterfaceC2625s.InterfaceC2626a spliterator() {
        return m492M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final double sum() {
        return AbstractC2842l.m392a((double[]) mo218H(C2920y.f1091a, C2908w.f1072a, C2635B.f692a));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final C2586f summaryStatistics() {
        return (C2586f) mo218H(C2824i.f961a, C2896u.f1059a, C2890t.f1054a);
    }

    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: t0 */
    public final InterfaceC2886s1 mo303t0(long j, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m319j(j);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public final double[] toArray() {
        return (double[]) AbstractC2917x2.m316m((InterfaceC2898u1) m447y0(C2677I.f754a)).mo291e();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public InterfaceC2812g unordered() {
        return !m452C0() ? this : new C2713O(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f918r);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: w */
    public final InterfaceC2745U mo206w(InterfaceC2593g interfaceC2593g) {
        return new C2689K(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, interfaceC2593g);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: x */
    public final InterfaceC2802e1 mo205x(InterfaceC2594h interfaceC2594h) {
        Objects.requireNonNull(interfaceC2594h);
        return new C2707N(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, interfaceC2594h);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: y */
    public final InterfaceC2745U mo204y(C2957J c2957j) {
        Objects.requireNonNull(c2957j);
        return new C2689K(this, this, EnumC2805e4.DOUBLE_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, c2957j);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: z0 */
    final InterfaceC2631A1 mo422z0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m323f(abstractC2923y2, interfaceC2625s, z);
    }
}
