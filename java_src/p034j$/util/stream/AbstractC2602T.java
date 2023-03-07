package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.C2448f;
import p034j$.util.C2476i;
import p034j$.util.InterfaceC2480m;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2452d;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2455g;
import p034j$.util.function.InterfaceC2456h;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2469u;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2807D;
import p034j$.wrappers.C2811F;
import p034j$.wrappers.C2819J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2602T extends AbstractC2650c implements InterfaceC2607U {
    public AbstractC2602T(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        super(interfaceC2487s, i, z);
    }

    public AbstractC2602T(AbstractC2650c abstractC2650c, int i) {
        super(abstractC2650c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2487s.InterfaceC2488a m494L0(InterfaceC2487s interfaceC2487s) {
        return m493M0(interfaceC2487s);
    }

    /* renamed from: M0 */
    public static InterfaceC2487s.InterfaceC2488a m493M0(InterfaceC2487s interfaceC2487s) {
        if (interfaceC2487s instanceof InterfaceC2487s.InterfaceC2488a) {
            return (InterfaceC2487s.InterfaceC2488a) interfaceC2487s;
        }
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(AbstractC2650c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3) {
        InterfaceC2454f c2521f;
        InterfaceC2487s.InterfaceC2488a m493M0 = m493M0(interfaceC2487s);
        if (interfaceC2714m3 instanceof InterfaceC2454f) {
            c2521f = (InterfaceC2454f) interfaceC2714m3;
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(AbstractC2650c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2521f = new C2521F(interfaceC2714m3);
        }
        while (!interfaceC2714m3.mo311o() && m493M0.mo146k(c2521f)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: B0 */
    public final EnumC2667e4 mo425B0() {
        return EnumC2667e4.DOUBLE_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: G */
    public final C2476i mo220G(InterfaceC2452d interfaceC2452d) {
        Objects.requireNonNull(interfaceC2452d);
        return (C2476i) m449x0(new C2512D2(EnumC2667e4.DOUBLE_VALUE, interfaceC2452d));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: H */
    public final Object mo219H(InterfaceC2473y interfaceC2473y, InterfaceC2469u interfaceC2469u, BiConsumer biConsumer) {
        C2503C c2503c = new C2503C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2473y);
        Objects.requireNonNull(interfaceC2469u);
        return m449x0(new C2791z2(EnumC2667e4.DOUBLE_VALUE, c2503c, interfaceC2469u, interfaceC2473y));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: K */
    public final double mo218K(double d, InterfaceC2452d interfaceC2452d) {
        Objects.requireNonNull(interfaceC2452d);
        return ((Double) m449x0(new C2500B2(EnumC2667e4.DOUBLE_VALUE, interfaceC2452d, d))).doubleValue();
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: K0 */
    final InterfaceC2487s mo424K0(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        return new C2727o4(abstractC2785y2, interfaceC2473y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: M */
    public final Stream mo217M(InterfaceC2455g interfaceC2455g) {
        Objects.requireNonNull(interfaceC2455g);
        return new C2557L(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, interfaceC2455g);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: R */
    public final IntStream mo216R(C2811F c2811f) {
        Objects.requireNonNull(c2811f);
        return new C2563M(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, c2811f);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: Y */
    public final boolean mo215Y(C2807D c2807d) {
        return ((Boolean) m449x0(AbstractC2724o1.m354u(c2807d, EnumC2700k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final C2476i average() {
        double[] dArr = (double[]) mo219H(C2776x.f1071a, C2764v.f1058a, C2491A.f674a);
        return dArr[2] > 0.0d ? C2476i.m547d(AbstractC2704l.m393a(dArr) / dArr[2]) : C2476i.m550a();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: b */
    public final InterfaceC2607U mo214b(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2551K(this, this, EnumC2667e4.DOUBLE_VALUE, 0, interfaceC2454f);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final Stream boxed() {
        return mo217M(C2527G.f734a);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final long count() {
        return ((AbstractC2658d1) mo206x(C2533H.f742a)).sum();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final InterfaceC2607U distinct() {
        return ((AbstractC2666e3) mo217M(C2527G.f734a)).distinct().mo254j0(C2788z.f1089a);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final C2476i findAny() {
        return (C2476i) m449x0(new C2657d0(false, EnumC2667e4.DOUBLE_VALUE, C2476i.m550a(), C2617W.f844a, C2632Z.f856a));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final C2476i findFirst() {
        return (C2476i) m449x0(new C2657d0(true, EnumC2667e4.DOUBLE_VALUE, C2476i.m550a(), C2617W.f844a, C2632Z.f856a));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: h0 */
    public final boolean mo213h0(C2807D c2807d) {
        return ((Boolean) m449x0(AbstractC2724o1.m354u(c2807d, EnumC2700k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: i0 */
    public final boolean mo212i0(C2807D c2807d) {
        return ((Boolean) m449x0(AbstractC2724o1.m354u(c2807d, EnumC2700k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public final InterfaceC2480m iterator() {
        return AbstractC2411I.m637f(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public Iterator iterator() {
        return AbstractC2411I.m637f(spliterator());
    }

    /* renamed from: j */
    public void mo211j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        m449x0(new C2699k0(interfaceC2454f, false));
    }

    /* renamed from: l0 */
    public void mo210l0(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        m449x0(new C2699k0(interfaceC2454f, true));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final InterfaceC2607U limit(long j) {
        if (j >= 0) {
            return AbstractC2501B3.m530f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final C2476i max() {
        return mo220G(C2509D.f703a);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final C2476i min() {
        return mo220G(C2515E.f715a);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: r */
    public final InterfaceC2607U mo208r(C2807D c2807d) {
        Objects.requireNonNull(c2807d);
        return new C2551K(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f914t, c2807d);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final InterfaceC2607U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2501B3.m530f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final InterfaceC2607U sorted() {
        return new C2549J3(this);
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g
    public final InterfaceC2487s.InterfaceC2488a spliterator() {
        return m493M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final double sum() {
        return AbstractC2704l.m393a((double[]) mo219H(C2782y.f1085a, C2770w.f1066a, C2497B.f686a));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final C2448f summaryStatistics() {
        return (C2448f) mo219H(C2686i.f955a, C2758u.f1053a, C2752t.f1048a);
    }

    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: t0 */
    public final InterfaceC2748s1 mo304t0(long j, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m320j(j);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public final double[] toArray() {
        return (double[]) AbstractC2779x2.m317m((InterfaceC2760u1) m448y0(C2539I.f748a)).mo292e();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public InterfaceC2674g unordered() {
        return !m453C0() ? this : new C2575O(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f912r);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: w */
    public final InterfaceC2607U mo207w(InterfaceC2455g interfaceC2455g) {
        return new C2551K(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, interfaceC2455g);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: x */
    public final InterfaceC2664e1 mo206x(InterfaceC2456h interfaceC2456h) {
        Objects.requireNonNull(interfaceC2456h);
        return new C2569N(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, interfaceC2456h);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: y */
    public final InterfaceC2607U mo205y(C2819J c2819j) {
        Objects.requireNonNull(c2819j);
        return new C2551K(this, this, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, c2819j);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: z0 */
    final InterfaceC2493A1 mo423z0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m324f(abstractC2785y2, interfaceC2487s, z);
    }
}
