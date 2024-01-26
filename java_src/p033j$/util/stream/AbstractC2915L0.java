package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.C2808e;
import p033j$.util.C2834g;
import p033j$.util.C2835h;
import p033j$.util.InterfaceC2841n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2819j;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2822m;
import p033j$.util.function.InterfaceC2830u;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3187S;
import p033j$.wrappers.C3189U;
import p033j$.wrappers.C3193Y;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2915L0 extends AbstractC3007c implements IntStream {
    public AbstractC2915L0(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2915L0(AbstractC3007c abstractC3007c, int i) {
        super(abstractC3007c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2772b m564K0(Spliterator spliterator) {
        return m563L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2772b m563L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2772b) {
            return (Spliterator.InterfaceC2772b) spliterator;
        }
        if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(AbstractC3007c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: A0 */
    public final EnumC3024e4 mo478A0() {
        return EnumC3024e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: B */
    public final boolean mo334B(C3187S c3187s) {
        return ((Boolean) m501w0(AbstractC3081o1.m405v(c3187s, EnumC3057k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public final boolean mo333E(C3187S c3187s) {
        return ((Boolean) m501w0(AbstractC3081o1.m405v(c3187s, EnumC3057k1.ANY))).booleanValue();
    }

    /* renamed from: H */
    public void mo332H(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        m501w0(new C3062l0(interfaceC2821l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public final Stream mo331I(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2914L(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: J0 */
    final Spliterator mo477J0(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        return new C3096q4(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public final int mo330M(int i, InterfaceC2819j interfaceC2819j) {
        Objects.requireNonNull(interfaceC2819j);
        return ((Integer) m501w0(new C2917L2(EnumC3024e4.INT_VALUE, interfaceC2819j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public final IntStream mo329O(IntFunction intFunction) {
        return new C2920M(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, intFunction);
    }

    /* renamed from: T */
    public void mo328T(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        m501w0(new C3062l0(interfaceC2821l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public final C2835h mo327Z(InterfaceC2819j interfaceC2819j) {
        Objects.requireNonNull(interfaceC2819j);
        return (C2835h) m501w0(new C2869D2(EnumC3024e4.INT_VALUE, interfaceC2819j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC2964U asDoubleStream() {
        return new C2932O(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3021e1 asLongStream() {
        return new C2885G0(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2834g average() {
        long[] jArr = (long[]) mo323j0(new InterfaceC2833x() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2830u() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2830u
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
        return jArr[0] > 0 ? C2834g.m617d(jArr[1] / jArr[0]) : C2834g.m620a();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public final IntStream mo326b0(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2920M(this, this, EnumC3024e4.INT_VALUE, 0, interfaceC2821l);
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo331I(C2861C0.f839a);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3015d1) mo325f(new InterfaceC2822m() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2822m
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3023e3) mo331I(C2861C0.f839a)).distinct().mo305l(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3021e1 mo325f(InterfaceC2822m interfaceC2822m) {
        Objects.requireNonNull(interfaceC2822m);
        return new C2926N(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, interfaceC2822m);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2835h findAny() {
        return (C2835h) m501w0(new C3014d0(false, EnumC3024e4.INT_VALUE, C2835h.m616a(), C2979X.f992a, C2996a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2835h findFirst() {
        return (C2835h) m501w0(new C3014d0(true, EnumC3024e4.INT_VALUE, C2835h.m616a(), C2979X.f992a, C2996a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo324h(C3187S c3187s) {
        Objects.requireNonNull(c3187s);
        return new C2920M(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1058t, c3187s);
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public final InterfaceC2841n.InterfaceC2842a iterator() {
        return AbstractC2768F.m682g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public Iterator iterator() {
        return AbstractC2768F.m682g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public final Object mo323j0(InterfaceC2833x interfaceC2833x, InterfaceC2830u interfaceC2830u, BiConsumer biConsumer) {
        C2860C c2860c = new C2860C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2833x);
        Objects.requireNonNull(interfaceC2830u);
        return m501w0(new C3148z2(EnumC3024e4.INT_VALUE, c2860c, interfaceC2830u, interfaceC2833x));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2858B3.m581g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2835h max() {
        return mo327Z(new InterfaceC2819j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2819j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2835h min() {
        return mo327Z(new InterfaceC2819j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2819j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public final IntStream mo322p(C3193Y c3193y) {
        Objects.requireNonNull(c3193y);
        return new C2920M(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, c3193y);
    }

    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: s0 */
    public final InterfaceC3105s1 mo356s0(long j, IntFunction intFunction) {
        return AbstractC3136x2.m366p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2858B3.m581g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2912K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g
    public final Spliterator.InterfaceC2772b spliterator() {
        return m563L0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m501w0(new C2917L2(EnumC3024e4.INT_VALUE, new InterfaceC2819j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2819j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2808e summaryStatistics() {
        return (C2808e) mo323j0(new InterfaceC2833x() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new C2808e();
            }
        }, new InterfaceC2830u() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2830u
            public final void accept(Object obj, int i) {
                ((C2808e) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2808e) obj).m622b((C2808e) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3136x2.m368n((InterfaceC3129w1) m500x0(new IntFunction() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo344e();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public final boolean mo321u(C3187S c3187s) {
        return ((Boolean) m501w0(AbstractC3081o1.m405v(c3187s, EnumC3057k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public InterfaceC3031g unordered() {
        return !m505B0() ? this : new C2891H0(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: y0 */
    final InterfaceC2850A1 mo476y0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3136x2.m375g(abstractC3142y2, spliterator, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public final InterfaceC2964U mo320z(C3189U c3189u) {
        Objects.requireNonNull(c3189u);
        return new C2908K(this, this, EnumC3024e4.INT_VALUE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, c3189u);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: z0 */
    final void mo475z0(Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3) {
        InterfaceC2821l c2855b0;
        Spliterator.InterfaceC2772b m563L0 = m563L0(spliterator);
        if (interfaceC3071m3 instanceof InterfaceC2821l) {
            c2855b0 = (InterfaceC2821l) interfaceC3071m3;
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(AbstractC3007c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2855b0 = new C2855B0(interfaceC3071m3);
        }
        while (!interfaceC3071m3.mo363o() && m563L0.mo195g(c2855b0)) {
        }
    }
}
