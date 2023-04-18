package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.C2676h;
import p034j$.util.C2677i;
import p034j$.util.C2679k;
import p034j$.util.InterfaceC2686q;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2664o;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.InterfaceC2669t;
import p034j$.util.function.InterfaceC2672w;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3059i0;
import p034j$.wrappers.C3063k0;
import p034j$.wrappers.C3067m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2859d1 extends AbstractC2851c implements InterfaceC2865e1 {
    public AbstractC2859d1(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        super(interfaceC2688s, i, z);
    }

    public AbstractC2859d1(AbstractC2851c abstractC2851c, int i) {
        super(abstractC2851c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2688s.InterfaceC2691c m422L0(InterfaceC2688s interfaceC2688s) {
        return m421M0(interfaceC2688s);
    }

    /* renamed from: M0 */
    public static InterfaceC2688s.InterfaceC2691c m421M0(InterfaceC2688s interfaceC2688s) {
        if (interfaceC2688s instanceof InterfaceC2688s.InterfaceC2691c) {
            return (InterfaceC2688s.InterfaceC2691c) interfaceC2688s;
        }
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(AbstractC2851c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: A0 */
    final void mo406A0(InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3) {
        InterfaceC2666q c2819w0;
        InterfaceC2688s.InterfaceC2691c m421M0 = m421M0(interfaceC2688s);
        if (interfaceC2915m3 instanceof InterfaceC2666q) {
            c2819w0 = (InterfaceC2666q) interfaceC2915m3;
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(AbstractC2851c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2819w0 = new C2819W0(interfaceC2915m3);
        }
        while (!interfaceC2915m3.mo291o() && m421M0.mo113i(c2819w0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: B0 */
    public final EnumC2868e4 mo405B0() {
        return EnumC2868e4.LONG_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: D */
    public final long mo181D(long j, InterfaceC2664o interfaceC2664o) {
        Objects.requireNonNull(interfaceC2664o);
        return ((Long) m429x0(new C2785P2(EnumC2868e4.LONG_VALUE, interfaceC2664o, j))).longValue();
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: K0 */
    final InterfaceC2688s mo404K0(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        return new C2952s4(abstractC2986y2, interfaceC2674y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: L */
    public final boolean mo180L(C3059i0 c3059i0) {
        return ((Boolean) m429x0(AbstractC2925o1.m332w(c3059i0, EnumC2901k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: O */
    public final InterfaceC2808U mo179O(C3063k0 c3063k0) {
        Objects.requireNonNull(c3063k0);
        return new C2752K(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, c3063k0);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: Q */
    public final Stream mo178Q(InterfaceC2667r interfaceC2667r) {
        Objects.requireNonNull(interfaceC2667r);
        return new C2758L(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, interfaceC2667r);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: S */
    public final boolean mo177S(C3059i0 c3059i0) {
        return ((Boolean) m429x0(AbstractC2925o1.m332w(c3059i0, EnumC2901k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo176Z(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        m429x0(new C2912m0(interfaceC2666q, true));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final InterfaceC2808U asDoubleStream() {
        return new C2776O(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final C2677i average() {
        long[] jArr = (long[]) mo173f0(C2783P0.f813a, C2777O0.f807a, C2794R0.f826a);
        return jArr[0] > 0 ? C2677i.m527d(jArr[1] / jArr[0]) : C2677i.m530a();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final Stream boxed() {
        return mo178Q(C2824X0.f855a);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final long count() {
        return ((AbstractC2859d1) mo166z(C2829Y0.f859a)).sum();
    }

    /* renamed from: d */
    public void mo175d(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        m429x0(new C2912m0(interfaceC2666q, false));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final InterfaceC2865e1 distinct() {
        return ((AbstractC2867e3) mo178Q(C2824X0.f855a)).distinct().mo236g0(C2789Q0.f819a);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: e0 */
    public final IntStream mo174e0(C3067m0 c3067m0) {
        Objects.requireNonNull(c3067m0);
        return new C2764M(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, c3067m0);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: f0 */
    public final Object mo173f0(InterfaceC2674y interfaceC2674y, InterfaceC2672w interfaceC2672w, BiConsumer biConsumer) {
        C2704C c2704c = new C2704C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2674y);
        Objects.requireNonNull(interfaceC2672w);
        return m429x0(new C2992z2(EnumC2868e4.LONG_VALUE, c2704c, interfaceC2672w, interfaceC2674y));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final C2679k findAny() {
        return (C2679k) m429x0(new C2858d0(false, EnumC2868e4.LONG_VALUE, C2679k.m522a(), C2828Y.f858a, C2846b0.f881a));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final C2679k findFirst() {
        return (C2679k) m429x0(new C2858d0(true, EnumC2868e4.LONG_VALUE, C2679k.m522a(), C2828Y.f858a, C2846b0.f881a));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: g */
    public final C2679k mo172g(InterfaceC2664o interfaceC2664o) {
        Objects.requireNonNull(interfaceC2664o);
        return (C2679k) m429x0(new C2713D2(EnumC2868e4.LONG_VALUE, interfaceC2664o));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public final InterfaceC2686q iterator() {
        return AbstractC2612I.m615h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public Iterator iterator() {
        return AbstractC2612I.m615h(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: k */
    public final boolean mo171k(C3059i0 c3059i0) {
        return ((Boolean) m429x0(AbstractC2925o1.m332w(c3059i0, EnumC2901k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final InterfaceC2865e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2702B3.m508h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final C2679k max() {
        return mo172g(C2809U0.f844a);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final C2679k min() {
        return mo172g(C2814V0.f847a);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: p */
    public final InterfaceC2865e1 mo169p(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2770N(this, this, EnumC2868e4.LONG_VALUE, 0, interfaceC2666q);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: s */
    public final InterfaceC2865e1 mo168s(InterfaceC2667r interfaceC2667r) {
        return new C2770N(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, interfaceC2667r);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final InterfaceC2865e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2702B3.m508h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final InterfaceC2865e1 sorted() {
        return new C2762L3(this);
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g
    public final InterfaceC2688s.InterfaceC2691c spliterator() {
        return m421M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final long sum() {
        return ((Long) m429x0(new C2785P2(EnumC2868e4.LONG_VALUE, C2804T0.f839a, 0L))).longValue();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final C2676h summaryStatistics() {
        return (C2676h) mo173f0(C2899k.f973a, C2771N0.f798a, C2765M0.f787a);
    }

    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: t0 */
    public final InterfaceC2949s1 mo284t0(long j, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m293q(j);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public final long[] toArray() {
        return (long[]) AbstractC2980x2.m295o((InterfaceC2985y1) m428y0(C2799S0.f832a)).mo272e();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: u */
    public final InterfaceC2865e1 mo167u(C3059i0 c3059i0) {
        Objects.requireNonNull(c3059i0);
        return new C2770N(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f920t, c3059i0);
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public InterfaceC2875g unordered() {
        return !m433C0() ? this : new C2729G0(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f918r);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: z */
    public final InterfaceC2865e1 mo166z(InterfaceC2669t interfaceC2669t) {
        Objects.requireNonNull(interfaceC2669t);
        return new C2770N(this, this, EnumC2868e4.LONG_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, interfaceC2669t);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: z0 */
    final InterfaceC2694A1 mo403z0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m302h(abstractC2986y2, interfaceC2688s, z);
    }
}
