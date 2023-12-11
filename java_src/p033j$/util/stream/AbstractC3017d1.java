package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2770F;
import p033j$.util.C2811f;
import p033j$.util.C2836g;
import p033j$.util.C2838i;
import p033j$.util.InterfaceC2846p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2829r;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2825n;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.InterfaceC2830s;
import p033j$.util.function.InterfaceC2833v;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3210g0;
import p033j$.wrappers.C3214i0;
import p033j$.wrappers.C3218k0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3017d1 extends AbstractC3009c implements InterfaceC3023e1 {
    public AbstractC3017d1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC3017d1(AbstractC3009c abstractC3009c, int i) {
        super(abstractC3009c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2775c m491K0(Spliterator spliterator) {
        return m490L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2775c m490L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2775c) {
            return (Spliterator.InterfaceC2775c) spliterator;
        }
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(AbstractC3009c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: A0 */
    public final EnumC3026e4 mo475A0() {
        return EnumC3026e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: C */
    public final long mo257C(long j, InterfaceC2825n interfaceC2825n) {
        Objects.requireNonNull(interfaceC2825n);
        return ((Long) m498w0(new C2943P2(EnumC3026e4.LONG_VALUE, interfaceC2825n, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z) {
        return new C3110s4(abstractC3144y2, interfaceC2835x, z);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: K */
    public final boolean mo256K(C3210g0 c3210g0) {
        return ((Boolean) m498w0(AbstractC3083o1.m401w(c3210g0, EnumC3059k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: N */
    public final InterfaceC2966U mo255N(C3214i0 c3214i0) {
        Objects.requireNonNull(c3214i0);
        return new C2910K(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, c3214i0);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: P */
    public final Stream mo254P(InterfaceC2828q interfaceC2828q) {
        Objects.requireNonNull(interfaceC2828q);
        return new C2916L(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, interfaceC2828q);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: R */
    public final boolean mo253R(C3210g0 c3210g0) {
        return ((Boolean) m498w0(AbstractC3083o1.m401w(c3210g0, EnumC3059k1.NONE))).booleanValue();
    }

    /* renamed from: Y */
    public void mo252Y(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        m498w0(new C3070m0(interfaceC2827p, true));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final InterfaceC2966U asDoubleStream() {
        return new C2934O(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final C2836g average() {
        long[] jArr = (long[]) mo249e0(new InterfaceC2835x() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2833v() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2833v
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
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2836g.m614d(jArr[1] / jArr[0]) : C2836g.m617a();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final Stream boxed() {
        return mo254P(C2982X0.f993a);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final long count() {
        return ((AbstractC3017d1) mo242y(new InterfaceC2830s() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2830s
            /* renamed from: a */
            public InterfaceC2830s mo185a(InterfaceC2830s interfaceC2830s) {
                Objects.requireNonNull(interfaceC2830s);
                return new C2829r(this, interfaceC2830s, 0);
            }

            @Override // p033j$.util.function.InterfaceC2830s
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2830s
            /* renamed from: b */
            public InterfaceC2830s mo184b(InterfaceC2830s interfaceC2830s) {
                Objects.requireNonNull(interfaceC2830s);
                return new C2829r(this, interfaceC2830s, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo251d(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        m498w0(new C3070m0(interfaceC2827p, false));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: d0 */
    public final IntStream mo250d0(C3218k0 c3218k0) {
        Objects.requireNonNull(c3218k0);
        return new C2922M(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, c3218k0);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final InterfaceC3023e1 distinct() {
        return ((AbstractC3025e3) mo254P(C2982X0.f993a)).distinct().mo305f0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: e0 */
    public final Object mo249e0(InterfaceC2835x interfaceC2835x, InterfaceC2833v interfaceC2833v, BiConsumer biConsumer) {
        C2862C c2862c = new C2862C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2835x);
        Objects.requireNonNull(interfaceC2833v);
        return m498w0(new C3150z2(EnumC3026e4.LONG_VALUE, c2862c, interfaceC2833v, interfaceC2835x));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final C2838i findAny() {
        return (C2838i) m498w0(new C3016d0(false, EnumC3026e4.LONG_VALUE, C2838i.m609a(), C2986Y.f996a, C3004b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final C2838i findFirst() {
        return (C2838i) m498w0(new C3016d0(true, EnumC3026e4.LONG_VALUE, C2838i.m609a(), C2986Y.f996a, C3004b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: g */
    public final C2838i mo248g(InterfaceC2825n interfaceC2825n) {
        Objects.requireNonNull(interfaceC2825n);
        return (C2838i) m498w0(new C2871D2(EnumC3026e4.LONG_VALUE, interfaceC2825n));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public final InterfaceC2846p iterator() {
        return AbstractC2770F.m678h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public Iterator iterator() {
        return AbstractC2770F.m678h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: k */
    public final boolean mo247k(C3210g0 c3210g0) {
        return ((Boolean) m498w0(AbstractC3083o1.m401w(c3210g0, EnumC3059k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final InterfaceC3023e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2860B3.m577h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final C2838i max() {
        return mo248g(new InterfaceC2825n() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2825n
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final C2838i min() {
        return mo248g(new InterfaceC2825n() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2825n
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: o */
    public final InterfaceC3023e1 mo245o(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2928N(this, this, EnumC3026e4.LONG_VALUE, 0, interfaceC2827p);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: r */
    public final InterfaceC3023e1 mo244r(InterfaceC2828q interfaceC2828q) {
        return new C2928N(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n | EnumC3020d4.f1058t, interfaceC2828q);
    }

    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: s0 */
    public final InterfaceC3107s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3138x2.m362q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final InterfaceC3023e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2860B3.m577h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final InterfaceC3023e1 sorted() {
        return new C2920L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g
    public final Spliterator.InterfaceC2775c spliterator() {
        return m490L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final long sum() {
        return ((Long) m498w0(new C2943P2(EnumC3026e4.LONG_VALUE, new InterfaceC2825n() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2825n
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final C2811f summaryStatistics() {
        return (C2811f) mo249e0(new InterfaceC2835x() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new C2811f();
            }
        }, new InterfaceC2833v() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2833v
            public final void accept(Object obj, long j) {
                ((C2811f) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2811f) obj).m618b((C2811f) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: t */
    public final InterfaceC3023e1 mo243t(C3210g0 c3210g0) {
        Objects.requireNonNull(c3210g0);
        return new C2928N(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1058t, c3210g0);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public final long[] toArray() {
        return (long[]) AbstractC3138x2.m364o((InterfaceC3143y1) m497x0(new IntFunction() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo341e();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public InterfaceC3033g unordered() {
        return !m502B0() ? this : new C2887G0(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: y */
    public final InterfaceC3023e1 mo242y(InterfaceC2830s interfaceC2830s) {
        Objects.requireNonNull(interfaceC2830s);
        return new C2928N(this, this, EnumC3026e4.LONG_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, interfaceC2830s);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: y0 */
    final InterfaceC2852A1 mo473y0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3138x2.m371h(abstractC3144y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3073m3 interfaceC3073m3) {
        InterfaceC2827p c2977w0;
        Spliterator.InterfaceC2775c m490L0 = m490L0(spliterator);
        if (interfaceC3073m3 instanceof InterfaceC2827p) {
            c2977w0 = (InterfaceC2827p) interfaceC3073m3;
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(AbstractC3009c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2977w0 = new C2977W0(interfaceC3073m3);
        }
        while (!interfaceC3073m3.mo360o() && m490L0.mo186i(c2977w0)) {
        }
    }
}
