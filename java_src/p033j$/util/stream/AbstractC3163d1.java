package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.C2980h;
import p033j$.util.C2981i;
import p033j$.util.C2983k;
import p033j$.util.InterfaceC2990q;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.C2947a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2972s;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2968o;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.InterfaceC2973t;
import p033j$.util.function.InterfaceC2976w;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3363i0;
import p033j$.wrappers.C3367k0;
import p033j$.wrappers.C3371m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3163d1 extends AbstractC3155c implements InterfaceC3169e1 {
    public AbstractC3163d1(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        super(interfaceC2992s, i, z);
    }

    public AbstractC3163d1(AbstractC3155c abstractC3155c, int i) {
        super(abstractC3155c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2992s.InterfaceC2995c m445L0(InterfaceC2992s interfaceC2992s) {
        return m444M0(interfaceC2992s);
    }

    /* renamed from: M0 */
    public static InterfaceC2992s.InterfaceC2995c m444M0(InterfaceC2992s interfaceC2992s) {
        if (interfaceC2992s instanceof InterfaceC2992s.InterfaceC2995c) {
            return (InterfaceC2992s.InterfaceC2995c) interfaceC2992s;
        }
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(AbstractC3155c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3) {
        InterfaceC2970q c3123w0;
        InterfaceC2992s.InterfaceC2995c m444M0 = m444M0(interfaceC2992s);
        if (interfaceC3219m3 instanceof InterfaceC2970q) {
            c3123w0 = (InterfaceC2970q) interfaceC3219m3;
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(AbstractC3155c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c3123w0 = new C3123W0(interfaceC3219m3);
        }
        while (!interfaceC3219m3.mo314o() && m444M0.mo136i(c3123w0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: B0 */
    public final EnumC3172e4 mo428B0() {
        return EnumC3172e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: D */
    public final long mo204D(long j, InterfaceC2968o interfaceC2968o) {
        Objects.requireNonNull(interfaceC2968o);
        return ((Long) m452x0(new C3089P2(EnumC3172e4.LONG_VALUE, interfaceC2968o, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: K0 */
    final InterfaceC2992s mo427K0(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        return new C3256s4(abstractC3290y2, interfaceC2978y, z);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: L */
    public final boolean mo203L(C3363i0 c3363i0) {
        return ((Boolean) m452x0(AbstractC3229o1.m355w(c3363i0, EnumC3205k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: O */
    public final InterfaceC3112U mo202O(C3367k0 c3367k0) {
        Objects.requireNonNull(c3367k0);
        return new C3056K(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, c3367k0);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: Q */
    public final Stream mo201Q(InterfaceC2971r interfaceC2971r) {
        Objects.requireNonNull(interfaceC2971r);
        return new C3062L(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, interfaceC2971r);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: S */
    public final boolean mo200S(C3363i0 c3363i0) {
        return ((Boolean) m452x0(AbstractC3229o1.m355w(c3363i0, EnumC3205k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo199Z(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        m452x0(new C3216m0(interfaceC2970q, true));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final InterfaceC3112U asDoubleStream() {
        return new C3080O(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final C2981i average() {
        long[] jArr = (long[]) mo196f0(new InterfaceC2978y() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2976w() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2976w
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
                return new C2947a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2981i.m550d(jArr[1] / jArr[0]) : C2981i.m553a();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final Stream boxed() {
        return mo201Q(C3128X0.f953a);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final long count() {
        return ((AbstractC3163d1) mo189z(new InterfaceC2973t() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2973t
            /* renamed from: a */
            public InterfaceC2973t mo130a(InterfaceC2973t interfaceC2973t) {
                Objects.requireNonNull(interfaceC2973t);
                return new C2972s(this, interfaceC2973t, 0);
            }

            @Override // p033j$.util.function.InterfaceC2973t
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2973t
            /* renamed from: b */
            public InterfaceC2973t mo129b(InterfaceC2973t interfaceC2973t) {
                Objects.requireNonNull(interfaceC2973t);
                return new C2972s(this, interfaceC2973t, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo198d(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        m452x0(new C3216m0(interfaceC2970q, false));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final InterfaceC3169e1 distinct() {
        return ((AbstractC3171e3) mo201Q(C3128X0.f953a)).distinct().mo259g0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: e0 */
    public final IntStream mo197e0(C3371m0 c3371m0) {
        Objects.requireNonNull(c3371m0);
        return new C3068M(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, c3371m0);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: f0 */
    public final Object mo196f0(InterfaceC2978y interfaceC2978y, InterfaceC2976w interfaceC2976w, BiConsumer biConsumer) {
        C3008C c3008c = new C3008C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2978y);
        Objects.requireNonNull(interfaceC2976w);
        return m452x0(new C3296z2(EnumC3172e4.LONG_VALUE, c3008c, interfaceC2976w, interfaceC2978y));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final C2983k findAny() {
        return (C2983k) m452x0(new C3162d0(false, EnumC3172e4.LONG_VALUE, C2983k.m545a(), C3132Y.f956a, C3150b0.f979a));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final C2983k findFirst() {
        return (C2983k) m452x0(new C3162d0(true, EnumC3172e4.LONG_VALUE, C2983k.m545a(), C3132Y.f956a, C3150b0.f979a));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: g */
    public final C2983k mo195g(InterfaceC2968o interfaceC2968o) {
        Objects.requireNonNull(interfaceC2968o);
        return (C2983k) m452x0(new C3017D2(EnumC3172e4.LONG_VALUE, interfaceC2968o));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public final InterfaceC2990q iterator() {
        return AbstractC2916I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public Iterator iterator() {
        return AbstractC2916I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: k */
    public final boolean mo194k(C3363i0 c3363i0) {
        return ((Boolean) m452x0(AbstractC3229o1.m355w(c3363i0, EnumC3205k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final InterfaceC3169e1 limit(long j) {
        if (j >= 0) {
            return AbstractC3006B3.m531h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final C2983k max() {
        return mo195g(new InterfaceC2968o() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2968o
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final C2983k min() {
        return mo195g(new InterfaceC2968o() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2968o
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: p */
    public final InterfaceC3169e1 mo192p(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C3074N(this, this, EnumC3172e4.LONG_VALUE, 0, interfaceC2970q);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: s */
    public final InterfaceC3169e1 mo191s(InterfaceC2971r interfaceC2971r) {
        return new C3074N(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, interfaceC2971r);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final InterfaceC3169e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC3006B3.m531h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final InterfaceC3169e1 sorted() {
        return new C3066L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g
    public final InterfaceC2992s.InterfaceC2995c spliterator() {
        return m444M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final long sum() {
        return ((Long) m452x0(new C3089P2(EnumC3172e4.LONG_VALUE, new InterfaceC2968o() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2968o
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final C2980h summaryStatistics() {
        return (C2980h) mo196f0(new InterfaceC2978y() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new C2980h();
            }
        }, new InterfaceC2976w() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2976w
            public final void accept(Object obj, long j) {
                ((C2980h) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2980h) obj).m554b((C2980h) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: t0 */
    public final InterfaceC3253s1 mo307t0(long j, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m316q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public final long[] toArray() {
        return (long[]) AbstractC3284x2.m318o((InterfaceC3289y1) m451y0(new InterfaceC2966m() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: u */
    public final InterfaceC3169e1 mo190u(C3363i0 c3363i0) {
        Objects.requireNonNull(c3363i0);
        return new C3074N(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1018t, c3363i0);
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public InterfaceC3179g unordered() {
        return !m456C0() ? this : new C3033G0(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1016r);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: z */
    public final InterfaceC3169e1 mo189z(InterfaceC2973t interfaceC2973t) {
        Objects.requireNonNull(interfaceC2973t);
        return new C3074N(this, this, EnumC3172e4.LONG_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, interfaceC2973t);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: z0 */
    final InterfaceC2998A1 mo426z0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m325h(abstractC3290y2, interfaceC2992s, z);
    }
}
