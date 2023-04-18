package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.C2649f;
import p034j$.util.C2677i;
import p034j$.util.InterfaceC2681m;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2653d;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2656g;
import p034j$.util.function.InterfaceC2657h;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2670u;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3008D;
import p034j$.wrappers.C3012F;
import p034j$.wrappers.C3020J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2803T extends AbstractC2851c implements InterfaceC2808U {
    public AbstractC2803T(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        super(interfaceC2688s, i, z);
    }

    public AbstractC2803T(AbstractC2851c abstractC2851c, int i) {
        super(abstractC2851c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2688s.InterfaceC2689a m474L0(InterfaceC2688s interfaceC2688s) {
        return m473M0(interfaceC2688s);
    }

    /* renamed from: M0 */
    public static InterfaceC2688s.InterfaceC2689a m473M0(InterfaceC2688s interfaceC2688s) {
        if (interfaceC2688s instanceof InterfaceC2688s.InterfaceC2689a) {
            return (InterfaceC2688s.InterfaceC2689a) interfaceC2688s;
        }
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(AbstractC2851c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: A0 */
    final void mo406A0(InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3) {
        InterfaceC2655f c2722f;
        InterfaceC2688s.InterfaceC2689a m473M0 = m473M0(interfaceC2688s);
        if (interfaceC2915m3 instanceof InterfaceC2655f) {
            c2722f = (InterfaceC2655f) interfaceC2915m3;
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(AbstractC2851c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2722f = new C2722F(interfaceC2915m3);
        }
        while (!interfaceC2915m3.mo291o() && m473M0.mo126k(c2722f)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: B0 */
    public final EnumC2868e4 mo405B0() {
        return EnumC2868e4.DOUBLE_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: G */
    public final C2677i mo200G(InterfaceC2653d interfaceC2653d) {
        Objects.requireNonNull(interfaceC2653d);
        return (C2677i) m429x0(new C2713D2(EnumC2868e4.DOUBLE_VALUE, interfaceC2653d));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: H */
    public final Object mo199H(InterfaceC2674y interfaceC2674y, InterfaceC2670u interfaceC2670u, BiConsumer biConsumer) {
        C2704C c2704c = new C2704C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2674y);
        Objects.requireNonNull(interfaceC2670u);
        return m429x0(new C2992z2(EnumC2868e4.DOUBLE_VALUE, c2704c, interfaceC2670u, interfaceC2674y));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: K */
    public final double mo198K(double d, InterfaceC2653d interfaceC2653d) {
        Objects.requireNonNull(interfaceC2653d);
        return ((Double) m429x0(new C2701B2(EnumC2868e4.DOUBLE_VALUE, interfaceC2653d, d))).doubleValue();
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: K0 */
    final InterfaceC2688s mo404K0(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        return new C2928o4(abstractC2986y2, interfaceC2674y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: M */
    public final Stream mo197M(InterfaceC2656g interfaceC2656g) {
        Objects.requireNonNull(interfaceC2656g);
        return new C2758L(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, interfaceC2656g);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: R */
    public final IntStream mo196R(C3012F c3012f) {
        Objects.requireNonNull(c3012f);
        return new C2764M(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, c3012f);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: Y */
    public final boolean mo195Y(C3008D c3008d) {
        return ((Boolean) m429x0(AbstractC2925o1.m334u(c3008d, EnumC2901k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final C2677i average() {
        double[] dArr = (double[]) mo199H(C2977x.f1077a, C2965v.f1064a, C2692A.f680a);
        return dArr[2] > 0.0d ? C2677i.m527d(AbstractC2905l.m373a(dArr) / dArr[2]) : C2677i.m530a();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: b */
    public final InterfaceC2808U mo194b(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2752K(this, this, EnumC2868e4.DOUBLE_VALUE, 0, interfaceC2655f);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final Stream boxed() {
        return mo197M(C2728G.f740a);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final long count() {
        return ((AbstractC2859d1) mo186x(C2734H.f748a)).sum();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final InterfaceC2808U distinct() {
        return ((AbstractC2867e3) mo197M(C2728G.f740a)).distinct().mo234j0(C2989z.f1095a);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final C2677i findAny() {
        return (C2677i) m429x0(new C2858d0(false, EnumC2868e4.DOUBLE_VALUE, C2677i.m530a(), C2818W.f850a, C2833Z.f862a));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final C2677i findFirst() {
        return (C2677i) m429x0(new C2858d0(true, EnumC2868e4.DOUBLE_VALUE, C2677i.m530a(), C2818W.f850a, C2833Z.f862a));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: h0 */
    public final boolean mo193h0(C3008D c3008d) {
        return ((Boolean) m429x0(AbstractC2925o1.m334u(c3008d, EnumC2901k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: i0 */
    public final boolean mo192i0(C3008D c3008d) {
        return ((Boolean) m429x0(AbstractC2925o1.m334u(c3008d, EnumC2901k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public final InterfaceC2681m iterator() {
        return AbstractC2612I.m617f(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public Iterator iterator() {
        return AbstractC2612I.m617f(spliterator());
    }

    /* renamed from: j */
    public void mo191j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        m429x0(new C2900k0(interfaceC2655f, false));
    }

    /* renamed from: l0 */
    public void mo190l0(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        m429x0(new C2900k0(interfaceC2655f, true));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final InterfaceC2808U limit(long j) {
        if (j >= 0) {
            return AbstractC2702B3.m510f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final C2677i max() {
        return mo200G(C2710D.f709a);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final C2677i min() {
        return mo200G(C2716E.f721a);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: r */
    public final InterfaceC2808U mo188r(C3008D c3008d) {
        Objects.requireNonNull(c3008d);
        return new C2752K(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f920t, c3008d);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final InterfaceC2808U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2702B3.m510f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final InterfaceC2808U sorted() {
        return new C2750J3(this);
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g
    public final InterfaceC2688s.InterfaceC2689a spliterator() {
        return m473M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final double sum() {
        return AbstractC2905l.m373a((double[]) mo199H(C2983y.f1091a, C2971w.f1072a, C2698B.f692a));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final C2649f summaryStatistics() {
        return (C2649f) mo199H(C2887i.f961a, C2959u.f1059a, C2953t.f1054a);
    }

    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: t0 */
    public final InterfaceC2949s1 mo284t0(long j, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m300j(j);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public final double[] toArray() {
        return (double[]) AbstractC2980x2.m297m((InterfaceC2961u1) m428y0(C2740I.f754a)).mo272e();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public InterfaceC2875g unordered() {
        return !m433C0() ? this : new C2776O(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f918r);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: w */
    public final InterfaceC2808U mo187w(InterfaceC2656g interfaceC2656g) {
        return new C2752K(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, interfaceC2656g);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: x */
    public final InterfaceC2865e1 mo186x(InterfaceC2657h interfaceC2657h) {
        Objects.requireNonNull(interfaceC2657h);
        return new C2770N(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, interfaceC2657h);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: y */
    public final InterfaceC2808U mo185y(C3020J c3020j) {
        Objects.requireNonNull(c3020j);
        return new C2752K(this, this, EnumC2868e4.DOUBLE_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, c3020j);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: z0 */
    final InterfaceC2694A1 mo403z0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m304f(abstractC2986y2, interfaceC2688s, z);
    }
}
