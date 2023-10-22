package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.C2810f;
import p033j$.util.C2835g;
import p033j$.util.C2837i;
import p033j$.util.InterfaceC2845p;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2804a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2828r;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2824n;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.InterfaceC2829s;
import p033j$.util.function.InterfaceC2832v;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3209g0;
import p033j$.wrappers.C3213i0;
import p033j$.wrappers.C3217k0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3016d1 extends AbstractC3008c implements InterfaceC3022e1 {
    public AbstractC3016d1(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC3016d1(AbstractC3008c abstractC3008c, int i) {
        super(abstractC3008c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2774c m490K0(Spliterator spliterator) {
        return m489L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2774c m489L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2774c) {
            return (Spliterator.InterfaceC2774c) spliterator;
        }
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(AbstractC3008c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: A0 */
    public final EnumC3025e4 mo474A0() {
        return EnumC3025e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: C */
    public final long mo256C(long j, InterfaceC2824n interfaceC2824n) {
        Objects.requireNonNull(interfaceC2824n);
        return ((Long) m497w0(new C2942P2(EnumC3025e4.LONG_VALUE, interfaceC2824n, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: J0 */
    final Spliterator mo473J0(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        return new C3109s4(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: K */
    public final boolean mo255K(C3209g0 c3209g0) {
        return ((Boolean) m497w0(AbstractC3082o1.m400w(c3209g0, EnumC3058k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: N */
    public final InterfaceC2965U mo254N(C3213i0 c3213i0) {
        Objects.requireNonNull(c3213i0);
        return new C2909K(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, c3213i0);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: P */
    public final Stream mo253P(InterfaceC2827q interfaceC2827q) {
        Objects.requireNonNull(interfaceC2827q);
        return new C2915L(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, interfaceC2827q);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: R */
    public final boolean mo252R(C3209g0 c3209g0) {
        return ((Boolean) m497w0(AbstractC3082o1.m400w(c3209g0, EnumC3058k1.NONE))).booleanValue();
    }

    /* renamed from: Y */
    public void mo251Y(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        m497w0(new C3069m0(interfaceC2826p, true));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final InterfaceC2965U asDoubleStream() {
        return new C2933O(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final C2835g average() {
        long[] jArr = (long[]) mo248e0(new InterfaceC2834x() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2832v() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2832v
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
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2835g.m613d(jArr[1] / jArr[0]) : C2835g.m616a();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final Stream boxed() {
        return mo253P(C2981X0.f993a);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final long count() {
        return ((AbstractC3016d1) mo241y(new InterfaceC2829s() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2829s
            /* renamed from: a */
            public InterfaceC2829s mo184a(InterfaceC2829s interfaceC2829s) {
                Objects.requireNonNull(interfaceC2829s);
                return new C2828r(this, interfaceC2829s, 0);
            }

            @Override // p033j$.util.function.InterfaceC2829s
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2829s
            /* renamed from: b */
            public InterfaceC2829s mo183b(InterfaceC2829s interfaceC2829s) {
                Objects.requireNonNull(interfaceC2829s);
                return new C2828r(this, interfaceC2829s, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo250d(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        m497w0(new C3069m0(interfaceC2826p, false));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: d0 */
    public final IntStream mo249d0(C3217k0 c3217k0) {
        Objects.requireNonNull(c3217k0);
        return new C2921M(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, c3217k0);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final InterfaceC3022e1 distinct() {
        return ((AbstractC3024e3) mo253P(C2981X0.f993a)).distinct().mo304f0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: e0 */
    public final Object mo248e0(InterfaceC2834x interfaceC2834x, InterfaceC2832v interfaceC2832v, BiConsumer biConsumer) {
        C2861C c2861c = new C2861C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2834x);
        Objects.requireNonNull(interfaceC2832v);
        return m497w0(new C3149z2(EnumC3025e4.LONG_VALUE, c2861c, interfaceC2832v, interfaceC2834x));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final C2837i findAny() {
        return (C2837i) m497w0(new C3015d0(false, EnumC3025e4.LONG_VALUE, C2837i.m608a(), C2985Y.f996a, C3003b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final C2837i findFirst() {
        return (C2837i) m497w0(new C3015d0(true, EnumC3025e4.LONG_VALUE, C2837i.m608a(), C2985Y.f996a, C3003b0.f1019a));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: g */
    public final C2837i mo247g(InterfaceC2824n interfaceC2824n) {
        Objects.requireNonNull(interfaceC2824n);
        return (C2837i) m497w0(new C2870D2(EnumC3025e4.LONG_VALUE, interfaceC2824n));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public final InterfaceC2845p iterator() {
        return AbstractC2769F.m677h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public Iterator iterator() {
        return AbstractC2769F.m677h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: k */
    public final boolean mo246k(C3209g0 c3209g0) {
        return ((Boolean) m497w0(AbstractC3082o1.m400w(c3209g0, EnumC3058k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final InterfaceC3022e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2859B3.m576h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final C2837i max() {
        return mo247g(new InterfaceC2824n() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2824n
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final C2837i min() {
        return mo247g(new InterfaceC2824n() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2824n
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: o */
    public final InterfaceC3022e1 mo244o(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2927N(this, this, EnumC3025e4.LONG_VALUE, 0, interfaceC2826p);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: r */
    public final InterfaceC3022e1 mo243r(InterfaceC2827q interfaceC2827q) {
        return new C2927N(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, interfaceC2827q);
    }

    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: s0 */
    public final InterfaceC3106s1 mo352s0(long j, IntFunction intFunction) {
        return AbstractC3137x2.m361q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final InterfaceC3022e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2859B3.m576h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final InterfaceC3022e1 sorted() {
        return new C2919L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g
    public final Spliterator.InterfaceC2774c spliterator() {
        return m489L0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final long sum() {
        return ((Long) m497w0(new C2942P2(EnumC3025e4.LONG_VALUE, new InterfaceC2824n() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2824n
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final C2810f summaryStatistics() {
        return (C2810f) mo248e0(new InterfaceC2834x() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new C2810f();
            }
        }, new InterfaceC2832v() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2832v
            public final void accept(Object obj, long j) {
                ((C2810f) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2810f) obj).m617b((C2810f) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: t */
    public final InterfaceC3022e1 mo242t(C3209g0 c3209g0) {
        Objects.requireNonNull(c3209g0);
        return new C2927N(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1058t, c3209g0);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public final long[] toArray() {
        return (long[]) AbstractC3137x2.m363o((InterfaceC3142y1) m496x0(new IntFunction() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo340e();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public InterfaceC3032g unordered() {
        return !m501B0() ? this : new C2886G0(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: y */
    public final InterfaceC3022e1 mo241y(InterfaceC2829s interfaceC2829s) {
        Objects.requireNonNull(interfaceC2829s);
        return new C2927N(this, this, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, interfaceC2829s);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: y0 */
    final InterfaceC2851A1 mo472y0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3137x2.m370h(abstractC3143y2, spliterator, z);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: z0 */
    final void mo471z0(Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3) {
        InterfaceC2826p c2976w0;
        Spliterator.InterfaceC2774c m489L0 = m489L0(spliterator);
        if (interfaceC3072m3 instanceof InterfaceC2826p) {
            c2976w0 = (InterfaceC2826p) interfaceC3072m3;
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(AbstractC3008c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c2976w0 = new C2976W0(interfaceC3072m3);
        }
        while (!interfaceC3072m3.mo359o() && m489L0.mo185i(c2976w0)) {
        }
    }
}
