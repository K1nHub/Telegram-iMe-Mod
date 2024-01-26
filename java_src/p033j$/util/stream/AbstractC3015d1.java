package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.C2809f;
import p033j$.util.C2834g;
import p033j$.util.C2836i;
import p033j$.util.InterfaceC2844p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2827r;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2823n;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.InterfaceC2828s;
import p033j$.util.function.InterfaceC2831v;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3208g0;
import p033j$.wrappers.C3212i0;
import p033j$.wrappers.C3216k0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3015d1 extends AbstractC3007c implements InterfaceC3021e1 {
    public AbstractC3015d1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC3015d1(AbstractC3007c abstractC3007c, int i) {
        super(abstractC3007c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2773c m494K0(Spliterator spliterator) {
        return m493L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2773c m493L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2773c) {
            return (Spliterator.InterfaceC2773c) spliterator;
        }
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(AbstractC3007c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: A0 */
    public final EnumC3024e4 mo478A0() {
        return EnumC3024e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: C */
    public final long mo260C(long j, InterfaceC2823n interfaceC2823n) {
        Objects.requireNonNull(interfaceC2823n);
        return ((Long) m501w0(new C2941P2(EnumC3024e4.LONG_VALUE, interfaceC2823n, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: J0 */
    final Spliterator mo477J0(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        return new C3108s4(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: K */
    public final boolean mo259K(C3208g0 c3208g0) {
        return ((Boolean) m501w0(AbstractC3081o1.m404w(c3208g0, EnumC3057k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: N */
    public final InterfaceC2964U mo258N(C3212i0 c3212i0) {
        Objects.requireNonNull(c3212i0);
        return new C2908K(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, c3212i0);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: P */
    public final Stream mo257P(InterfaceC2826q interfaceC2826q) {
        Objects.requireNonNull(interfaceC2826q);
        return new C2914L(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, interfaceC2826q);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: R */
    public final boolean mo256R(C3208g0 c3208g0) {
        return ((Boolean) m501w0(AbstractC3081o1.m404w(c3208g0, EnumC3057k1.NONE))).booleanValue();
    }

    /* renamed from: Y */
    public void mo255Y(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        m501w0(new C3068m0(interfaceC2825p, true));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final InterfaceC2964U asDoubleStream() {
        return new C2932O(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final C2834g average() {
        long[] jArr = (long[]) mo252e0(new InterfaceC2833x() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2831v() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2831v
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
        return jArr[0] > 0 ? C2834g.m617d(jArr[1] / jArr[0]) : C2834g.m620a();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final Stream boxed() {
        return mo257P(C2980X0.f993a);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final long count() {
        return ((AbstractC3015d1) mo245y(new InterfaceC2828s() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2828s
            /* renamed from: a */
            public InterfaceC2828s mo188a(InterfaceC2828s interfaceC2828s) {
                Objects.requireNonNull(interfaceC2828s);
                return new C2827r(this, interfaceC2828s, 0);
            }

            @Override // p033j$.util.function.InterfaceC2828s
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2828s
            /* renamed from: b */
            public InterfaceC2828s mo187b(InterfaceC2828s interfaceC2828s) {
                Objects.requireNonNull(interfaceC2828s);
                return new C2827r(this, interfaceC2828s, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo254d(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        m501w0(new C3068m0(interfaceC2825p, false));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: d0 */
    public final IntStream mo253d0(C3216k0 c3216k0) {
        Objects.requireNonNull(c3216k0);
        return new C2920M(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, c3216k0);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final InterfaceC3021e1 distinct() {
        return ((AbstractC3023e3) mo257P(C2980X0.f993a)).distinct().mo308f0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: e0 */
    public final Object mo252e0(InterfaceC2833x interfaceC2833x, InterfaceC2831v interfaceC2831v, BiConsumer biConsumer) {
        C2860C c2860c = new C2860C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2833x);
        Objects.requireNonNull(interfaceC2831v);
        return m501w0(new C3148z2(EnumC3024e4.LONG_VALUE, c2860c, interfaceC2831v, interfaceC2833x));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final C2836i findAny() {
        return (C2836i) m501w0(new C3014d0(false, EnumC3024e4.LONG_VALUE, C2836i.m612a(), C2984Y.f996a, C3002b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final C2836i findFirst() {
        return (C2836i) m501w0(new C3014d0(true, EnumC3024e4.LONG_VALUE, C2836i.m612a(), C2984Y.f996a, C3002b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: g */
    public final C2836i mo251g(InterfaceC2823n interfaceC2823n) {
        Objects.requireNonNull(interfaceC2823n);
        return (C2836i) m501w0(new C2869D2(EnumC3024e4.LONG_VALUE, interfaceC2823n));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public final InterfaceC2844p iterator() {
        return AbstractC2768F.m681h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public Iterator iterator() {
        return AbstractC2768F.m681h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: k */
    public final boolean mo250k(C3208g0 c3208g0) {
        return ((Boolean) m501w0(AbstractC3081o1.m404w(c3208g0, EnumC3057k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final InterfaceC3021e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2858B3.m580h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final C2836i max() {
        return mo251g(new InterfaceC2823n() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2823n
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final C2836i min() {
        return mo251g(new InterfaceC2823n() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2823n
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: o */
    public final InterfaceC3021e1 mo248o(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2926N(this, this, EnumC3024e4.LONG_VALUE, 0, interfaceC2825p);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: r */
    public final InterfaceC3021e1 mo247r(InterfaceC2826q interfaceC2826q) {
        return new C2926N(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, interfaceC2826q);
    }

    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: s0 */
    public final InterfaceC3105s1 mo356s0(long j, IntFunction intFunction) {
        return AbstractC3136x2.m365q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final InterfaceC3021e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2858B3.m580h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final InterfaceC3021e1 sorted() {
        return new C2918L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g
    public final Spliterator.InterfaceC2773c spliterator() {
        return m493L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final long sum() {
        return ((Long) m501w0(new C2941P2(EnumC3024e4.LONG_VALUE, new InterfaceC2823n() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2823n
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final C2809f summaryStatistics() {
        return (C2809f) mo252e0(new InterfaceC2833x() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new C2809f();
            }
        }, new InterfaceC2831v() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2831v
            public final void accept(Object obj, long j) {
                ((C2809f) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2809f) obj).m621b((C2809f) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: t */
    public final InterfaceC3021e1 mo246t(C3208g0 c3208g0) {
        Objects.requireNonNull(c3208g0);
        return new C2926N(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1058t, c3208g0);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public final long[] toArray() {
        return (long[]) AbstractC3136x2.m367o((InterfaceC3141y1) m500x0(new IntFunction() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo344e();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public InterfaceC3031g unordered() {
        return !m505B0() ? this : new C2885G0(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: y */
    public final InterfaceC3021e1 mo245y(InterfaceC2828s interfaceC2828s) {
        Objects.requireNonNull(interfaceC2828s);
        return new C2926N(this, this, EnumC3024e4.LONG_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, interfaceC2828s);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: y0 */
    final InterfaceC2850A1 mo476y0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3136x2.m374h(abstractC3142y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: z0 */
    final void mo475z0(Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3) {
        InterfaceC2825p c2975w0;
        Spliterator.InterfaceC2773c m493L0 = m493L0(spliterator);
        if (interfaceC3071m3 instanceof InterfaceC2825p) {
            c2975w0 = (InterfaceC2825p) interfaceC3071m3;
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(AbstractC3007c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2975w0 = new C2975W0(interfaceC3071m3);
        }
        while (!interfaceC3071m3.mo363o() && m493L0.mo189i(c2975w0)) {
        }
    }
}
