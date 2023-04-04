package p035j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.C2688g;
import p035j$.util.C2690i;
import p035j$.util.C2691j;
import p035j$.util.InterfaceC2696o;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2672j;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2676n;
import p035j$.util.function.InterfaceC2684v;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3049U;
import p035j$.wrappers.C3051W;
import p035j$.wrappers.C3056a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2772L0 extends AbstractC2864c implements IntStream {
    public AbstractC2772L0(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        super(interfaceC2701s, i, z);
    }

    public AbstractC2772L0(AbstractC2864c abstractC2864c, int i) {
        super(abstractC2864c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2701s.InterfaceC2703b m506L0(InterfaceC2701s interfaceC2701s) {
        return m505M0(interfaceC2701s);
    }

    /* renamed from: M0 */
    public static InterfaceC2701s.InterfaceC2703b m505M0(InterfaceC2701s interfaceC2701s) {
        if (interfaceC2701s instanceof InterfaceC2701s.InterfaceC2703b) {
            return (InterfaceC2701s.InterfaceC2703b) interfaceC2701s;
        }
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(AbstractC2864c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2821U mo276A(C3051W c3051w) {
        Objects.requireNonNull(c3051w);
        return new C2765K(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, c3051w);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: A0 */
    final void mo420A0(InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3) {
        InterfaceC2674l c2712b0;
        InterfaceC2701s.InterfaceC2703b m505M0 = m505M0(interfaceC2701s);
        if (interfaceC2928m3 instanceof InterfaceC2674l) {
            c2712b0 = (InterfaceC2674l) interfaceC2928m3;
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(AbstractC2864c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2712b0 = new C2712B0(interfaceC2928m3);
        }
        while (!interfaceC2928m3.mo305o() && m505M0.mo133g(c2712b0)) {
        }
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: B0 */
    public final EnumC2881e4 mo419B0() {
        return EnumC2881e4.INT_VALUE;
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo275C(C3049U c3049u) {
        return ((Boolean) m443x0(AbstractC2938o1.m347v(c3049u, EnumC2914k1.ALL))).booleanValue();
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo274F(C3049U c3049u) {
        return ((Boolean) m443x0(AbstractC2938o1.m347v(c3049u, EnumC2914k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo273I(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        m443x0(new C2919l0(interfaceC2674l, true));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo272J(InterfaceC2675m interfaceC2675m) {
        Objects.requireNonNull(interfaceC2675m);
        return new C2771L(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, interfaceC2675m);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: K0 */
    final InterfaceC2701s mo418K0(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        return new C2953q4(abstractC2999y2, interfaceC2687y, z);
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo271N(int i, InterfaceC2672j interfaceC2672j) {
        Objects.requireNonNull(interfaceC2672j);
        return ((Integer) m443x0(new C2774L2(EnumC2881e4.INT_VALUE, interfaceC2672j, i))).intValue();
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo270P(InterfaceC2675m interfaceC2675m) {
        return new C2777M(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, interfaceC2675m);
    }

    /* renamed from: U */
    public void mo269U(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        m443x0(new C2919l0(interfaceC2674l, false));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2691j mo268a0(InterfaceC2672j interfaceC2672j) {
        Objects.requireNonNull(interfaceC2672j);
        return (C2691j) m443x0(new C2726D2(EnumC2881e4.INT_VALUE, interfaceC2672j));
    }

    @Override // p035j$.util.stream.IntStream
    public final InterfaceC2821U asDoubleStream() {
        return new C2789O(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n);
    }

    @Override // p035j$.util.stream.IntStream
    public final InterfaceC2878e1 asLongStream() {
        return new C2742G0(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n);
    }

    @Override // p035j$.util.stream.IntStream
    public final C2690i average() {
        long[] jArr = (long[]) mo264k0(C2979v0.f1070a, C2973u0.f1065a, C2991x0.f1083a);
        return jArr[0] > 0 ? C2690i.m541d(jArr[1] / jArr[0]) : C2690i.m544a();
    }

    @Override // p035j$.util.stream.IntStream
    public final Stream boxed() {
        return mo272J(C2718C0.f706a);
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo267c0(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2777M(this, this, EnumC2881e4.INT_VALUE, 0, interfaceC2674l);
    }

    @Override // p035j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2872d1) mo266f(C2730E0.f727a)).sum();
    }

    @Override // p035j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2880e3) mo272J(C2718C0.f706a)).distinct().mo246m(C2985w0.f1078a);
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2878e1 mo266f(InterfaceC2676n interfaceC2676n) {
        Objects.requireNonNull(interfaceC2676n);
        return new C2783N(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, interfaceC2676n);
    }

    @Override // p035j$.util.stream.IntStream
    public final C2691j findAny() {
        return (C2691j) m443x0(new C2871d0(false, EnumC2881e4.INT_VALUE, C2691j.m540a(), C2836X.f859a, C2853a0.f879a));
    }

    @Override // p035j$.util.stream.IntStream
    public final C2691j findFirst() {
        return (C2691j) m443x0(new C2871d0(true, EnumC2881e4.INT_VALUE, C2691j.m540a(), C2836X.f859a, C2853a0.f879a));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo265h(C3049U c3049u) {
        Objects.requireNonNull(c3049u);
        return new C2777M(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f925t, c3049u);
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public final InterfaceC2696o.InterfaceC2697a iterator() {
        return AbstractC2625I.m630g(spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public Iterator iterator() {
        return AbstractC2625I.m630g(spliterator());
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo264k0(InterfaceC2687y interfaceC2687y, InterfaceC2684v interfaceC2684v, BiConsumer biConsumer) {
        C2717C c2717c = new C2717C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2687y);
        Objects.requireNonNull(interfaceC2684v);
        return m443x0(new C3005z2(EnumC2881e4.INT_VALUE, c2717c, interfaceC2684v, interfaceC2687y));
    }

    @Override // p035j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2715B3.m523g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.IntStream
    public final C2691j max() {
        return mo268a0(C3003z0.f1101a);
    }

    @Override // p035j$.util.stream.IntStream
    public final C2691j min() {
        return mo268a0(C2706A0.f686a);
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo263q(C3056a0 c3056a0) {
        Objects.requireNonNull(c3056a0);
        return new C2777M(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, c3056a0);
    }

    @Override // p035j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2715B3.m523g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2769K3(this);
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g
    public final InterfaceC2701s.InterfaceC2703b spliterator() {
        return m505M0(super.spliterator());
    }

    @Override // p035j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m443x0(new C2774L2(EnumC2881e4.INT_VALUE, C2997y0.f1097a, 0))).intValue();
    }

    @Override // p035j$.util.stream.IntStream
    public final C2688g summaryStatistics() {
        return (C2688g) mo264k0(C2906j.f973a, C2967t0.f1060a, C2961s0.f1049a);
    }

    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: t0 */
    public final InterfaceC2962s1 mo298t0(long j, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m308p(j);
    }

    @Override // p035j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2993x2.m310n((InterfaceC2986w1) m442y0(C2724D0.f715a)).mo286e();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public InterfaceC2888g unordered() {
        return !m447C0() ? this : new C2748H0(this, this, EnumC2881e4.INT_VALUE, EnumC2875d4.f923r);
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo262v(C3049U c3049u) {
        return ((Boolean) m443x0(AbstractC2938o1.m347v(c3049u, EnumC2914k1.NONE))).booleanValue();
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: z0 */
    final InterfaceC2707A1 mo417z0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m317g(abstractC2999y2, interfaceC2701s, z);
    }
}
