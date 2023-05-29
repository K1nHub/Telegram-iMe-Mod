package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.C2720h;
import p034j$.util.C2721i;
import p034j$.util.C2723k;
import p034j$.util.InterfaceC2730q;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2708o;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.InterfaceC2713t;
import p034j$.util.function.InterfaceC2716w;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3103i0;
import p034j$.wrappers.C3107k0;
import p034j$.wrappers.C3111m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2903d1 extends AbstractC2895c implements InterfaceC2909e1 {
    public AbstractC2903d1(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    public AbstractC2903d1(AbstractC2895c abstractC2895c, int i) {
        super(abstractC2895c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2732s.InterfaceC2735c m427L0(InterfaceC2732s interfaceC2732s) {
        return m426M0(interfaceC2732s);
    }

    /* renamed from: M0 */
    public static InterfaceC2732s.InterfaceC2735c m426M0(InterfaceC2732s interfaceC2732s) {
        if (interfaceC2732s instanceof InterfaceC2732s.InterfaceC2735c) {
            return (InterfaceC2732s.InterfaceC2735c) interfaceC2732s;
        }
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(AbstractC2895c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3) {
        InterfaceC2710q c2863w0;
        InterfaceC2732s.InterfaceC2735c m426M0 = m426M0(interfaceC2732s);
        if (interfaceC2959m3 instanceof InterfaceC2710q) {
            c2863w0 = (InterfaceC2710q) interfaceC2959m3;
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(AbstractC2895c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2863w0 = new C2863W0(interfaceC2959m3);
        }
        while (!interfaceC2959m3.mo296o() && m426M0.mo118i(c2863w0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: B0 */
    public final EnumC2912e4 mo410B0() {
        return EnumC2912e4.LONG_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: D */
    public final long mo186D(long j, InterfaceC2708o interfaceC2708o) {
        Objects.requireNonNull(interfaceC2708o);
        return ((Long) m434x0(new C2829P2(EnumC2912e4.LONG_VALUE, interfaceC2708o, j))).longValue();
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: K0 */
    final InterfaceC2732s mo409K0(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        return new C2996s4(abstractC3030y2, interfaceC2718y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: L */
    public final boolean mo185L(C3103i0 c3103i0) {
        return ((Boolean) m434x0(AbstractC2969o1.m337w(c3103i0, EnumC2945k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: O */
    public final InterfaceC2852U mo184O(C3107k0 c3107k0) {
        Objects.requireNonNull(c3107k0);
        return new C2796K(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, c3107k0);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: Q */
    public final Stream mo183Q(InterfaceC2711r interfaceC2711r) {
        Objects.requireNonNull(interfaceC2711r);
        return new C2802L(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, interfaceC2711r);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: S */
    public final boolean mo182S(C3103i0 c3103i0) {
        return ((Boolean) m434x0(AbstractC2969o1.m337w(c3103i0, EnumC2945k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo181Z(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        m434x0(new C2956m0(interfaceC2710q, true));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final InterfaceC2852U asDoubleStream() {
        return new C2820O(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final C2721i average() {
        long[] jArr = (long[]) mo178f0(C2827P0.f816a, C2821O0.f810a, C2838R0.f829a);
        return jArr[0] > 0 ? C2721i.m532d(jArr[1] / jArr[0]) : C2721i.m535a();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final Stream boxed() {
        return mo183Q(C2868X0.f858a);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final long count() {
        return ((AbstractC2903d1) mo171z(C2873Y0.f862a)).sum();
    }

    /* renamed from: d */
    public void mo180d(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        m434x0(new C2956m0(interfaceC2710q, false));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final InterfaceC2909e1 distinct() {
        return ((AbstractC2911e3) mo183Q(C2868X0.f858a)).distinct().mo241g0(C2833Q0.f822a);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: e0 */
    public final IntStream mo179e0(C3111m0 c3111m0) {
        Objects.requireNonNull(c3111m0);
        return new C2808M(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, c3111m0);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: f0 */
    public final Object mo178f0(InterfaceC2718y interfaceC2718y, InterfaceC2716w interfaceC2716w, BiConsumer biConsumer) {
        C2748C c2748c = new C2748C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2718y);
        Objects.requireNonNull(interfaceC2716w);
        return m434x0(new C3036z2(EnumC2912e4.LONG_VALUE, c2748c, interfaceC2716w, interfaceC2718y));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final C2723k findAny() {
        return (C2723k) m434x0(new C2902d0(false, EnumC2912e4.LONG_VALUE, C2723k.m527a(), C2872Y.f861a, C2890b0.f884a));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final C2723k findFirst() {
        return (C2723k) m434x0(new C2902d0(true, EnumC2912e4.LONG_VALUE, C2723k.m527a(), C2872Y.f861a, C2890b0.f884a));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: g */
    public final C2723k mo177g(InterfaceC2708o interfaceC2708o) {
        Objects.requireNonNull(interfaceC2708o);
        return (C2723k) m434x0(new C2757D2(EnumC2912e4.LONG_VALUE, interfaceC2708o));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public final InterfaceC2730q iterator() {
        return AbstractC2656I.m619h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public Iterator iterator() {
        return AbstractC2656I.m619h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: k */
    public final boolean mo176k(C3103i0 c3103i0) {
        return ((Boolean) m434x0(AbstractC2969o1.m337w(c3103i0, EnumC2945k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final InterfaceC2909e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2746B3.m513h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final C2723k max() {
        return mo177g(C2853U0.f847a);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final C2723k min() {
        return mo177g(C2858V0.f850a);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: p */
    public final InterfaceC2909e1 mo174p(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2814N(this, this, EnumC2912e4.LONG_VALUE, 0, interfaceC2710q);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: s */
    public final InterfaceC2909e1 mo173s(InterfaceC2711r interfaceC2711r) {
        return new C2814N(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, interfaceC2711r);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final InterfaceC2909e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2746B3.m513h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final InterfaceC2909e1 sorted() {
        return new C2806L3(this);
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g
    public final InterfaceC2732s.InterfaceC2735c spliterator() {
        return m426M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final long sum() {
        return ((Long) m434x0(new C2829P2(EnumC2912e4.LONG_VALUE, C2848T0.f842a, 0L))).longValue();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final C2720h summaryStatistics() {
        return (C2720h) mo178f0(C2943k.f976a, C2815N0.f801a, C2809M0.f790a);
    }

    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: t0 */
    public final InterfaceC2993s1 mo289t0(long j, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m298q(j);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public final long[] toArray() {
        return (long[]) AbstractC3024x2.m300o((InterfaceC3029y1) m433y0(C2843S0.f835a)).mo277e();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: u */
    public final InterfaceC2909e1 mo172u(C3103i0 c3103i0) {
        Objects.requireNonNull(c3103i0);
        return new C2814N(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f923t, c3103i0);
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public InterfaceC2919g unordered() {
        return !m438C0() ? this : new C2773G0(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f921r);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: z */
    public final InterfaceC2909e1 mo171z(InterfaceC2713t interfaceC2713t) {
        Objects.requireNonNull(interfaceC2713t);
        return new C2814N(this, this, EnumC2912e4.LONG_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, interfaceC2713t);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: z0 */
    final InterfaceC2738A1 mo408z0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m307h(abstractC3030y2, interfaceC2732s, z);
    }
}
