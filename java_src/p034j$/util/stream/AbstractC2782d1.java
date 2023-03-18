package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.C2599h;
import p034j$.util.C2600i;
import p034j$.util.C2602k;
import p034j$.util.InterfaceC2609q;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2587o;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.InterfaceC2592t;
import p034j$.util.function.InterfaceC2595w;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2982i0;
import p034j$.wrappers.C2986k0;
import p034j$.wrappers.C2990m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2782d1 extends AbstractC2774c implements InterfaceC2788e1 {
    public AbstractC2782d1(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        super(interfaceC2611s, i, z);
    }

    public AbstractC2782d1(AbstractC2774c abstractC2774c, int i) {
        super(abstractC2774c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2611s.InterfaceC2614c m442L0(InterfaceC2611s interfaceC2611s) {
        return m441M0(interfaceC2611s);
    }

    /* renamed from: M0 */
    public static InterfaceC2611s.InterfaceC2614c m441M0(InterfaceC2611s interfaceC2611s) {
        if (interfaceC2611s instanceof InterfaceC2611s.InterfaceC2614c) {
            return (InterfaceC2611s.InterfaceC2614c) interfaceC2611s;
        }
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(AbstractC2774c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3) {
        InterfaceC2589q c2742w0;
        InterfaceC2611s.InterfaceC2614c m441M0 = m441M0(interfaceC2611s);
        if (interfaceC2838m3 instanceof InterfaceC2589q) {
            c2742w0 = (InterfaceC2589q) interfaceC2838m3;
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(AbstractC2774c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2742w0 = new C2742W0(interfaceC2838m3);
        }
        while (!interfaceC2838m3.mo311o() && m441M0.mo133i(c2742w0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: B0 */
    public final EnumC2791e4 mo425B0() {
        return EnumC2791e4.LONG_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: D */
    public final long mo201D(long j, InterfaceC2587o interfaceC2587o) {
        Objects.requireNonNull(interfaceC2587o);
        return ((Long) m449x0(new C2708P2(EnumC2791e4.LONG_VALUE, interfaceC2587o, j))).longValue();
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: K0 */
    final InterfaceC2611s mo424K0(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        return new C2875s4(abstractC2909y2, interfaceC2597y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: L */
    public final boolean mo200L(C2982i0 c2982i0) {
        return ((Boolean) m449x0(AbstractC2848o1.m352w(c2982i0, EnumC2824k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: O */
    public final InterfaceC2731U mo199O(C2986k0 c2986k0) {
        Objects.requireNonNull(c2986k0);
        return new C2675K(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, c2986k0);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: Q */
    public final Stream mo198Q(InterfaceC2590r interfaceC2590r) {
        Objects.requireNonNull(interfaceC2590r);
        return new C2681L(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, interfaceC2590r);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: S */
    public final boolean mo197S(C2982i0 c2982i0) {
        return ((Boolean) m449x0(AbstractC2848o1.m352w(c2982i0, EnumC2824k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo196Z(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        m449x0(new C2835m0(interfaceC2589q, true));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final InterfaceC2731U asDoubleStream() {
        return new C2699O(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final C2600i average() {
        long[] jArr = (long[]) mo193f0(C2706P0.f812a, C2700O0.f806a, C2717R0.f825a);
        return jArr[0] > 0 ? C2600i.m547d(jArr[1] / jArr[0]) : C2600i.m550a();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final Stream boxed() {
        return mo198Q(C2747X0.f854a);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final long count() {
        return ((AbstractC2782d1) mo186z(C2752Y0.f858a)).sum();
    }

    /* renamed from: d */
    public void mo195d(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        m449x0(new C2835m0(interfaceC2589q, false));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final InterfaceC2788e1 distinct() {
        return ((AbstractC2790e3) mo198Q(C2747X0.f854a)).distinct().mo256g0(C2712Q0.f818a);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: e0 */
    public final IntStream mo194e0(C2990m0 c2990m0) {
        Objects.requireNonNull(c2990m0);
        return new C2687M(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, c2990m0);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: f0 */
    public final Object mo193f0(InterfaceC2597y interfaceC2597y, InterfaceC2595w interfaceC2595w, BiConsumer biConsumer) {
        C2627C c2627c = new C2627C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2597y);
        Objects.requireNonNull(interfaceC2595w);
        return m449x0(new C2915z2(EnumC2791e4.LONG_VALUE, c2627c, interfaceC2595w, interfaceC2597y));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final C2602k findAny() {
        return (C2602k) m449x0(new C2781d0(false, EnumC2791e4.LONG_VALUE, C2602k.m542a(), C2751Y.f857a, C2769b0.f880a));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final C2602k findFirst() {
        return (C2602k) m449x0(new C2781d0(true, EnumC2791e4.LONG_VALUE, C2602k.m542a(), C2751Y.f857a, C2769b0.f880a));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: g */
    public final C2602k mo192g(InterfaceC2587o interfaceC2587o) {
        Objects.requireNonNull(interfaceC2587o);
        return (C2602k) m449x0(new C2636D2(EnumC2791e4.LONG_VALUE, interfaceC2587o));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public final InterfaceC2609q iterator() {
        return AbstractC2535I.m635h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public Iterator iterator() {
        return AbstractC2535I.m635h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: k */
    public final boolean mo191k(C2982i0 c2982i0) {
        return ((Boolean) m449x0(AbstractC2848o1.m352w(c2982i0, EnumC2824k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final InterfaceC2788e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2625B3.m528h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final C2602k max() {
        return mo192g(C2732U0.f843a);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final C2602k min() {
        return mo192g(C2737V0.f846a);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: p */
    public final InterfaceC2788e1 mo189p(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2693N(this, this, EnumC2791e4.LONG_VALUE, 0, interfaceC2589q);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: s */
    public final InterfaceC2788e1 mo188s(InterfaceC2590r interfaceC2590r) {
        return new C2693N(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, interfaceC2590r);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final InterfaceC2788e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2625B3.m528h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final InterfaceC2788e1 sorted() {
        return new C2685L3(this);
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g
    public final InterfaceC2611s.InterfaceC2614c spliterator() {
        return m441M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final long sum() {
        return ((Long) m449x0(new C2708P2(EnumC2791e4.LONG_VALUE, C2727T0.f838a, 0L))).longValue();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final C2599h summaryStatistics() {
        return (C2599h) mo193f0(C2822k.f972a, C2694N0.f797a, C2688M0.f786a);
    }

    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: t0 */
    public final InterfaceC2872s1 mo304t0(long j, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m313q(j);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public final long[] toArray() {
        return (long[]) AbstractC2903x2.m315o((InterfaceC2908y1) m448y0(C2722S0.f831a)).mo292e();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: u */
    public final InterfaceC2788e1 mo187u(C2982i0 c2982i0) {
        Objects.requireNonNull(c2982i0);
        return new C2693N(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f919t, c2982i0);
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public InterfaceC2798g unordered() {
        return !m453C0() ? this : new C2652G0(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f917r);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: z */
    public final InterfaceC2788e1 mo186z(InterfaceC2592t interfaceC2592t) {
        Objects.requireNonNull(interfaceC2592t);
        return new C2693N(this, this, EnumC2791e4.LONG_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, interfaceC2592t);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: z0 */
    final InterfaceC2617A1 mo423z0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m322h(abstractC2909y2, interfaceC2611s, z);
    }
}
