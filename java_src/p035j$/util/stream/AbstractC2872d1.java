package p035j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.C2689h;
import p035j$.util.C2690i;
import p035j$.util.C2692k;
import p035j$.util.InterfaceC2699q;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2677o;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.InterfaceC2682t;
import p035j$.util.function.InterfaceC2685w;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3072i0;
import p035j$.wrappers.C3076k0;
import p035j$.wrappers.C3080m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC2872d1 extends AbstractC2864c implements InterfaceC2878e1 {
    public AbstractC2872d1(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        super(interfaceC2701s, i, z);
    }

    public AbstractC2872d1(AbstractC2864c abstractC2864c, int i) {
        super(abstractC2864c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2701s.InterfaceC2704c m436L0(InterfaceC2701s interfaceC2701s) {
        return m435M0(interfaceC2701s);
    }

    /* renamed from: M0 */
    public static InterfaceC2701s.InterfaceC2704c m435M0(InterfaceC2701s interfaceC2701s) {
        if (interfaceC2701s instanceof InterfaceC2701s.InterfaceC2704c) {
            return (InterfaceC2701s.InterfaceC2704c) interfaceC2701s;
        }
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(AbstractC2864c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: A0 */
    final void mo420A0(InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3) {
        InterfaceC2679q c2832w0;
        InterfaceC2701s.InterfaceC2704c m435M0 = m435M0(interfaceC2701s);
        if (interfaceC2928m3 instanceof InterfaceC2679q) {
            c2832w0 = (InterfaceC2679q) interfaceC2928m3;
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(AbstractC2864c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2832w0 = new C2832W0(interfaceC2928m3);
        }
        while (!interfaceC2928m3.mo305o() && m435M0.mo127i(c2832w0)) {
        }
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: B0 */
    public final EnumC2881e4 mo419B0() {
        return EnumC2881e4.LONG_VALUE;
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: D */
    public final long mo195D(long j, InterfaceC2677o interfaceC2677o) {
        Objects.requireNonNull(interfaceC2677o);
        return ((Long) m443x0(new C2798P2(EnumC2881e4.LONG_VALUE, interfaceC2677o, j))).longValue();
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: K0 */
    final InterfaceC2701s mo418K0(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        return new C2965s4(abstractC2999y2, interfaceC2687y, z);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: L */
    public final boolean mo194L(C3072i0 c3072i0) {
        return ((Boolean) m443x0(AbstractC2938o1.m346w(c3072i0, EnumC2914k1.ALL))).booleanValue();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: O */
    public final InterfaceC2821U mo193O(C3076k0 c3076k0) {
        Objects.requireNonNull(c3076k0);
        return new C2765K(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, c3076k0);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: Q */
    public final Stream mo192Q(InterfaceC2680r interfaceC2680r) {
        Objects.requireNonNull(interfaceC2680r);
        return new C2771L(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, interfaceC2680r);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: S */
    public final boolean mo191S(C3072i0 c3072i0) {
        return ((Boolean) m443x0(AbstractC2938o1.m346w(c3072i0, EnumC2914k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo190Z(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        m443x0(new C2925m0(interfaceC2679q, true));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final InterfaceC2821U asDoubleStream() {
        return new C2789O(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final C2690i average() {
        long[] jArr = (long[]) mo187f0(C2796P0.f818a, C2790O0.f812a, C2807R0.f831a);
        return jArr[0] > 0 ? C2690i.m541d(jArr[1] / jArr[0]) : C2690i.m544a();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final Stream boxed() {
        return mo192Q(C2837X0.f860a);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final long count() {
        return ((AbstractC2872d1) mo180z(C2842Y0.f864a)).sum();
    }

    /* renamed from: d */
    public void mo189d(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        m443x0(new C2925m0(interfaceC2679q, false));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final InterfaceC2878e1 distinct() {
        return ((AbstractC2880e3) mo192Q(C2837X0.f860a)).distinct().mo250g0(C2802Q0.f824a);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: e0 */
    public final IntStream mo188e0(C3080m0 c3080m0) {
        Objects.requireNonNull(c3080m0);
        return new C2777M(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, c3080m0);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: f0 */
    public final Object mo187f0(InterfaceC2687y interfaceC2687y, InterfaceC2685w interfaceC2685w, BiConsumer biConsumer) {
        C2717C c2717c = new C2717C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2687y);
        Objects.requireNonNull(interfaceC2685w);
        return m443x0(new C3005z2(EnumC2881e4.LONG_VALUE, c2717c, interfaceC2685w, interfaceC2687y));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final C2692k findAny() {
        return (C2692k) m443x0(new C2871d0(false, EnumC2881e4.LONG_VALUE, C2692k.m536a(), C2841Y.f863a, C2859b0.f886a));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final C2692k findFirst() {
        return (C2692k) m443x0(new C2871d0(true, EnumC2881e4.LONG_VALUE, C2692k.m536a(), C2841Y.f863a, C2859b0.f886a));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: g */
    public final C2692k mo186g(InterfaceC2677o interfaceC2677o) {
        Objects.requireNonNull(interfaceC2677o);
        return (C2692k) m443x0(new C2726D2(EnumC2881e4.LONG_VALUE, interfaceC2677o));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public final InterfaceC2699q iterator() {
        return AbstractC2625I.m629h(spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public Iterator iterator() {
        return AbstractC2625I.m629h(spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: k */
    public final boolean mo185k(C3072i0 c3072i0) {
        return ((Boolean) m443x0(AbstractC2938o1.m346w(c3072i0, EnumC2914k1.ANY))).booleanValue();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final InterfaceC2878e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2715B3.m522h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final C2692k max() {
        return mo186g(C2822U0.f849a);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final C2692k min() {
        return mo186g(C2827V0.f852a);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: p */
    public final InterfaceC2878e1 mo183p(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2783N(this, this, EnumC2881e4.LONG_VALUE, 0, interfaceC2679q);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: s */
    public final InterfaceC2878e1 mo182s(InterfaceC2680r interfaceC2680r) {
        return new C2783N(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, interfaceC2680r);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final InterfaceC2878e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2715B3.m522h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final InterfaceC2878e1 sorted() {
        return new C2775L3(this);
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g
    public final InterfaceC2701s.InterfaceC2704c spliterator() {
        return m435M0(super.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final long sum() {
        return ((Long) m443x0(new C2798P2(EnumC2881e4.LONG_VALUE, C2817T0.f844a, 0L))).longValue();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final C2689h summaryStatistics() {
        return (C2689h) mo187f0(C2912k.f978a, C2784N0.f803a, C2778M0.f792a);
    }

    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: t0 */
    public final InterfaceC2962s1 mo298t0(long j, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m307q(j);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public final long[] toArray() {
        return (long[]) AbstractC2993x2.m309o((InterfaceC2998y1) m442y0(C2812S0.f837a)).mo286e();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: u */
    public final InterfaceC2878e1 mo181u(C3072i0 c3072i0) {
        Objects.requireNonNull(c3072i0);
        return new C2783N(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f925t, c3072i0);
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public InterfaceC2888g unordered() {
        return !m447C0() ? this : new C2742G0(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f923r);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: z */
    public final InterfaceC2878e1 mo180z(InterfaceC2682t interfaceC2682t) {
        Objects.requireNonNull(interfaceC2682t);
        return new C2783N(this, this, EnumC2881e4.LONG_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, interfaceC2682t);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: z0 */
    final InterfaceC2707A1 mo417z0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m316h(abstractC2999y2, interfaceC2701s, z);
    }
}
