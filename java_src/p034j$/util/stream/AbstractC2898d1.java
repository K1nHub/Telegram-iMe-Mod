package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2651I;
import p034j$.util.C2715h;
import p034j$.util.C2716i;
import p034j$.util.C2718k;
import p034j$.util.InterfaceC2725q;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2703o;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.InterfaceC2708t;
import p034j$.util.function.InterfaceC2711w;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3098i0;
import p034j$.wrappers.C3102k0;
import p034j$.wrappers.C3106m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2898d1 extends AbstractC2890c implements InterfaceC2904e1 {
    public AbstractC2898d1(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        super(interfaceC2727s, i, z);
    }

    public AbstractC2898d1(AbstractC2890c abstractC2890c, int i) {
        super(abstractC2890c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2727s.InterfaceC2730c m427L0(InterfaceC2727s interfaceC2727s) {
        return m426M0(interfaceC2727s);
    }

    /* renamed from: M0 */
    public static InterfaceC2727s.InterfaceC2730c m426M0(InterfaceC2727s interfaceC2727s) {
        if (interfaceC2727s instanceof InterfaceC2727s.InterfaceC2730c) {
            return (InterfaceC2727s.InterfaceC2730c) interfaceC2727s;
        }
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(AbstractC2890c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3) {
        InterfaceC2705q c2858w0;
        InterfaceC2727s.InterfaceC2730c m426M0 = m426M0(interfaceC2727s);
        if (interfaceC2954m3 instanceof InterfaceC2705q) {
            c2858w0 = (InterfaceC2705q) interfaceC2954m3;
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(AbstractC2890c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2858w0 = new C2858W0(interfaceC2954m3);
        }
        while (!interfaceC2954m3.mo296o() && m426M0.mo118i(c2858w0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: B0 */
    public final EnumC2907e4 mo410B0() {
        return EnumC2907e4.LONG_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: D */
    public final long mo186D(long j, InterfaceC2703o interfaceC2703o) {
        Objects.requireNonNull(interfaceC2703o);
        return ((Long) m434x0(new C2824P2(EnumC2907e4.LONG_VALUE, interfaceC2703o, j))).longValue();
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: K0 */
    final InterfaceC2727s mo409K0(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        return new C2991s4(abstractC3025y2, interfaceC2713y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: L */
    public final boolean mo185L(C3098i0 c3098i0) {
        return ((Boolean) m434x0(AbstractC2964o1.m337w(c3098i0, EnumC2940k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: O */
    public final InterfaceC2847U mo184O(C3102k0 c3102k0) {
        Objects.requireNonNull(c3102k0);
        return new C2791K(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, c3102k0);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: Q */
    public final Stream mo183Q(InterfaceC2706r interfaceC2706r) {
        Objects.requireNonNull(interfaceC2706r);
        return new C2797L(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, interfaceC2706r);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: S */
    public final boolean mo182S(C3098i0 c3098i0) {
        return ((Boolean) m434x0(AbstractC2964o1.m337w(c3098i0, EnumC2940k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo181Z(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        m434x0(new C2951m0(interfaceC2705q, true));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final InterfaceC2847U asDoubleStream() {
        return new C2815O(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final C2716i average() {
        long[] jArr = (long[]) mo178f0(C2822P0.f816a, C2816O0.f810a, C2833R0.f829a);
        return jArr[0] > 0 ? C2716i.m532d(jArr[1] / jArr[0]) : C2716i.m535a();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final Stream boxed() {
        return mo183Q(C2863X0.f858a);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final long count() {
        return ((AbstractC2898d1) mo171z(C2868Y0.f862a)).sum();
    }

    /* renamed from: d */
    public void mo180d(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        m434x0(new C2951m0(interfaceC2705q, false));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final InterfaceC2904e1 distinct() {
        return ((AbstractC2906e3) mo183Q(C2863X0.f858a)).distinct().mo241g0(C2828Q0.f822a);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: e0 */
    public final IntStream mo179e0(C3106m0 c3106m0) {
        Objects.requireNonNull(c3106m0);
        return new C2803M(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, c3106m0);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: f0 */
    public final Object mo178f0(InterfaceC2713y interfaceC2713y, InterfaceC2711w interfaceC2711w, BiConsumer biConsumer) {
        C2743C c2743c = new C2743C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2713y);
        Objects.requireNonNull(interfaceC2711w);
        return m434x0(new C3031z2(EnumC2907e4.LONG_VALUE, c2743c, interfaceC2711w, interfaceC2713y));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final C2718k findAny() {
        return (C2718k) m434x0(new C2897d0(false, EnumC2907e4.LONG_VALUE, C2718k.m527a(), C2867Y.f861a, C2885b0.f884a));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final C2718k findFirst() {
        return (C2718k) m434x0(new C2897d0(true, EnumC2907e4.LONG_VALUE, C2718k.m527a(), C2867Y.f861a, C2885b0.f884a));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: g */
    public final C2718k mo177g(InterfaceC2703o interfaceC2703o) {
        Objects.requireNonNull(interfaceC2703o);
        return (C2718k) m434x0(new C2752D2(EnumC2907e4.LONG_VALUE, interfaceC2703o));
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public final InterfaceC2725q iterator() {
        return AbstractC2651I.m619h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public Iterator iterator() {
        return AbstractC2651I.m619h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: k */
    public final boolean mo176k(C3098i0 c3098i0) {
        return ((Boolean) m434x0(AbstractC2964o1.m337w(c3098i0, EnumC2940k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final InterfaceC2904e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2741B3.m513h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final C2718k max() {
        return mo177g(C2848U0.f847a);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final C2718k min() {
        return mo177g(C2853V0.f850a);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: p */
    public final InterfaceC2904e1 mo174p(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2809N(this, this, EnumC2907e4.LONG_VALUE, 0, interfaceC2705q);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: s */
    public final InterfaceC2904e1 mo173s(InterfaceC2706r interfaceC2706r) {
        return new C2809N(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, interfaceC2706r);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final InterfaceC2904e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2741B3.m513h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final InterfaceC2904e1 sorted() {
        return new C2801L3(this);
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g
    public final InterfaceC2727s.InterfaceC2730c spliterator() {
        return m426M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final long sum() {
        return ((Long) m434x0(new C2824P2(EnumC2907e4.LONG_VALUE, C2843T0.f842a, 0L))).longValue();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final C2715h summaryStatistics() {
        return (C2715h) mo178f0(C2938k.f976a, C2810N0.f801a, C2804M0.f790a);
    }

    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: t0 */
    public final InterfaceC2988s1 mo289t0(long j, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m298q(j);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public final long[] toArray() {
        return (long[]) AbstractC3019x2.m300o((InterfaceC3024y1) m433y0(C2838S0.f835a)).mo277e();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: u */
    public final InterfaceC2904e1 mo172u(C3098i0 c3098i0) {
        Objects.requireNonNull(c3098i0);
        return new C2809N(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f923t, c3098i0);
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public InterfaceC2914g unordered() {
        return !m438C0() ? this : new C2768G0(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f921r);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: z */
    public final InterfaceC2904e1 mo171z(InterfaceC2708t interfaceC2708t) {
        Objects.requireNonNull(interfaceC2708t);
        return new C2809N(this, this, EnumC2907e4.LONG_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, interfaceC2708t);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: z0 */
    final InterfaceC2733A1 mo408z0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m307h(abstractC3025y2, interfaceC2727s, z);
    }
}
