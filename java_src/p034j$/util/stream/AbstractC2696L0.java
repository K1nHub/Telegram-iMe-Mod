package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.C2612g;
import p034j$.util.C2614i;
import p034j$.util.C2615j;
import p034j$.util.InterfaceC2620o;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2596j;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2600n;
import p034j$.util.function.InterfaceC2608v;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2973U;
import p034j$.wrappers.C2975W;
import p034j$.wrappers.C2980a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2696L0 extends AbstractC2788c implements IntStream {
    public AbstractC2696L0(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        super(interfaceC2625s, i, z);
    }

    public AbstractC2696L0(AbstractC2788c abstractC2788c, int i) {
        super(abstractC2788c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2625s.InterfaceC2627b m511L0(InterfaceC2625s interfaceC2625s) {
        return m510M0(interfaceC2625s);
    }

    /* renamed from: M0 */
    public static InterfaceC2625s.InterfaceC2627b m510M0(InterfaceC2625s interfaceC2625s) {
        if (interfaceC2625s instanceof InterfaceC2625s.InterfaceC2627b) {
            return (InterfaceC2625s.InterfaceC2627b) interfaceC2625s;
        }
        if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(AbstractC2788c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2745U mo281A(C2975W c2975w) {
        Objects.requireNonNull(c2975w);
        return new C2689K(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, c2975w);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: A0 */
    final void mo425A0(InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3) {
        InterfaceC2598l c2636b0;
        InterfaceC2625s.InterfaceC2627b m510M0 = m510M0(interfaceC2625s);
        if (interfaceC2852m3 instanceof InterfaceC2598l) {
            c2636b0 = (InterfaceC2598l) interfaceC2852m3;
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(AbstractC2788c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2636b0 = new C2636B0(interfaceC2852m3);
        }
        while (!interfaceC2852m3.mo310o() && m510M0.mo138g(c2636b0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: B0 */
    public final EnumC2805e4 mo424B0() {
        return EnumC2805e4.INT_VALUE;
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo280C(C2973U c2973u) {
        return ((Boolean) m448x0(AbstractC2862o1.m352v(c2973u, EnumC2838k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo279F(C2973U c2973u) {
        return ((Boolean) m448x0(AbstractC2862o1.m352v(c2973u, EnumC2838k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo278I(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        m448x0(new C2843l0(interfaceC2598l, true));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo277J(InterfaceC2599m interfaceC2599m) {
        Objects.requireNonNull(interfaceC2599m);
        return new C2695L(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, interfaceC2599m);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: K0 */
    final InterfaceC2625s mo423K0(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        return new C2877q4(abstractC2923y2, interfaceC2611y, z);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo276N(int i, InterfaceC2596j interfaceC2596j) {
        Objects.requireNonNull(interfaceC2596j);
        return ((Integer) m448x0(new C2698L2(EnumC2805e4.INT_VALUE, interfaceC2596j, i))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo275P(InterfaceC2599m interfaceC2599m) {
        return new C2701M(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, interfaceC2599m);
    }

    /* renamed from: U */
    public void mo274U(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        m448x0(new C2843l0(interfaceC2598l, false));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2615j mo273a0(InterfaceC2596j interfaceC2596j) {
        Objects.requireNonNull(interfaceC2596j);
        return (C2615j) m448x0(new C2650D2(EnumC2805e4.INT_VALUE, interfaceC2596j));
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2745U asDoubleStream() {
        return new C2713O(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n);
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2802e1 asLongStream() {
        return new C2666G0(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2614i average() {
        long[] jArr = (long[]) mo269k0(C2903v0.f1065a, C2897u0.f1060a, C2915x0.f1078a);
        return jArr[0] > 0 ? C2614i.m546d(jArr[1] / jArr[0]) : C2614i.m549a();
    }

    @Override // p034j$.util.stream.IntStream
    public final Stream boxed() {
        return mo277J(C2642C0.f701a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo272c0(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2701M(this, this, EnumC2805e4.INT_VALUE, 0, interfaceC2598l);
    }

    @Override // p034j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2796d1) mo271f(C2654E0.f722a)).sum();
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2804e3) mo277J(C2642C0.f701a)).distinct().mo251m(C2909w0.f1073a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2802e1 mo271f(InterfaceC2600n interfaceC2600n) {
        Objects.requireNonNull(interfaceC2600n);
        return new C2707N(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, interfaceC2600n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2615j findAny() {
        return (C2615j) m448x0(new C2795d0(false, EnumC2805e4.INT_VALUE, C2615j.m545a(), C2760X.f854a, C2777a0.f874a));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2615j findFirst() {
        return (C2615j) m448x0(new C2795d0(true, EnumC2805e4.INT_VALUE, C2615j.m545a(), C2760X.f854a, C2777a0.f874a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo270h(C2973U c2973u) {
        Objects.requireNonNull(c2973u);
        return new C2701M(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f920t, c2973u);
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public final InterfaceC2620o.InterfaceC2621a iterator() {
        return AbstractC2549I.m635g(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public Iterator iterator() {
        return AbstractC2549I.m635g(spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo269k0(InterfaceC2611y interfaceC2611y, InterfaceC2608v interfaceC2608v, BiConsumer biConsumer) {
        C2641C c2641c = new C2641C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2611y);
        Objects.requireNonNull(interfaceC2608v);
        return m448x0(new C2929z2(EnumC2805e4.INT_VALUE, c2641c, interfaceC2608v, interfaceC2611y));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2639B3.m528g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2615j max() {
        return mo273a0(C2927z0.f1096a);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2615j min() {
        return mo273a0(C2630A0.f681a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo268q(C2980a0 c2980a0) {
        Objects.requireNonNull(c2980a0);
        return new C2701M(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f916p | EnumC2799d4.f914n, c2980a0);
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2639B3.m528g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2693K3(this);
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g
    public final InterfaceC2625s.InterfaceC2627b spliterator() {
        return m510M0(super.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m448x0(new C2698L2(EnumC2805e4.INT_VALUE, C2921y0.f1092a, 0))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    public final C2612g summaryStatistics() {
        return (C2612g) mo269k0(C2830j.f968a, C2891t0.f1055a, C2885s0.f1044a);
    }

    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: t0 */
    public final InterfaceC2886s1 mo303t0(long j, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m313p(j);
    }

    @Override // p034j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2917x2.m315n((InterfaceC2910w1) m447y0(C2648D0.f710a)).mo291e();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public InterfaceC2812g unordered() {
        return !m452C0() ? this : new C2672H0(this, this, EnumC2805e4.INT_VALUE, EnumC2799d4.f918r);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo267v(C2973U c2973u) {
        return ((Boolean) m448x0(AbstractC2862o1.m352v(c2973u, EnumC2838k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: z0 */
    final InterfaceC2631A1 mo422z0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m322g(abstractC2923y2, interfaceC2625s, z);
    }
}
