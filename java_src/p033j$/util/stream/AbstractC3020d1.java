package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.C2814f;
import p033j$.util.C2839g;
import p033j$.util.C2841i;
import p033j$.util.InterfaceC2849p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2832r;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2833s;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3213g0;
import p033j$.wrappers.C3217i0;
import p033j$.wrappers.C3221k0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3020d1 extends AbstractC3012c implements InterfaceC3026e1 {
    public AbstractC3020d1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC3020d1(AbstractC3012c abstractC3012c, int i) {
        super(abstractC3012c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2778c m491K0(Spliterator spliterator) {
        return m490L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2778c m490L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2778c) {
            return (Spliterator.InterfaceC2778c) spliterator;
        }
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(AbstractC3012c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: A0 */
    public final EnumC3029e4 mo475A0() {
        return EnumC3029e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: C */
    public final long mo257C(long j, InterfaceC2828n interfaceC2828n) {
        Objects.requireNonNull(interfaceC2828n);
        return ((Long) m498w0(new C2946P2(EnumC3029e4.LONG_VALUE, interfaceC2828n, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        return new C3113s4(abstractC3147y2, interfaceC2838x, z);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: K */
    public final boolean mo256K(C3213g0 c3213g0) {
        return ((Boolean) m498w0(AbstractC3086o1.m401w(c3213g0, EnumC3062k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: N */
    public final InterfaceC2969U mo255N(C3217i0 c3217i0) {
        Objects.requireNonNull(c3217i0);
        return new C2913K(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, c3217i0);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: P */
    public final Stream mo254P(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2919L(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, interfaceC2831q);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: R */
    public final boolean mo253R(C3213g0 c3213g0) {
        return ((Boolean) m498w0(AbstractC3086o1.m401w(c3213g0, EnumC3062k1.NONE))).booleanValue();
    }

    /* renamed from: Y */
    public void mo252Y(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        m498w0(new C3073m0(interfaceC2830p, true));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final InterfaceC2969U asDoubleStream() {
        return new C2937O(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final C2839g average() {
        long[] jArr = (long[]) mo249e0(new InterfaceC2838x() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2836v() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2836v
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
        return jArr[0] > 0 ? C2839g.m614d(jArr[1] / jArr[0]) : C2839g.m617a();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final Stream boxed() {
        return mo254P(C2985X0.f993a);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final long count() {
        return ((AbstractC3020d1) mo242y(new InterfaceC2833s() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2833s
            /* renamed from: a */
            public InterfaceC2833s mo185a(InterfaceC2833s interfaceC2833s) {
                Objects.requireNonNull(interfaceC2833s);
                return new C2832r(this, interfaceC2833s, 0);
            }

            @Override // p033j$.util.function.InterfaceC2833s
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2833s
            /* renamed from: b */
            public InterfaceC2833s mo184b(InterfaceC2833s interfaceC2833s) {
                Objects.requireNonNull(interfaceC2833s);
                return new C2832r(this, interfaceC2833s, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo251d(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        m498w0(new C3073m0(interfaceC2830p, false));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: d0 */
    public final IntStream mo250d0(C3221k0 c3221k0) {
        Objects.requireNonNull(c3221k0);
        return new C2925M(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, c3221k0);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final InterfaceC3026e1 distinct() {
        return ((AbstractC3028e3) mo254P(C2985X0.f993a)).distinct().mo305f0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: e0 */
    public final Object mo249e0(InterfaceC2838x interfaceC2838x, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer) {
        C2865C c2865c = new C2865C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2838x);
        Objects.requireNonNull(interfaceC2836v);
        return m498w0(new C3153z2(EnumC3029e4.LONG_VALUE, c2865c, interfaceC2836v, interfaceC2838x));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final C2841i findAny() {
        return (C2841i) m498w0(new C3019d0(false, EnumC3029e4.LONG_VALUE, C2841i.m609a(), C2989Y.f996a, C3007b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final C2841i findFirst() {
        return (C2841i) m498w0(new C3019d0(true, EnumC3029e4.LONG_VALUE, C2841i.m609a(), C2989Y.f996a, C3007b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: g */
    public final C2841i mo248g(InterfaceC2828n interfaceC2828n) {
        Objects.requireNonNull(interfaceC2828n);
        return (C2841i) m498w0(new C2874D2(EnumC3029e4.LONG_VALUE, interfaceC2828n));
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public final InterfaceC2849p iterator() {
        return AbstractC2773F.m678h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public Iterator iterator() {
        return AbstractC2773F.m678h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: k */
    public final boolean mo247k(C3213g0 c3213g0) {
        return ((Boolean) m498w0(AbstractC3086o1.m401w(c3213g0, EnumC3062k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final InterfaceC3026e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2863B3.m577h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final C2841i max() {
        return mo248g(new InterfaceC2828n() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2828n
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final C2841i min() {
        return mo248g(new InterfaceC2828n() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2828n
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: o */
    public final InterfaceC3026e1 mo245o(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2931N(this, this, EnumC3029e4.LONG_VALUE, 0, interfaceC2830p);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: r */
    public final InterfaceC3026e1 mo244r(InterfaceC2831q interfaceC2831q) {
        return new C2931N(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, interfaceC2831q);
    }

    @Override // p033j$.util.stream.AbstractC3147y2
    /* renamed from: s0 */
    public final InterfaceC3110s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3141x2.m362q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final InterfaceC3026e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2863B3.m577h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final InterfaceC3026e1 sorted() {
        return new C2923L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g
    public final Spliterator.InterfaceC2778c spliterator() {
        return m490L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final long sum() {
        return ((Long) m498w0(new C2946P2(EnumC3029e4.LONG_VALUE, new InterfaceC2828n() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2828n
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final C2814f summaryStatistics() {
        return (C2814f) mo249e0(new InterfaceC2838x() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new C2814f();
            }
        }, new InterfaceC2836v() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2836v
            public final void accept(Object obj, long j) {
                ((C2814f) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2814f) obj).m618b((C2814f) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: t */
    public final InterfaceC3026e1 mo243t(C3213g0 c3213g0) {
        Objects.requireNonNull(c3213g0);
        return new C2931N(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1058t, c3213g0);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public final long[] toArray() {
        return (long[]) AbstractC3141x2.m364o((InterfaceC3146y1) m497x0(new IntFunction() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo341e();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public InterfaceC3036g unordered() {
        return !m502B0() ? this : new C2890G0(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: y */
    public final InterfaceC3026e1 mo242y(InterfaceC2833s interfaceC2833s) {
        Objects.requireNonNull(interfaceC2833s);
        return new C2931N(this, this, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, interfaceC2833s);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: y0 */
    final InterfaceC2855A1 mo473y0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3141x2.m371h(abstractC3147y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3076m3 interfaceC3076m3) {
        InterfaceC2830p c2980w0;
        Spliterator.InterfaceC2778c m490L0 = m490L0(spliterator);
        if (interfaceC3076m3 instanceof InterfaceC2830p) {
            c2980w0 = (InterfaceC2830p) interfaceC3076m3;
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(AbstractC3012c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2980w0 = new C2980W0(interfaceC3076m3);
        }
        while (!interfaceC3076m3.mo360o() && m490L0.mo186i(c2980w0)) {
        }
    }
}
