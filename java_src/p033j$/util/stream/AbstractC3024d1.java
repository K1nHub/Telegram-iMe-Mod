package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.C2841h;
import p033j$.util.C2842i;
import p033j$.util.C2844k;
import p033j$.util.InterfaceC2851q;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2829o;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2837w;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3224i0;
import p033j$.wrappers.C3228k0;
import p033j$.wrappers.C3232m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3024d1 extends AbstractC3016c implements InterfaceC3030e1 {
    public AbstractC3024d1(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    public AbstractC3024d1(AbstractC3016c abstractC3016c, int i) {
        super(abstractC3016c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2856c m427L0(InterfaceC2853s interfaceC2853s) {
        return m426M0(interfaceC2853s);
    }

    /* renamed from: M0 */
    public static InterfaceC2853s.InterfaceC2856c m426M0(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s instanceof InterfaceC2853s.InterfaceC2856c) {
            return (InterfaceC2853s.InterfaceC2856c) interfaceC2853s;
        }
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(AbstractC3016c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        InterfaceC2831q c2984w0;
        InterfaceC2853s.InterfaceC2856c m426M0 = m426M0(interfaceC2853s);
        if (interfaceC3080m3 instanceof InterfaceC2831q) {
            c2984w0 = (InterfaceC2831q) interfaceC3080m3;
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(AbstractC3016c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2984w0 = new C2984W0(interfaceC3080m3);
        }
        while (!interfaceC3080m3.mo296o() && m426M0.mo118i(c2984w0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo410B0() {
        return EnumC3033e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: D */
    public final long mo186D(long j, InterfaceC2829o interfaceC2829o) {
        Objects.requireNonNull(interfaceC2829o);
        return ((Long) m434x0(new C2950P2(EnumC3033e4.LONG_VALUE, interfaceC2829o, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo409K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C3117s4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: L */
    public final boolean mo185L(C3224i0 c3224i0) {
        return ((Boolean) m434x0(AbstractC3090o1.m337w(c3224i0, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: O */
    public final InterfaceC2973U mo184O(C3228k0 c3228k0) {
        Objects.requireNonNull(c3228k0);
        return new C2917K(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, c3228k0);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: Q */
    public final Stream mo183Q(InterfaceC2832r interfaceC2832r) {
        Objects.requireNonNull(interfaceC2832r);
        return new C2923L(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, interfaceC2832r);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: S */
    public final boolean mo182S(C3224i0 c3224i0) {
        return ((Boolean) m434x0(AbstractC3090o1.m337w(c3224i0, EnumC3066k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo181Z(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        m434x0(new C3077m0(interfaceC2831q, true));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC2973U asDoubleStream() {
        return new C2941O(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2842i average() {
        long[] jArr = (long[]) mo178f0(C2948P0.f898a, C2942O0.f892a, C2959R0.f911a);
        return jArr[0] > 0 ? C2842i.m532d(jArr[1] / jArr[0]) : C2842i.m535a();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final Stream boxed() {
        return mo183Q(C2989X0.f940a);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final long count() {
        return ((AbstractC3024d1) mo171z(C2994Y0.f944a)).sum();
    }

    /* renamed from: d */
    public void mo180d(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        m434x0(new C3077m0(interfaceC2831q, false));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 distinct() {
        return ((AbstractC3032e3) mo183Q(C2989X0.f940a)).distinct().mo241g0(C2954Q0.f904a);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: e0 */
    public final IntStream mo179e0(C3232m0 c3232m0) {
        Objects.requireNonNull(c3232m0);
        return new C2929M(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, c3232m0);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: f0 */
    public final Object mo178f0(InterfaceC2839y interfaceC2839y, InterfaceC2837w interfaceC2837w, BiConsumer biConsumer) {
        C2869C c2869c = new C2869C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(interfaceC2837w);
        return m434x0(new C3157z2(EnumC3033e4.LONG_VALUE, c2869c, interfaceC2837w, interfaceC2839y));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k findAny() {
        return (C2844k) m434x0(new C3023d0(false, EnumC3033e4.LONG_VALUE, C2844k.m527a(), C2993Y.f943a, C3011b0.f966a));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k findFirst() {
        return (C2844k) m434x0(new C3023d0(true, EnumC3033e4.LONG_VALUE, C2844k.m527a(), C2993Y.f943a, C3011b0.f966a));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: g */
    public final C2844k mo177g(InterfaceC2829o interfaceC2829o) {
        Objects.requireNonNull(interfaceC2829o);
        return (C2844k) m434x0(new C2878D2(EnumC3033e4.LONG_VALUE, interfaceC2829o));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2851q iterator() {
        return AbstractC2777I.m619h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public Iterator iterator() {
        return AbstractC2777I.m619h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: k */
    public final boolean mo176k(C3224i0 c3224i0) {
        return ((Boolean) m434x0(AbstractC3090o1.m337w(c3224i0, EnumC3066k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m513h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k max() {
        return mo177g(C2974U0.f929a);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k min() {
        return mo177g(C2979V0.f932a);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: p */
    public final InterfaceC3030e1 mo174p(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, 0, interfaceC2831q);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: s */
    public final InterfaceC3030e1 mo173s(InterfaceC2832r interfaceC2832r) {
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, interfaceC2832r);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m513h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 sorted() {
        return new C2927L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2853s.InterfaceC2856c spliterator() {
        return m426M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final long sum() {
        return ((Long) m434x0(new C2950P2(EnumC3033e4.LONG_VALUE, C2969T0.f924a, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2841h summaryStatistics() {
        return (C2841h) mo178f0(C3064k.f1058a, C2936N0.f883a, C2930M0.f872a);
    }

    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo289t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m298q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final long[] toArray() {
        return (long[]) AbstractC3145x2.m300o((InterfaceC3150y1) m433y0(C2964S0.f917a)).mo277e();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: u */
    public final InterfaceC3030e1 mo172u(C3224i0 c3224i0) {
        Objects.requireNonNull(c3224i0);
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1005t, c3224i0);
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m438C0() ? this : new C2894G0(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1003r);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: z */
    public final InterfaceC3030e1 mo171z(InterfaceC2834t interfaceC2834t) {
        Objects.requireNonNull(interfaceC2834t);
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, interfaceC2834t);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo408z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m307h(abstractC3151y2, interfaceC2853s, z);
    }
}
