package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.C2719g;
import p034j$.util.C2721i;
import p034j$.util.C2722j;
import p034j$.util.InterfaceC2727o;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2703j;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2707n;
import p034j$.util.function.InterfaceC2715v;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3080U;
import p034j$.wrappers.C3082W;
import p034j$.wrappers.C3087a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2803L0 extends AbstractC2895c implements IntStream {
    public AbstractC2803L0(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    public AbstractC2803L0(AbstractC2895c abstractC2895c, int i) {
        super(abstractC2895c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2732s.InterfaceC2734b m497L0(InterfaceC2732s interfaceC2732s) {
        return m496M0(interfaceC2732s);
    }

    /* renamed from: M0 */
    public static InterfaceC2732s.InterfaceC2734b m496M0(InterfaceC2732s interfaceC2732s) {
        if (interfaceC2732s instanceof InterfaceC2732s.InterfaceC2734b) {
            return (InterfaceC2732s.InterfaceC2734b) interfaceC2732s;
        }
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(AbstractC2895c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2852U mo267A(C3082W c3082w) {
        Objects.requireNonNull(c3082w);
        return new C2796K(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, c3082w);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3) {
        InterfaceC2705l c2743b0;
        InterfaceC2732s.InterfaceC2734b m496M0 = m496M0(interfaceC2732s);
        if (interfaceC2959m3 instanceof InterfaceC2705l) {
            c2743b0 = (InterfaceC2705l) interfaceC2959m3;
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(AbstractC2895c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2743b0 = new C2743B0(interfaceC2959m3);
        }
        while (!interfaceC2959m3.mo296o() && m496M0.mo124g(c2743b0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: B0 */
    public final EnumC2912e4 mo410B0() {
        return EnumC2912e4.INT_VALUE;
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo266C(C3080U c3080u) {
        return ((Boolean) m434x0(AbstractC2969o1.m338v(c3080u, EnumC2945k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo265F(C3080U c3080u) {
        return ((Boolean) m434x0(AbstractC2969o1.m338v(c3080u, EnumC2945k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo264I(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        m434x0(new C2950l0(interfaceC2705l, true));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo263J(InterfaceC2706m interfaceC2706m) {
        Objects.requireNonNull(interfaceC2706m);
        return new C2802L(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, interfaceC2706m);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: K0 */
    final InterfaceC2732s mo409K0(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        return new C2984q4(abstractC3030y2, interfaceC2718y, z);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo262N(int i, InterfaceC2703j interfaceC2703j) {
        Objects.requireNonNull(interfaceC2703j);
        return ((Integer) m434x0(new C2805L2(EnumC2912e4.INT_VALUE, interfaceC2703j, i))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo261P(InterfaceC2706m interfaceC2706m) {
        return new C2808M(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, interfaceC2706m);
    }

    /* renamed from: U */
    public void mo260U(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        m434x0(new C2950l0(interfaceC2705l, false));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2722j mo259a0(InterfaceC2703j interfaceC2703j) {
        Objects.requireNonNull(interfaceC2703j);
        return (C2722j) m434x0(new C2757D2(EnumC2912e4.INT_VALUE, interfaceC2703j));
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2852U asDoubleStream() {
        return new C2820O(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n);
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2909e1 asLongStream() {
        return new C2773G0(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2721i average() {
        long[] jArr = (long[]) mo255k0(C3010v0.f1068a, C3004u0.f1063a, C3022x0.f1081a);
        return jArr[0] > 0 ? C2721i.m532d(jArr[1] / jArr[0]) : C2721i.m535a();
    }

    @Override // p034j$.util.stream.IntStream
    public final Stream boxed() {
        return mo263J(C2749C0.f704a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo258c0(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2808M(this, this, EnumC2912e4.INT_VALUE, 0, interfaceC2705l);
    }

    @Override // p034j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2903d1) mo257f(C2761E0.f725a)).sum();
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2911e3) mo263J(C2749C0.f704a)).distinct().mo237m(C3016w0.f1076a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2909e1 mo257f(InterfaceC2707n interfaceC2707n) {
        Objects.requireNonNull(interfaceC2707n);
        return new C2814N(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, interfaceC2707n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2722j findAny() {
        return (C2722j) m434x0(new C2902d0(false, EnumC2912e4.INT_VALUE, C2722j.m531a(), C2867X.f857a, C2884a0.f877a));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2722j findFirst() {
        return (C2722j) m434x0(new C2902d0(true, EnumC2912e4.INT_VALUE, C2722j.m531a(), C2867X.f857a, C2884a0.f877a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo256h(C3080U c3080u) {
        Objects.requireNonNull(c3080u);
        return new C2808M(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f923t, c3080u);
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public final InterfaceC2727o.InterfaceC2728a iterator() {
        return AbstractC2656I.m620g(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public Iterator iterator() {
        return AbstractC2656I.m620g(spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo255k0(InterfaceC2718y interfaceC2718y, InterfaceC2715v interfaceC2715v, BiConsumer biConsumer) {
        C2748C c2748c = new C2748C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2718y);
        Objects.requireNonNull(interfaceC2715v);
        return m434x0(new C3036z2(EnumC2912e4.INT_VALUE, c2748c, interfaceC2715v, interfaceC2718y));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2746B3.m514g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2722j max() {
        return mo259a0(C3034z0.f1099a);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2722j min() {
        return mo259a0(C2737A0.f684a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo254q(C3087a0 c3087a0) {
        Objects.requireNonNull(c3087a0);
        return new C2808M(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, c3087a0);
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2746B3.m514g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2800K3(this);
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g
    public final InterfaceC2732s.InterfaceC2734b spliterator() {
        return m496M0(super.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m434x0(new C2805L2(EnumC2912e4.INT_VALUE, C3028y0.f1095a, 0))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    public final C2719g summaryStatistics() {
        return (C2719g) mo255k0(C2937j.f971a, C2998t0.f1058a, C2992s0.f1047a);
    }

    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: t0 */
    public final InterfaceC2993s1 mo289t0(long j, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m299p(j);
    }

    @Override // p034j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3024x2.m301n((InterfaceC3017w1) m433y0(C2755D0.f713a)).mo277e();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public InterfaceC2919g unordered() {
        return !m438C0() ? this : new C2779H0(this, this, EnumC2912e4.INT_VALUE, EnumC2906d4.f921r);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo253v(C3080U c3080u) {
        return ((Boolean) m434x0(AbstractC2969o1.m338v(c3080u, EnumC2945k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: z0 */
    final InterfaceC2738A1 mo408z0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m308g(abstractC3030y2, interfaceC2732s, z);
    }
}
