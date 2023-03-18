package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.C2572f;
import p034j$.util.C2600i;
import p034j$.util.InterfaceC2604m;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2576d;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2579g;
import p034j$.util.function.InterfaceC2580h;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2593u;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2931D;
import p034j$.wrappers.C2935F;
import p034j$.wrappers.C2943J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2726T extends AbstractC2774c implements InterfaceC2731U {
    public AbstractC2726T(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        super(interfaceC2611s, i, z);
    }

    public AbstractC2726T(AbstractC2774c abstractC2774c, int i) {
        super(abstractC2774c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2611s.InterfaceC2612a m494L0(InterfaceC2611s interfaceC2611s) {
        return m493M0(interfaceC2611s);
    }

    /* renamed from: M0 */
    public static InterfaceC2611s.InterfaceC2612a m493M0(InterfaceC2611s interfaceC2611s) {
        if (interfaceC2611s instanceof InterfaceC2611s.InterfaceC2612a) {
            return (InterfaceC2611s.InterfaceC2612a) interfaceC2611s;
        }
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(AbstractC2774c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3) {
        InterfaceC2578f c2645f;
        InterfaceC2611s.InterfaceC2612a m493M0 = m493M0(interfaceC2611s);
        if (interfaceC2838m3 instanceof InterfaceC2578f) {
            c2645f = (InterfaceC2578f) interfaceC2838m3;
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(AbstractC2774c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2645f = new C2645F(interfaceC2838m3);
        }
        while (!interfaceC2838m3.mo311o() && m493M0.mo146k(c2645f)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: B0 */
    public final EnumC2791e4 mo425B0() {
        return EnumC2791e4.DOUBLE_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: G */
    public final C2600i mo220G(InterfaceC2576d interfaceC2576d) {
        Objects.requireNonNull(interfaceC2576d);
        return (C2600i) m449x0(new C2636D2(EnumC2791e4.DOUBLE_VALUE, interfaceC2576d));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: H */
    public final Object mo219H(InterfaceC2597y interfaceC2597y, InterfaceC2593u interfaceC2593u, BiConsumer biConsumer) {
        C2627C c2627c = new C2627C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2597y);
        Objects.requireNonNull(interfaceC2593u);
        return m449x0(new C2915z2(EnumC2791e4.DOUBLE_VALUE, c2627c, interfaceC2593u, interfaceC2597y));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: K */
    public final double mo218K(double d, InterfaceC2576d interfaceC2576d) {
        Objects.requireNonNull(interfaceC2576d);
        return ((Double) m449x0(new C2624B2(EnumC2791e4.DOUBLE_VALUE, interfaceC2576d, d))).doubleValue();
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: K0 */
    final InterfaceC2611s mo424K0(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        return new C2851o4(abstractC2909y2, interfaceC2597y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: M */
    public final Stream mo217M(InterfaceC2579g interfaceC2579g) {
        Objects.requireNonNull(interfaceC2579g);
        return new C2681L(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, interfaceC2579g);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: R */
    public final IntStream mo216R(C2935F c2935f) {
        Objects.requireNonNull(c2935f);
        return new C2687M(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, c2935f);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: Y */
    public final boolean mo215Y(C2931D c2931d) {
        return ((Boolean) m449x0(AbstractC2848o1.m354u(c2931d, EnumC2824k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final C2600i average() {
        double[] dArr = (double[]) mo219H(C2900x.f1076a, C2888v.f1063a, C2615A.f679a);
        return dArr[2] > 0.0d ? C2600i.m547d(AbstractC2828l.m393a(dArr) / dArr[2]) : C2600i.m550a();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: b */
    public final InterfaceC2731U mo214b(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2675K(this, this, EnumC2791e4.DOUBLE_VALUE, 0, interfaceC2578f);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final Stream boxed() {
        return mo217M(C2651G.f739a);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final long count() {
        return ((AbstractC2782d1) mo206x(C2657H.f747a)).sum();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final InterfaceC2731U distinct() {
        return ((AbstractC2790e3) mo217M(C2651G.f739a)).distinct().mo254j0(C2912z.f1094a);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final C2600i findAny() {
        return (C2600i) m449x0(new C2781d0(false, EnumC2791e4.DOUBLE_VALUE, C2600i.m550a(), C2741W.f849a, C2756Z.f861a));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final C2600i findFirst() {
        return (C2600i) m449x0(new C2781d0(true, EnumC2791e4.DOUBLE_VALUE, C2600i.m550a(), C2741W.f849a, C2756Z.f861a));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: h0 */
    public final boolean mo213h0(C2931D c2931d) {
        return ((Boolean) m449x0(AbstractC2848o1.m354u(c2931d, EnumC2824k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: i0 */
    public final boolean mo212i0(C2931D c2931d) {
        return ((Boolean) m449x0(AbstractC2848o1.m354u(c2931d, EnumC2824k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public final InterfaceC2604m iterator() {
        return AbstractC2535I.m637f(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public Iterator iterator() {
        return AbstractC2535I.m637f(spliterator());
    }

    /* renamed from: j */
    public void mo211j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        m449x0(new C2823k0(interfaceC2578f, false));
    }

    /* renamed from: l0 */
    public void mo210l0(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        m449x0(new C2823k0(interfaceC2578f, true));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final InterfaceC2731U limit(long j) {
        if (j >= 0) {
            return AbstractC2625B3.m530f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final C2600i max() {
        return mo220G(C2633D.f708a);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final C2600i min() {
        return mo220G(C2639E.f720a);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: r */
    public final InterfaceC2731U mo208r(C2931D c2931d) {
        Objects.requireNonNull(c2931d);
        return new C2675K(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f919t, c2931d);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final InterfaceC2731U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2625B3.m530f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final InterfaceC2731U sorted() {
        return new C2673J3(this);
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g
    public final InterfaceC2611s.InterfaceC2612a spliterator() {
        return m493M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final double sum() {
        return AbstractC2828l.m393a((double[]) mo219H(C2906y.f1090a, C2894w.f1071a, C2621B.f691a));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final C2572f summaryStatistics() {
        return (C2572f) mo219H(C2810i.f960a, C2882u.f1058a, C2876t.f1053a);
    }

    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: t0 */
    public final InterfaceC2872s1 mo304t0(long j, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m320j(j);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public final double[] toArray() {
        return (double[]) AbstractC2903x2.m317m((InterfaceC2884u1) m448y0(C2663I.f753a)).mo292e();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public InterfaceC2798g unordered() {
        return !m453C0() ? this : new C2699O(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f917r);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: w */
    public final InterfaceC2731U mo207w(InterfaceC2579g interfaceC2579g) {
        return new C2675K(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, interfaceC2579g);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: x */
    public final InterfaceC2788e1 mo206x(InterfaceC2580h interfaceC2580h) {
        Objects.requireNonNull(interfaceC2580h);
        return new C2693N(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, interfaceC2580h);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: y */
    public final InterfaceC2731U mo205y(C2943J c2943j) {
        Objects.requireNonNull(c2943j);
        return new C2675K(this, this, EnumC2791e4.DOUBLE_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, c2943j);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: z0 */
    final InterfaceC2617A1 mo423z0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m324f(abstractC2909y2, interfaceC2611s, z);
    }
}
