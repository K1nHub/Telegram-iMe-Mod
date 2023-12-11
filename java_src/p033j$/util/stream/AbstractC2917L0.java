package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2770F;
import p033j$.util.C2810e;
import p033j$.util.C2836g;
import p033j$.util.C2837h;
import p033j$.util.InterfaceC2843n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821j;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2824m;
import p033j$.util.function.InterfaceC2832u;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3189S;
import p033j$.wrappers.C3191U;
import p033j$.wrappers.C3195Y;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2917L0 extends AbstractC3009c implements IntStream {
    public AbstractC2917L0(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2917L0(AbstractC3009c abstractC3009c, int i) {
        super(abstractC3009c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2774b m561K0(Spliterator spliterator) {
        return m560L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2774b m560L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2774b) {
            return (Spliterator.InterfaceC2774b) spliterator;
        }
        if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(AbstractC3009c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: A0 */
    public final EnumC3026e4 mo475A0() {
        return EnumC3026e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: B */
    public final boolean mo331B(C3189S c3189s) {
        return ((Boolean) m498w0(AbstractC3083o1.m402v(c3189s, EnumC3059k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public final boolean mo330E(C3189S c3189s) {
        return ((Boolean) m498w0(AbstractC3083o1.m402v(c3189s, EnumC3059k1.ANY))).booleanValue();
    }

    /* renamed from: H */
    public void mo329H(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        m498w0(new C3064l0(interfaceC2823l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public final Stream mo328I(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2916L(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z) {
        return new C3098q4(abstractC3144y2, interfaceC2835x, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public final int mo327M(int i, InterfaceC2821j interfaceC2821j) {
        Objects.requireNonNull(interfaceC2821j);
        return ((Integer) m498w0(new C2919L2(EnumC3026e4.INT_VALUE, interfaceC2821j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public final IntStream mo326O(IntFunction intFunction) {
        return new C2922M(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n | EnumC3020d4.f1058t, intFunction);
    }

    /* renamed from: T */
    public void mo325T(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        m498w0(new C3064l0(interfaceC2823l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public final C2837h mo324Z(InterfaceC2821j interfaceC2821j) {
        Objects.requireNonNull(interfaceC2821j);
        return (C2837h) m498w0(new C2871D2(EnumC3026e4.INT_VALUE, interfaceC2821j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC2966U asDoubleStream() {
        return new C2934O(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3023e1 asLongStream() {
        return new C2887G0(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2836g average() {
        long[] jArr = (long[]) mo320j0(new InterfaceC2835x() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2832u() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2832u
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
        return jArr[0] > 0 ? C2836g.m614d(jArr[1] / jArr[0]) : C2836g.m617a();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public final IntStream mo323b0(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2922M(this, this, EnumC3026e4.INT_VALUE, 0, interfaceC2823l);
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo328I(C2863C0.f839a);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3017d1) mo322f(new InterfaceC2824m() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2824m
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3025e3) mo328I(C2863C0.f839a)).distinct().mo302l(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3023e1 mo322f(InterfaceC2824m interfaceC2824m) {
        Objects.requireNonNull(interfaceC2824m);
        return new C2928N(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, interfaceC2824m);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2837h findAny() {
        return (C2837h) m498w0(new C3016d0(false, EnumC3026e4.INT_VALUE, C2837h.m613a(), C2981X.f992a, C2998a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2837h findFirst() {
        return (C2837h) m498w0(new C3016d0(true, EnumC3026e4.INT_VALUE, C2837h.m613a(), C2981X.f992a, C2998a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo321h(C3189S c3189s) {
        Objects.requireNonNull(c3189s);
        return new C2922M(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1058t, c3189s);
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public final InterfaceC2843n.InterfaceC2844a iterator() {
        return AbstractC2770F.m679g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public Iterator iterator() {
        return AbstractC2770F.m679g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public final Object mo320j0(InterfaceC2835x interfaceC2835x, InterfaceC2832u interfaceC2832u, BiConsumer biConsumer) {
        C2862C c2862c = new C2862C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2835x);
        Objects.requireNonNull(interfaceC2832u);
        return m498w0(new C3150z2(EnumC3026e4.INT_VALUE, c2862c, interfaceC2832u, interfaceC2835x));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2860B3.m578g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2837h max() {
        return mo324Z(new InterfaceC2821j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2821j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2837h min() {
        return mo324Z(new InterfaceC2821j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2821j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public final IntStream mo319p(C3195Y c3195y) {
        Objects.requireNonNull(c3195y);
        return new C2922M(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, c3195y);
    }

    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: s0 */
    public final InterfaceC3107s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3138x2.m363p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2860B3.m578g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2914K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g
    public final Spliterator.InterfaceC2774b spliterator() {
        return m560L0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m498w0(new C2919L2(EnumC3026e4.INT_VALUE, new InterfaceC2821j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2821j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2810e summaryStatistics() {
        return (C2810e) mo320j0(new InterfaceC2835x() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new C2810e();
            }
        }, new InterfaceC2832u() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2832u
            public final void accept(Object obj, int i) {
                ((C2810e) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2810e) obj).m619b((C2810e) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3138x2.m365n((InterfaceC3131w1) m497x0(new IntFunction() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo341e();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public final boolean mo318u(C3189S c3189s) {
        return ((Boolean) m498w0(AbstractC3083o1.m402v(c3189s, EnumC3059k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public InterfaceC3033g unordered() {
        return !m502B0() ? this : new C2893H0(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: y0 */
    final InterfaceC2852A1 mo473y0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3138x2.m372g(abstractC3144y2, spliterator, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public final InterfaceC2966U mo317z(C3191U c3191u) {
        Objects.requireNonNull(c3191u);
        return new C2910K(this, this, EnumC3026e4.INT_VALUE, EnumC3020d4.f1054p | EnumC3020d4.f1052n, c3191u);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3073m3 interfaceC3073m3) {
        InterfaceC2823l c2857b0;
        Spliterator.InterfaceC2774b m560L0 = m560L0(spliterator);
        if (interfaceC3073m3 instanceof InterfaceC2823l) {
            c2857b0 = (InterfaceC2823l) interfaceC3073m3;
        } else if (AbstractC2951Q4.f963a) {
            AbstractC2951Q4.m546a(AbstractC3009c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2857b0 = new C2857B0(interfaceC3073m3);
        }
        while (!interfaceC3073m3.mo360o() && m560L0.mo192g(c2857b0)) {
        }
    }
}
