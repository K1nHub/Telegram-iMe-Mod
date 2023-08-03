package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.C2841h;
import p033j$.util.C2842i;
import p033j$.util.C2844k;
import p033j$.util.InterfaceC2851q;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2833s;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2829o;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2837w;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.ToLongFunction;
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
    public static /* synthetic */ InterfaceC2853s.InterfaceC2856c m445L0(InterfaceC2853s interfaceC2853s) {
        return m444M0(interfaceC2853s);
    }

    /* renamed from: M0 */
    public static InterfaceC2853s.InterfaceC2856c m444M0(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s instanceof InterfaceC2853s.InterfaceC2856c) {
            return (InterfaceC2853s.InterfaceC2856c) interfaceC2853s;
        }
        if (AbstractC2958Q4.f913a) {
            AbstractC2958Q4.m500a(AbstractC3016c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        InterfaceC2831q c2984w0;
        InterfaceC2853s.InterfaceC2856c m444M0 = m444M0(interfaceC2853s);
        if (interfaceC3080m3 instanceof InterfaceC2831q) {
            c2984w0 = (InterfaceC2831q) interfaceC3080m3;
        } else if (AbstractC2958Q4.f913a) {
            AbstractC2958Q4.m500a(AbstractC3016c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2984w0 = new C2984W0(interfaceC3080m3);
        }
        while (!interfaceC3080m3.mo314o() && m444M0.mo136i(c2984w0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo428B0() {
        return EnumC3033e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: D */
    public final long mo204D(long j, InterfaceC2829o interfaceC2829o) {
        Objects.requireNonNull(interfaceC2829o);
        return ((Long) m452x0(new C2950P2(EnumC3033e4.LONG_VALUE, interfaceC2829o, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo427K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C3117s4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: L */
    public final boolean mo203L(C3224i0 c3224i0) {
        return ((Boolean) m452x0(AbstractC3090o1.m355w(c3224i0, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: O */
    public final InterfaceC2973U mo202O(C3228k0 c3228k0) {
        Objects.requireNonNull(c3228k0);
        return new C2917K(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, c3228k0);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: Q */
    public final Stream mo201Q(InterfaceC2832r interfaceC2832r) {
        Objects.requireNonNull(interfaceC2832r);
        return new C2923L(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, interfaceC2832r);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: S */
    public final boolean mo200S(C3224i0 c3224i0) {
        return ((Boolean) m452x0(AbstractC3090o1.m355w(c3224i0, EnumC3066k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo199Z(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        m452x0(new C3077m0(interfaceC2831q, true));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC2973U asDoubleStream() {
        return new C2941O(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2842i average() {
        long[] jArr = (long[]) mo196f0(new InterfaceC2839y() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2837w() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2837w
            public final void accept(Object obj, long j) {
                long[] jArr2 = (long[]) obj;
                jArr2[0] = jArr2[0] + 1;
                jArr2[1] = jArr2[1] + j;
            }
        }, new BiConsumer() { // from class: j$.util.stream.R0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                long[] jArr2 = (long[]) obj;
                long[] jArr3 = (long[]) obj2;
                jArr2[0] = jArr2[0] + jArr3[0];
                jArr2[1] = jArr2[1] + jArr3[1];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2842i.m550d(jArr[1] / jArr[0]) : C2842i.m553a();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final Stream boxed() {
        return mo201Q(C2989X0.f943a);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final long count() {
        return ((AbstractC3024d1) mo189z(new InterfaceC2834t() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2834t
            /* renamed from: a */
            public InterfaceC2834t mo130a(InterfaceC2834t interfaceC2834t) {
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 0);
            }

            @Override // p033j$.util.function.InterfaceC2834t
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2834t
            /* renamed from: b */
            public InterfaceC2834t mo129b(InterfaceC2834t interfaceC2834t) {
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo198d(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        m452x0(new C3077m0(interfaceC2831q, false));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 distinct() {
        return ((AbstractC3032e3) mo201Q(C2989X0.f943a)).distinct().mo259g0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: e0 */
    public final IntStream mo197e0(C3232m0 c3232m0) {
        Objects.requireNonNull(c3232m0);
        return new C2929M(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, c3232m0);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: f0 */
    public final Object mo196f0(InterfaceC2839y interfaceC2839y, InterfaceC2837w interfaceC2837w, BiConsumer biConsumer) {
        C2869C c2869c = new C2869C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(interfaceC2837w);
        return m452x0(new C3157z2(EnumC3033e4.LONG_VALUE, c2869c, interfaceC2837w, interfaceC2839y));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k findAny() {
        return (C2844k) m452x0(new C3023d0(false, EnumC3033e4.LONG_VALUE, C2844k.m545a(), C2993Y.f946a, C3011b0.f969a));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k findFirst() {
        return (C2844k) m452x0(new C3023d0(true, EnumC3033e4.LONG_VALUE, C2844k.m545a(), C2993Y.f946a, C3011b0.f969a));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: g */
    public final C2844k mo195g(InterfaceC2829o interfaceC2829o) {
        Objects.requireNonNull(interfaceC2829o);
        return (C2844k) m452x0(new C2878D2(EnumC3033e4.LONG_VALUE, interfaceC2829o));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2851q iterator() {
        return AbstractC2777I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public Iterator iterator() {
        return AbstractC2777I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: k */
    public final boolean mo194k(C3224i0 c3224i0) {
        return ((Boolean) m452x0(AbstractC3090o1.m355w(c3224i0, EnumC3066k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m531h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k max() {
        return mo195g(new InterfaceC2829o() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2829o
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2844k min() {
        return mo195g(new InterfaceC2829o() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2829o
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: p */
    public final InterfaceC3030e1 mo192p(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, 0, interfaceC2831q);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: s */
    public final InterfaceC3030e1 mo191s(InterfaceC2832r interfaceC2832r) {
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n | EnumC3027d4.f1008t, interfaceC2832r);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m531h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final InterfaceC3030e1 sorted() {
        return new C2927L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2853s.InterfaceC2856c spliterator() {
        return m444M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final long sum() {
        return ((Long) m452x0(new C2950P2(EnumC3033e4.LONG_VALUE, new InterfaceC2829o() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2829o
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final C2841h summaryStatistics() {
        return (C2841h) mo196f0(new InterfaceC2839y() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new C2841h();
            }
        }, new InterfaceC2837w() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2837w
            public final void accept(Object obj, long j) {
                ((C2841h) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2841h) obj).m554b((C2841h) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo307t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m316q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public final long[] toArray() {
        return (long[]) AbstractC3145x2.m318o((InterfaceC3150y1) m451y0(new InterfaceC2827m() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.InterfaceC2827m
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: u */
    public final InterfaceC3030e1 mo190u(C3224i0 c3224i0) {
        Objects.requireNonNull(c3224i0);
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1008t, c3224i0);
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m456C0() ? this : new C2894G0(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1006r);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: z */
    public final InterfaceC3030e1 mo189z(InterfaceC2834t interfaceC2834t) {
        Objects.requireNonNull(interfaceC2834t);
        return new C2935N(this, this, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, interfaceC2834t);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo426z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m325h(abstractC3151y2, interfaceC2853s, z);
    }
}
