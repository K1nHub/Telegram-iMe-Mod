package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.C2813e;
import p033j$.util.C2839g;
import p033j$.util.C2840h;
import p033j$.util.InterfaceC2846n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3192S;
import p033j$.wrappers.C3194U;
import p033j$.wrappers.C3198Y;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2920L0 extends AbstractC3012c implements IntStream {
    public AbstractC2920L0(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2920L0(AbstractC3012c abstractC3012c, int i) {
        super(abstractC3012c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2777b m561K0(Spliterator spliterator) {
        return m560L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2777b m560L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2777b) {
            return (Spliterator.InterfaceC2777b) spliterator;
        }
        if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(AbstractC3012c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: A0 */
    public final EnumC3029e4 mo475A0() {
        return EnumC3029e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: B */
    public final boolean mo331B(C3192S c3192s) {
        return ((Boolean) m498w0(AbstractC3086o1.m402v(c3192s, EnumC3062k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public final boolean mo330E(C3192S c3192s) {
        return ((Boolean) m498w0(AbstractC3086o1.m402v(c3192s, EnumC3062k1.ANY))).booleanValue();
    }

    /* renamed from: H */
    public void mo329H(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        m498w0(new C3067l0(interfaceC2826l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public final Stream mo328I(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2919L(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        return new C3101q4(abstractC3147y2, interfaceC2838x, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public final int mo327M(int i, InterfaceC2824j interfaceC2824j) {
        Objects.requireNonNull(interfaceC2824j);
        return ((Integer) m498w0(new C2922L2(EnumC3029e4.INT_VALUE, interfaceC2824j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public final IntStream mo326O(IntFunction intFunction) {
        return new C2925M(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, intFunction);
    }

    /* renamed from: T */
    public void mo325T(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        m498w0(new C3067l0(interfaceC2826l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public final C2840h mo324Z(InterfaceC2824j interfaceC2824j) {
        Objects.requireNonNull(interfaceC2824j);
        return (C2840h) m498w0(new C2874D2(EnumC3029e4.INT_VALUE, interfaceC2824j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC2969U asDoubleStream() {
        return new C2937O(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3026e1 asLongStream() {
        return new C2890G0(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2839g average() {
        long[] jArr = (long[]) mo320j0(new InterfaceC2838x() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2835u() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2835u
            public final void accept(Object obj, int i) {
                long[] jArr2 = (long[]) obj;
                jArr2[0] = jArr2[0] + 1;
                jArr2[1] = jArr2[1] + i;
            }
        }, new BiConsumer() { // from class: j$.util.stream.x0
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

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public final IntStream mo323b0(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2925M(this, this, EnumC3029e4.INT_VALUE, 0, interfaceC2826l);
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo328I(C2866C0.f839a);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3020d1) mo322f(new InterfaceC2827m() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2827m
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3028e3) mo328I(C2866C0.f839a)).distinct().mo302l(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3026e1 mo322f(InterfaceC2827m interfaceC2827m) {
        Objects.requireNonNull(interfaceC2827m);
        return new C2931N(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, interfaceC2827m);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2840h findAny() {
        return (C2840h) m498w0(new C3019d0(false, EnumC3029e4.INT_VALUE, C2840h.m613a(), C2984X.f992a, C3001a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2840h findFirst() {
        return (C2840h) m498w0(new C3019d0(true, EnumC3029e4.INT_VALUE, C2840h.m613a(), C2984X.f992a, C3001a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo321h(C3192S c3192s) {
        Objects.requireNonNull(c3192s);
        return new C2925M(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1058t, c3192s);
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public final InterfaceC2846n.InterfaceC2847a iterator() {
        return AbstractC2773F.m679g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public Iterator iterator() {
        return AbstractC2773F.m679g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public final Object mo320j0(InterfaceC2838x interfaceC2838x, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer) {
        C2865C c2865c = new C2865C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2838x);
        Objects.requireNonNull(interfaceC2835u);
        return m498w0(new C3153z2(EnumC3029e4.INT_VALUE, c2865c, interfaceC2835u, interfaceC2838x));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2863B3.m578g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2840h max() {
        return mo324Z(new InterfaceC2824j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2824j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2840h min() {
        return mo324Z(new InterfaceC2824j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2824j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public final IntStream mo319p(C3198Y c3198y) {
        Objects.requireNonNull(c3198y);
        return new C2925M(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, c3198y);
    }

    @Override // p033j$.util.stream.AbstractC3147y2
    /* renamed from: s0 */
    public final InterfaceC3110s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3141x2.m363p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2863B3.m578g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2917K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g
    public final Spliterator.InterfaceC2777b spliterator() {
        return m560L0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m498w0(new C2922L2(EnumC3029e4.INT_VALUE, new InterfaceC2824j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2824j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2813e summaryStatistics() {
        return (C2813e) mo320j0(new InterfaceC2838x() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new C2813e();
            }
        }, new InterfaceC2835u() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2835u
            public final void accept(Object obj, int i) {
                ((C2813e) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2813e) obj).m619b((C2813e) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3141x2.m365n((InterfaceC3134w1) m497x0(new IntFunction() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo341e();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public final boolean mo318u(C3192S c3192s) {
        return ((Boolean) m498w0(AbstractC3086o1.m402v(c3192s, EnumC3062k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public InterfaceC3036g unordered() {
        return !m502B0() ? this : new C2896H0(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: y0 */
    final InterfaceC2855A1 mo473y0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3141x2.m372g(abstractC3147y2, spliterator, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public final InterfaceC2969U mo317z(C3194U c3194u) {
        Objects.requireNonNull(c3194u);
        return new C2913K(this, this, EnumC3029e4.INT_VALUE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, c3194u);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3076m3 interfaceC3076m3) {
        InterfaceC2826l c2860b0;
        Spliterator.InterfaceC2777b m560L0 = m560L0(spliterator);
        if (interfaceC3076m3 instanceof InterfaceC2826l) {
            c2860b0 = (InterfaceC2826l) interfaceC3076m3;
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(AbstractC3012c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2860b0 = new C2860B0(interfaceC3076m3);
        }
        while (!interfaceC3076m3.mo360o() && m560L0.mo192g(c2860b0)) {
        }
    }
}
