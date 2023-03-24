package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.C2613h;
import p034j$.util.C2614i;
import p034j$.util.C2616k;
import p034j$.util.InterfaceC2623q;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2601o;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.InterfaceC2606t;
import p034j$.util.function.InterfaceC2609w;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2996i0;
import p034j$.wrappers.C3000k0;
import p034j$.wrappers.C3004m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2796d1 extends AbstractC2788c implements InterfaceC2802e1 {
    public AbstractC2796d1(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        super(interfaceC2625s, i, z);
    }

    public AbstractC2796d1(AbstractC2788c abstractC2788c, int i) {
        super(abstractC2788c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2625s.InterfaceC2628c m441L0(InterfaceC2625s interfaceC2625s) {
        return m440M0(interfaceC2625s);
    }

    /* renamed from: M0 */
    public static InterfaceC2625s.InterfaceC2628c m440M0(InterfaceC2625s interfaceC2625s) {
        if (interfaceC2625s instanceof InterfaceC2625s.InterfaceC2628c) {
            return (InterfaceC2625s.InterfaceC2628c) interfaceC2625s;
        }
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(AbstractC2788c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: A0 */
    final void mo425A0(InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3) {
        InterfaceC2603q c2756w0;
        InterfaceC2625s.InterfaceC2628c m440M0 = m440M0(interfaceC2625s);
        if (interfaceC2852m3 instanceof InterfaceC2603q) {
            c2756w0 = (InterfaceC2603q) interfaceC2852m3;
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(AbstractC2788c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2756w0 = new C2756W0(interfaceC2852m3);
        }
        while (!interfaceC2852m3.mo310o() && m440M0.mo132i(c2756w0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: B0 */
    public final EnumC2805e4 mo424B0() {
        return EnumC2805e4.LONG_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: D */
    public final long mo200D(long j, InterfaceC2601o interfaceC2601o) {
        Objects.requireNonNull(interfaceC2601o);
        return ((Long) m448x0(new C2722P2(EnumC2805e4.LONG_VALUE, interfaceC2601o, j))).longValue();
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: K0 */
    final InterfaceC2625s mo423K0(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        return new C2889s4(abstractC2923y2, interfaceC2611y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: L */
    public final boolean mo199L(C2996i0 c2996i0) {
        return ((Boolean) m448x0(AbstractC2862o1.m351w(c2996i0, EnumC2838k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: O */
    public final InterfaceC2745U mo198O(C3000k0 c3000k0) {
        Objects.requireNonNull(c3000k0);
        return new C2689K(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, c3000k0);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: Q */
    public final Stream mo197Q(InterfaceC2604r interfaceC2604r) {
        Objects.requireNonNull(interfaceC2604r);
        return new C2695L(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, interfaceC2604r);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: S */
    public final boolean mo196S(C2996i0 c2996i0) {
        return ((Boolean) m448x0(AbstractC2862o1.m351w(c2996i0, EnumC2838k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo195Z(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        m448x0(new C2849m0(interfaceC2603q, true));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final InterfaceC2745U asDoubleStream() {
        return new C2713O(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final C2614i average() {
        long[] jArr = (long[]) mo192f0(C2720P0.f813a, C2714O0.f807a, C2731R0.f826a);
        return jArr[0] > 0 ? C2614i.m546d(jArr[1] / jArr[0]) : C2614i.m549a();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final Stream boxed() {
        return mo197Q(C2761X0.f855a);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final long count() {
        return ((AbstractC2796d1) mo185z(C2766Y0.f859a)).sum();
    }

    /* renamed from: d */
    public void mo194d(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        m448x0(new C2849m0(interfaceC2603q, false));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final InterfaceC2802e1 distinct() {
        return ((AbstractC2804e3) mo197Q(C2761X0.f855a)).distinct().mo255g0(C2726Q0.f819a);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: e0 */
    public final IntStream mo193e0(C3004m0 c3004m0) {
        Objects.requireNonNull(c3004m0);
        return new C2701M(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, c3004m0);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: f0 */
    public final Object mo192f0(InterfaceC2611y interfaceC2611y, InterfaceC2609w interfaceC2609w, BiConsumer biConsumer) {
        C2641C c2641c = new C2641C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2611y);
        Objects.requireNonNull(interfaceC2609w);
        return m448x0(new C2929z2(EnumC2805e4.LONG_VALUE, c2641c, interfaceC2609w, interfaceC2611y));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final C2616k findAny() {
        return (C2616k) m448x0(new C2795d0(false, EnumC2805e4.LONG_VALUE, C2616k.m541a(), C2765Y.f858a, C2783b0.f881a));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final C2616k findFirst() {
        return (C2616k) m448x0(new C2795d0(true, EnumC2805e4.LONG_VALUE, C2616k.m541a(), C2765Y.f858a, C2783b0.f881a));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: g */
    public final C2616k mo191g(InterfaceC2601o interfaceC2601o) {
        Objects.requireNonNull(interfaceC2601o);
        return (C2616k) m448x0(new C2650D2(EnumC2805e4.LONG_VALUE, interfaceC2601o));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public final InterfaceC2623q iterator() {
        return AbstractC2549I.m634h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public Iterator iterator() {
        return AbstractC2549I.m634h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: k */
    public final boolean mo190k(C2996i0 c2996i0) {
        return ((Boolean) m448x0(AbstractC2862o1.m351w(c2996i0, EnumC2838k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final InterfaceC2802e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2639B3.m527h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final C2616k max() {
        return mo191g(C2746U0.f844a);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final C2616k min() {
        return mo191g(C2751V0.f847a);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: p */
    public final InterfaceC2802e1 mo188p(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2707N(this, this, EnumC2805e4.LONG_VALUE, 0, interfaceC2603q);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: s */
    public final InterfaceC2802e1 mo187s(InterfaceC2604r interfaceC2604r) {
        return new C2707N(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, interfaceC2604r);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final InterfaceC2802e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2639B3.m527h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final InterfaceC2802e1 sorted() {
        return new C2699L3(this);
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g
    public final InterfaceC2625s.InterfaceC2628c spliterator() {
        return m440M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final long sum() {
        return ((Long) m448x0(new C2722P2(EnumC2805e4.LONG_VALUE, C2741T0.f839a, 0L))).longValue();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final C2613h summaryStatistics() {
        return (C2613h) mo192f0(C2836k.f973a, C2708N0.f798a, C2702M0.f787a);
    }

    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: t0 */
    public final InterfaceC2886s1 mo303t0(long j, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m312q(j);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public final long[] toArray() {
        return (long[]) AbstractC2917x2.m314o((InterfaceC2922y1) m447y0(C2736S0.f832a)).mo291e();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: u */
    public final InterfaceC2802e1 mo186u(C2996i0 c2996i0) {
        Objects.requireNonNull(c2996i0);
        return new C2707N(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f920t, c2996i0);
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public InterfaceC2812g unordered() {
        return !m452C0() ? this : new C2666G0(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f918r);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: z */
    public final InterfaceC2802e1 mo185z(InterfaceC2606t interfaceC2606t) {
        Objects.requireNonNull(interfaceC2606t);
        return new C2707N(this, this, EnumC2805e4.LONG_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, interfaceC2606t);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: z0 */
    final InterfaceC2631A1 mo422z0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m321h(abstractC2923y2, interfaceC2625s, z);
    }
}
