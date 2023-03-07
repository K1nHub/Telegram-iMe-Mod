package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.C2475h;
import p034j$.util.C2476i;
import p034j$.util.C2478k;
import p034j$.util.InterfaceC2485q;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2463o;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2466r;
import p034j$.util.function.InterfaceC2468t;
import p034j$.util.function.InterfaceC2471w;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2858i0;
import p034j$.wrappers.C2862k0;
import p034j$.wrappers.C2866m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2658d1 extends AbstractC2650c implements InterfaceC2664e1 {
    public AbstractC2658d1(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        super(interfaceC2487s, i, z);
    }

    public AbstractC2658d1(AbstractC2650c abstractC2650c, int i) {
        super(abstractC2650c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2487s.InterfaceC2490c m442L0(InterfaceC2487s interfaceC2487s) {
        return m441M0(interfaceC2487s);
    }

    /* renamed from: M0 */
    public static InterfaceC2487s.InterfaceC2490c m441M0(InterfaceC2487s interfaceC2487s) {
        if (interfaceC2487s instanceof InterfaceC2487s.InterfaceC2490c) {
            return (InterfaceC2487s.InterfaceC2490c) interfaceC2487s;
        }
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(AbstractC2650c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3) {
        InterfaceC2465q c2618w0;
        InterfaceC2487s.InterfaceC2490c m441M0 = m441M0(interfaceC2487s);
        if (interfaceC2714m3 instanceof InterfaceC2465q) {
            c2618w0 = (InterfaceC2465q) interfaceC2714m3;
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(AbstractC2650c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2618w0 = new C2618W0(interfaceC2714m3);
        }
        while (!interfaceC2714m3.mo311o() && m441M0.mo133i(c2618w0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: B0 */
    public final EnumC2667e4 mo425B0() {
        return EnumC2667e4.LONG_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: D */
    public final long mo201D(long j, InterfaceC2463o interfaceC2463o) {
        Objects.requireNonNull(interfaceC2463o);
        return ((Long) m449x0(new C2584P2(EnumC2667e4.LONG_VALUE, interfaceC2463o, j))).longValue();
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: K0 */
    final InterfaceC2487s mo424K0(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        return new C2751s4(abstractC2785y2, interfaceC2473y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: L */
    public final boolean mo200L(C2858i0 c2858i0) {
        return ((Boolean) m449x0(AbstractC2724o1.m352w(c2858i0, EnumC2700k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: O */
    public final InterfaceC2607U mo199O(C2862k0 c2862k0) {
        Objects.requireNonNull(c2862k0);
        return new C2551K(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, c2862k0);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: Q */
    public final Stream mo198Q(InterfaceC2466r interfaceC2466r) {
        Objects.requireNonNull(interfaceC2466r);
        return new C2557L(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, interfaceC2466r);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: S */
    public final boolean mo197S(C2858i0 c2858i0) {
        return ((Boolean) m449x0(AbstractC2724o1.m352w(c2858i0, EnumC2700k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo196Z(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        m449x0(new C2711m0(interfaceC2465q, true));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final InterfaceC2607U asDoubleStream() {
        return new C2575O(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final C2476i average() {
        long[] jArr = (long[]) mo193f0(C2582P0.f807a, C2576O0.f801a, C2593R0.f820a);
        return jArr[0] > 0 ? C2476i.m547d(jArr[1] / jArr[0]) : C2476i.m550a();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final Stream boxed() {
        return mo198Q(C2623X0.f849a);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final long count() {
        return ((AbstractC2658d1) mo186z(C2628Y0.f853a)).sum();
    }

    /* renamed from: d */
    public void mo195d(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        m449x0(new C2711m0(interfaceC2465q, false));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final InterfaceC2664e1 distinct() {
        return ((AbstractC2666e3) mo198Q(C2623X0.f849a)).distinct().mo256g0(C2588Q0.f813a);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: e0 */
    public final IntStream mo194e0(C2866m0 c2866m0) {
        Objects.requireNonNull(c2866m0);
        return new C2563M(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, c2866m0);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: f0 */
    public final Object mo193f0(InterfaceC2473y interfaceC2473y, InterfaceC2471w interfaceC2471w, BiConsumer biConsumer) {
        C2503C c2503c = new C2503C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2473y);
        Objects.requireNonNull(interfaceC2471w);
        return m449x0(new C2791z2(EnumC2667e4.LONG_VALUE, c2503c, interfaceC2471w, interfaceC2473y));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final C2478k findAny() {
        return (C2478k) m449x0(new C2657d0(false, EnumC2667e4.LONG_VALUE, C2478k.m542a(), C2627Y.f852a, C2645b0.f875a));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final C2478k findFirst() {
        return (C2478k) m449x0(new C2657d0(true, EnumC2667e4.LONG_VALUE, C2478k.m542a(), C2627Y.f852a, C2645b0.f875a));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: g */
    public final C2478k mo192g(InterfaceC2463o interfaceC2463o) {
        Objects.requireNonNull(interfaceC2463o);
        return (C2478k) m449x0(new C2512D2(EnumC2667e4.LONG_VALUE, interfaceC2463o));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public final InterfaceC2485q iterator() {
        return AbstractC2411I.m635h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public Iterator iterator() {
        return AbstractC2411I.m635h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: k */
    public final boolean mo191k(C2858i0 c2858i0) {
        return ((Boolean) m449x0(AbstractC2724o1.m352w(c2858i0, EnumC2700k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final InterfaceC2664e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2501B3.m528h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final C2478k max() {
        return mo192g(C2608U0.f838a);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final C2478k min() {
        return mo192g(C2613V0.f841a);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: p */
    public final InterfaceC2664e1 mo189p(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2569N(this, this, EnumC2667e4.LONG_VALUE, 0, interfaceC2465q);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: s */
    public final InterfaceC2664e1 mo188s(InterfaceC2466r interfaceC2466r) {
        return new C2569N(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, interfaceC2466r);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final InterfaceC2664e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2501B3.m528h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final InterfaceC2664e1 sorted() {
        return new C2561L3(this);
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g
    public final InterfaceC2487s.InterfaceC2490c spliterator() {
        return m441M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final long sum() {
        return ((Long) m449x0(new C2584P2(EnumC2667e4.LONG_VALUE, C2603T0.f833a, 0L))).longValue();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final C2475h summaryStatistics() {
        return (C2475h) mo193f0(C2698k.f967a, C2570N0.f792a, C2564M0.f781a);
    }

    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: t0 */
    public final InterfaceC2748s1 mo304t0(long j, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m313q(j);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public final long[] toArray() {
        return (long[]) AbstractC2779x2.m315o((InterfaceC2784y1) m448y0(C2598S0.f826a)).mo292e();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: u */
    public final InterfaceC2664e1 mo187u(C2858i0 c2858i0) {
        Objects.requireNonNull(c2858i0);
        return new C2569N(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f914t, c2858i0);
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public InterfaceC2674g unordered() {
        return !m453C0() ? this : new C2528G0(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f912r);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: z */
    public final InterfaceC2664e1 mo186z(InterfaceC2468t interfaceC2468t) {
        Objects.requireNonNull(interfaceC2468t);
        return new C2569N(this, this, EnumC2667e4.LONG_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, interfaceC2468t);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: z0 */
    final InterfaceC2493A1 mo423z0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m322h(abstractC2785y2, interfaceC2487s, z);
    }
}
