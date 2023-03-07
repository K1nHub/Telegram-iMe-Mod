package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.C2474g;
import p034j$.util.C2476i;
import p034j$.util.C2477j;
import p034j$.util.InterfaceC2482o;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2458j;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2462n;
import p034j$.util.function.InterfaceC2470v;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2835U;
import p034j$.wrappers.C2837W;
import p034j$.wrappers.C2842a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2558L0 extends AbstractC2650c implements IntStream {
    public AbstractC2558L0(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        super(interfaceC2487s, i, z);
    }

    public AbstractC2558L0(AbstractC2650c abstractC2650c, int i) {
        super(abstractC2650c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2487s.InterfaceC2489b m512L0(InterfaceC2487s interfaceC2487s) {
        return m511M0(interfaceC2487s);
    }

    /* renamed from: M0 */
    public static InterfaceC2487s.InterfaceC2489b m511M0(InterfaceC2487s interfaceC2487s) {
        if (interfaceC2487s instanceof InterfaceC2487s.InterfaceC2489b) {
            return (InterfaceC2487s.InterfaceC2489b) interfaceC2487s;
        }
        if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(AbstractC2650c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2607U mo282A(C2837W c2837w) {
        Objects.requireNonNull(c2837w);
        return new C2551K(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, c2837w);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3) {
        InterfaceC2460l c2498b0;
        InterfaceC2487s.InterfaceC2489b m511M0 = m511M0(interfaceC2487s);
        if (interfaceC2714m3 instanceof InterfaceC2460l) {
            c2498b0 = (InterfaceC2460l) interfaceC2714m3;
        } else if (AbstractC2592Q4.f819a) {
            AbstractC2592Q4.m497a(AbstractC2650c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2498b0 = new C2498B0(interfaceC2714m3);
        }
        while (!interfaceC2714m3.mo311o() && m511M0.mo139g(c2498b0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: B0 */
    public final EnumC2667e4 mo425B0() {
        return EnumC2667e4.INT_VALUE;
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo281C(C2835U c2835u) {
        return ((Boolean) m449x0(AbstractC2724o1.m353v(c2835u, EnumC2700k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo280F(C2835U c2835u) {
        return ((Boolean) m449x0(AbstractC2724o1.m353v(c2835u, EnumC2700k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo279I(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        m449x0(new C2705l0(interfaceC2460l, true));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo278J(InterfaceC2461m interfaceC2461m) {
        Objects.requireNonNull(interfaceC2461m);
        return new C2557L(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, interfaceC2461m);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: K0 */
    final InterfaceC2487s mo424K0(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        return new C2739q4(abstractC2785y2, interfaceC2473y, z);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo277N(int i, InterfaceC2458j interfaceC2458j) {
        Objects.requireNonNull(interfaceC2458j);
        return ((Integer) m449x0(new C2560L2(EnumC2667e4.INT_VALUE, interfaceC2458j, i))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo276P(InterfaceC2461m interfaceC2461m) {
        return new C2563M(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, interfaceC2461m);
    }

    /* renamed from: U */
    public void mo275U(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        m449x0(new C2705l0(interfaceC2460l, false));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2477j mo274a0(InterfaceC2458j interfaceC2458j) {
        Objects.requireNonNull(interfaceC2458j);
        return (C2477j) m449x0(new C2512D2(EnumC2667e4.INT_VALUE, interfaceC2458j));
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2607U asDoubleStream() {
        return new C2575O(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n);
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2664e1 asLongStream() {
        return new C2528G0(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2476i average() {
        long[] jArr = (long[]) mo270k0(C2765v0.f1059a, C2759u0.f1054a, C2777x0.f1072a);
        return jArr[0] > 0 ? C2476i.m547d(jArr[1] / jArr[0]) : C2476i.m550a();
    }

    @Override // p034j$.util.stream.IntStream
    public final Stream boxed() {
        return mo278J(C2504C0.f695a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo273c0(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2563M(this, this, EnumC2667e4.INT_VALUE, 0, interfaceC2460l);
    }

    @Override // p034j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2658d1) mo272f(C2516E0.f716a)).sum();
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2666e3) mo278J(C2504C0.f695a)).distinct().mo252m(C2771w0.f1067a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2664e1 mo272f(InterfaceC2462n interfaceC2462n) {
        Objects.requireNonNull(interfaceC2462n);
        return new C2569N(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, interfaceC2462n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2477j findAny() {
        return (C2477j) m449x0(new C2657d0(false, EnumC2667e4.INT_VALUE, C2477j.m546a(), C2622X.f848a, C2639a0.f868a));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2477j findFirst() {
        return (C2477j) m449x0(new C2657d0(true, EnumC2667e4.INT_VALUE, C2477j.m546a(), C2622X.f848a, C2639a0.f868a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo271h(C2835U c2835u) {
        Objects.requireNonNull(c2835u);
        return new C2563M(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f914t, c2835u);
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public final InterfaceC2482o.InterfaceC2483a iterator() {
        return AbstractC2411I.m636g(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public Iterator iterator() {
        return AbstractC2411I.m636g(spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo270k0(InterfaceC2473y interfaceC2473y, InterfaceC2470v interfaceC2470v, BiConsumer biConsumer) {
        C2503C c2503c = new C2503C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2473y);
        Objects.requireNonNull(interfaceC2470v);
        return m449x0(new C2791z2(EnumC2667e4.INT_VALUE, c2503c, interfaceC2470v, interfaceC2473y));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2501B3.m529g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2477j max() {
        return mo274a0(C2789z0.f1090a);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2477j min() {
        return mo274a0(C2492A0.f675a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo269q(C2842a0 c2842a0) {
        Objects.requireNonNull(c2842a0);
        return new C2563M(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f910p | EnumC2661d4.f908n, c2842a0);
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2501B3.m529g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2555K3(this);
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g
    public final InterfaceC2487s.InterfaceC2489b spliterator() {
        return m511M0(super.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m449x0(new C2560L2(EnumC2667e4.INT_VALUE, C2783y0.f1086a, 0))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    public final C2474g summaryStatistics() {
        return (C2474g) mo270k0(C2692j.f962a, C2753t0.f1049a, C2747s0.f1038a);
    }

    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: t0 */
    public final InterfaceC2748s1 mo304t0(long j, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m314p(j);
    }

    @Override // p034j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2779x2.m316n((InterfaceC2772w1) m448y0(C2510D0.f704a)).mo292e();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public InterfaceC2674g unordered() {
        return !m453C0() ? this : new C2534H0(this, this, EnumC2667e4.INT_VALUE, EnumC2661d4.f912r);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo268v(C2835U c2835u) {
        return ((Boolean) m449x0(AbstractC2724o1.m353v(c2835u, EnumC2700k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: z0 */
    final InterfaceC2493A1 mo423z0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m323g(abstractC2785y2, interfaceC2487s, z);
    }
}
