package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.C2598g;
import p034j$.util.C2600i;
import p034j$.util.C2601j;
import p034j$.util.InterfaceC2606o;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2582j;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2586n;
import p034j$.util.function.InterfaceC2594v;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2959U;
import p034j$.wrappers.C2961W;
import p034j$.wrappers.C2966a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2682L0 extends AbstractC2774c implements IntStream {
    public AbstractC2682L0(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        super(interfaceC2611s, i, z);
    }

    public AbstractC2682L0(AbstractC2774c abstractC2774c, int i) {
        super(abstractC2774c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2611s.InterfaceC2613b m512L0(InterfaceC2611s interfaceC2611s) {
        return m511M0(interfaceC2611s);
    }

    /* renamed from: M0 */
    public static InterfaceC2611s.InterfaceC2613b m511M0(InterfaceC2611s interfaceC2611s) {
        if (interfaceC2611s instanceof InterfaceC2611s.InterfaceC2613b) {
            return (InterfaceC2611s.InterfaceC2613b) interfaceC2611s;
        }
        if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(AbstractC2774c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2731U mo282A(C2961W c2961w) {
        Objects.requireNonNull(c2961w);
        return new C2675K(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, c2961w);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3) {
        InterfaceC2584l c2622b0;
        InterfaceC2611s.InterfaceC2613b m511M0 = m511M0(interfaceC2611s);
        if (interfaceC2838m3 instanceof InterfaceC2584l) {
            c2622b0 = (InterfaceC2584l) interfaceC2838m3;
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(AbstractC2774c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2622b0 = new C2622B0(interfaceC2838m3);
        }
        while (!interfaceC2838m3.mo311o() && m511M0.mo139g(c2622b0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: B0 */
    public final EnumC2791e4 mo425B0() {
        return EnumC2791e4.INT_VALUE;
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo281C(C2959U c2959u) {
        return ((Boolean) m449x0(AbstractC2848o1.m353v(c2959u, EnumC2824k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo280F(C2959U c2959u) {
        return ((Boolean) m449x0(AbstractC2848o1.m353v(c2959u, EnumC2824k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo279I(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        m449x0(new C2829l0(interfaceC2584l, true));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo278J(InterfaceC2585m interfaceC2585m) {
        Objects.requireNonNull(interfaceC2585m);
        return new C2681L(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, interfaceC2585m);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: K0 */
    final InterfaceC2611s mo424K0(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        return new C2863q4(abstractC2909y2, interfaceC2597y, z);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo277N(int i, InterfaceC2582j interfaceC2582j) {
        Objects.requireNonNull(interfaceC2582j);
        return ((Integer) m449x0(new C2684L2(EnumC2791e4.INT_VALUE, interfaceC2582j, i))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo276P(InterfaceC2585m interfaceC2585m) {
        return new C2687M(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, interfaceC2585m);
    }

    /* renamed from: U */
    public void mo275U(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        m449x0(new C2829l0(interfaceC2584l, false));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2601j mo274a0(InterfaceC2582j interfaceC2582j) {
        Objects.requireNonNull(interfaceC2582j);
        return (C2601j) m449x0(new C2636D2(EnumC2791e4.INT_VALUE, interfaceC2582j));
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2731U asDoubleStream() {
        return new C2699O(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n);
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2788e1 asLongStream() {
        return new C2652G0(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2600i average() {
        long[] jArr = (long[]) mo270k0(C2889v0.f1064a, C2883u0.f1059a, C2901x0.f1077a);
        return jArr[0] > 0 ? C2600i.m547d(jArr[1] / jArr[0]) : C2600i.m550a();
    }

    @Override // p034j$.util.stream.IntStream
    public final Stream boxed() {
        return mo278J(C2628C0.f700a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo273c0(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2687M(this, this, EnumC2791e4.INT_VALUE, 0, interfaceC2584l);
    }

    @Override // p034j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2782d1) mo272f(C2640E0.f721a)).sum();
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2790e3) mo278J(C2628C0.f700a)).distinct().mo252m(C2895w0.f1072a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2788e1 mo272f(InterfaceC2586n interfaceC2586n) {
        Objects.requireNonNull(interfaceC2586n);
        return new C2693N(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, interfaceC2586n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2601j findAny() {
        return (C2601j) m449x0(new C2781d0(false, EnumC2791e4.INT_VALUE, C2601j.m546a(), C2746X.f853a, C2763a0.f873a));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2601j findFirst() {
        return (C2601j) m449x0(new C2781d0(true, EnumC2791e4.INT_VALUE, C2601j.m546a(), C2746X.f853a, C2763a0.f873a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo271h(C2959U c2959u) {
        Objects.requireNonNull(c2959u);
        return new C2687M(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f919t, c2959u);
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public final InterfaceC2606o.InterfaceC2607a iterator() {
        return AbstractC2535I.m636g(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public Iterator iterator() {
        return AbstractC2535I.m636g(spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo270k0(InterfaceC2597y interfaceC2597y, InterfaceC2594v interfaceC2594v, BiConsumer biConsumer) {
        C2627C c2627c = new C2627C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2597y);
        Objects.requireNonNull(interfaceC2594v);
        return m449x0(new C2915z2(EnumC2791e4.INT_VALUE, c2627c, interfaceC2594v, interfaceC2597y));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2625B3.m529g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2601j max() {
        return mo274a0(C2913z0.f1095a);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2601j min() {
        return mo274a0(C2616A0.f680a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo269q(C2966a0 c2966a0) {
        Objects.requireNonNull(c2966a0);
        return new C2687M(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f915p | EnumC2785d4.f913n, c2966a0);
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2625B3.m529g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2679K3(this);
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g
    public final InterfaceC2611s.InterfaceC2613b spliterator() {
        return m511M0(super.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m449x0(new C2684L2(EnumC2791e4.INT_VALUE, C2907y0.f1091a, 0))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    public final C2598g summaryStatistics() {
        return (C2598g) mo270k0(C2816j.f967a, C2877t0.f1054a, C2871s0.f1043a);
    }

    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: t0 */
    public final InterfaceC2872s1 mo304t0(long j, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m314p(j);
    }

    @Override // p034j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2903x2.m316n((InterfaceC2896w1) m448y0(C2634D0.f709a)).mo292e();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public InterfaceC2798g unordered() {
        return !m453C0() ? this : new C2658H0(this, this, EnumC2791e4.INT_VALUE, EnumC2785d4.f917r);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo268v(C2959U c2959u) {
        return ((Boolean) m449x0(AbstractC2848o1.m353v(c2959u, EnumC2824k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: z0 */
    final InterfaceC2617A1 mo423z0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m323g(abstractC2909y2, interfaceC2611s, z);
    }
}
