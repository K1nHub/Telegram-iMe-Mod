package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.C2840g;
import p033j$.util.C2842i;
import p033j$.util.C2843j;
import p033j$.util.InterfaceC2848o;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3203W;
import p033j$.wrappers.C3208a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2924L0 extends AbstractC3016c implements IntStream {
    public AbstractC2924L0(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    public AbstractC2924L0(AbstractC3016c abstractC3016c, int i) {
        super(abstractC3016c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2855b m497L0(InterfaceC2853s interfaceC2853s) {
        return m496M0(interfaceC2853s);
    }

    /* renamed from: M0 */
    public static InterfaceC2853s.InterfaceC2855b m496M0(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s instanceof InterfaceC2853s.InterfaceC2855b) {
            return (InterfaceC2853s.InterfaceC2855b) interfaceC2853s;
        }
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(AbstractC3016c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2973U mo267A(C3203W c3203w) {
        Objects.requireNonNull(c3203w);
        return new C2917K(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, c3203w);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        InterfaceC2826l c2864b0;
        InterfaceC2853s.InterfaceC2855b m496M0 = m496M0(interfaceC2853s);
        if (interfaceC3080m3 instanceof InterfaceC2826l) {
            c2864b0 = (InterfaceC2826l) interfaceC3080m3;
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(AbstractC3016c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2864b0 = new C2864B0(interfaceC3080m3);
        }
        while (!interfaceC3080m3.mo296o() && m496M0.mo124g(c2864b0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo410B0() {
        return EnumC3033e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo266C(C3201U c3201u) {
        return ((Boolean) m434x0(AbstractC3090o1.m338v(c3201u, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo265F(C3201U c3201u) {
        return ((Boolean) m434x0(AbstractC3090o1.m338v(c3201u, EnumC3066k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo264I(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        m434x0(new C3071l0(interfaceC2826l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo263J(InterfaceC2827m interfaceC2827m) {
        Objects.requireNonNull(interfaceC2827m);
        return new C2923L(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, interfaceC2827m);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo409K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C3105q4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo262N(int i, InterfaceC2824j interfaceC2824j) {
        Objects.requireNonNull(interfaceC2824j);
        return ((Integer) m434x0(new C2926L2(EnumC3033e4.INT_VALUE, interfaceC2824j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo261P(InterfaceC2827m interfaceC2827m) {
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, interfaceC2827m);
    }

    /* renamed from: U */
    public void mo260U(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        m434x0(new C3071l0(interfaceC2826l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2843j mo259a0(InterfaceC2824j interfaceC2824j) {
        Objects.requireNonNull(interfaceC2824j);
        return (C2843j) m434x0(new C2878D2(EnumC3033e4.INT_VALUE, interfaceC2824j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC2973U asDoubleStream() {
        return new C2941O(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3030e1 asLongStream() {
        return new C2894G0(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2842i average() {
        long[] jArr = (long[]) mo255k0(C3131v0.f1150a, C3125u0.f1145a, C3143x0.f1163a);
        return jArr[0] > 0 ? C2842i.m532d(jArr[1] / jArr[0]) : C2842i.m535a();
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo263J(C2870C0.f786a);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo258c0(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, 0, interfaceC2826l);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3024d1) mo257f(C2882E0.f807a)).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3032e3) mo263J(C2870C0.f786a)).distinct().mo237m(C3137w0.f1158a);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3030e1 mo257f(InterfaceC2828n interfaceC2828n) {
        Objects.requireNonNull(interfaceC2828n);
        return new C2935N(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, interfaceC2828n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j findAny() {
        return (C2843j) m434x0(new C3023d0(false, EnumC3033e4.INT_VALUE, C2843j.m531a(), C2988X.f939a, C3005a0.f959a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j findFirst() {
        return (C2843j) m434x0(new C3023d0(true, EnumC3033e4.INT_VALUE, C2843j.m531a(), C2988X.f939a, C3005a0.f959a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo256h(C3201U c3201u) {
        Objects.requireNonNull(c3201u);
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1005t, c3201u);
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2848o.InterfaceC2849a iterator() {
        return AbstractC2777I.m620g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public Iterator iterator() {
        return AbstractC2777I.m620g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo255k0(InterfaceC2839y interfaceC2839y, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer) {
        C2869C c2869c = new C2869C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(interfaceC2836v);
        return m434x0(new C3157z2(EnumC3033e4.INT_VALUE, c2869c, interfaceC2836v, interfaceC2839y));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m514g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j max() {
        return mo259a0(C3155z0.f1181a);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j min() {
        return mo259a0(C2858A0.f766a);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo254q(C3208a0 c3208a0) {
        Objects.requireNonNull(c3208a0);
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, c3208a0);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m514g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2921K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2853s.InterfaceC2855b spliterator() {
        return m496M0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m434x0(new C2926L2(EnumC3033e4.INT_VALUE, C3149y0.f1177a, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2840g summaryStatistics() {
        return (C2840g) mo255k0(C3058j.f1053a, C3119t0.f1140a, C3113s0.f1129a);
    }

    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo289t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m299p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3145x2.m301n((InterfaceC3138w1) m433y0(C2876D0.f795a)).mo277e();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m438C0() ? this : new C2900H0(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1003r);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo253v(C3201U c3201u) {
        return ((Boolean) m434x0(AbstractC3090o1.m338v(c3201u, EnumC3066k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo408z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m308g(abstractC3151y2, interfaceC2853s, z);
    }
}
