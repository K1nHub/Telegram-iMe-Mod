package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.C2809e;
import p033j$.util.C2835g;
import p033j$.util.C2836h;
import p033j$.util.InterfaceC2842n;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2804a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2820j;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2823m;
import p033j$.util.function.InterfaceC2831u;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3188S;
import p033j$.wrappers.C3190U;
import p033j$.wrappers.C3194Y;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2916L0 extends AbstractC3008c implements IntStream {
    public AbstractC2916L0(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    public AbstractC2916L0(AbstractC3008c abstractC3008c, int i) {
        super(abstractC3008c, i);
    }

    /* renamed from: K0 */
    public static /* synthetic */ Spliterator.InterfaceC2773b m560K0(Spliterator spliterator) {
        return m559L0(spliterator);
    }

    /* renamed from: L0 */
    public static Spliterator.InterfaceC2773b m559L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.InterfaceC2773b) {
            return (Spliterator.InterfaceC2773b) spliterator;
        }
        if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(AbstractC3008c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: A0 */
    public final EnumC3025e4 mo474A0() {
        return EnumC3025e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: B */
    public final boolean mo330B(C3188S c3188s) {
        return ((Boolean) m497w0(AbstractC3082o1.m401v(c3188s, EnumC3058k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public final boolean mo329E(C3188S c3188s) {
        return ((Boolean) m497w0(AbstractC3082o1.m401v(c3188s, EnumC3058k1.ANY))).booleanValue();
    }

    /* renamed from: H */
    public void mo328H(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        m497w0(new C3063l0(interfaceC2822l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public final Stream mo327I(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2915L(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: J0 */
    final Spliterator mo473J0(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        return new C3097q4(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public final int mo326M(int i, InterfaceC2820j interfaceC2820j) {
        Objects.requireNonNull(interfaceC2820j);
        return ((Integer) m497w0(new C2918L2(EnumC3025e4.INT_VALUE, interfaceC2820j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public final IntStream mo325O(IntFunction intFunction) {
        return new C2921M(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, intFunction);
    }

    /* renamed from: T */
    public void mo324T(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        m497w0(new C3063l0(interfaceC2822l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public final C2836h mo323Z(InterfaceC2820j interfaceC2820j) {
        Objects.requireNonNull(interfaceC2820j);
        return (C2836h) m497w0(new C2870D2(EnumC3025e4.INT_VALUE, interfaceC2820j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC2965U asDoubleStream() {
        return new C2933O(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3022e1 asLongStream() {
        return new C2886G0(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2835g average() {
        long[] jArr = (long[]) mo319j0(new InterfaceC2834x() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2831u() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2831u
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
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2835g.m613d(jArr[1] / jArr[0]) : C2835g.m616a();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public final IntStream mo322b0(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2921M(this, this, EnumC3025e4.INT_VALUE, 0, interfaceC2822l);
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo327I(C2862C0.f839a);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3016d1) mo321f(new InterfaceC2823m() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2823m
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3024e3) mo327I(C2862C0.f839a)).distinct().mo301l(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3022e1 mo321f(InterfaceC2823m interfaceC2823m) {
        Objects.requireNonNull(interfaceC2823m);
        return new C2927N(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, interfaceC2823m);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2836h findAny() {
        return (C2836h) m497w0(new C3015d0(false, EnumC3025e4.INT_VALUE, C2836h.m612a(), C2980X.f992a, C2997a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2836h findFirst() {
        return (C2836h) m497w0(new C3015d0(true, EnumC3025e4.INT_VALUE, C2836h.m612a(), C2980X.f992a, C2997a0.f1012a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo320h(C3188S c3188s) {
        Objects.requireNonNull(c3188s);
        return new C2921M(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1058t, c3188s);
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public final InterfaceC2842n.InterfaceC2843a iterator() {
        return AbstractC2769F.m678g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public Iterator iterator() {
        return AbstractC2769F.m678g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public final Object mo319j0(InterfaceC2834x interfaceC2834x, InterfaceC2831u interfaceC2831u, BiConsumer biConsumer) {
        C2861C c2861c = new C2861C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2834x);
        Objects.requireNonNull(interfaceC2831u);
        return m497w0(new C3149z2(EnumC3025e4.INT_VALUE, c2861c, interfaceC2831u, interfaceC2834x));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2859B3.m577g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2836h max() {
        return mo323Z(new InterfaceC2820j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2820j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2836h min() {
        return mo323Z(new InterfaceC2820j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2820j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public final IntStream mo318p(C3194Y c3194y) {
        Objects.requireNonNull(c3194y);
        return new C2921M(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, c3194y);
    }

    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: s0 */
    public final InterfaceC3106s1 mo352s0(long j, IntFunction intFunction) {
        return AbstractC3137x2.m362p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2859B3.m577g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2913K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g
    public final Spliterator.InterfaceC2773b spliterator() {
        return m559L0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m497w0(new C2918L2(EnumC3025e4.INT_VALUE, new InterfaceC2820j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2820j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2809e summaryStatistics() {
        return (C2809e) mo319j0(new InterfaceC2834x() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new C2809e();
            }
        }, new InterfaceC2831u() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2831u
            public final void accept(Object obj, int i) {
                ((C2809e) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2809e) obj).m618b((C2809e) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3137x2.m364n((InterfaceC3130w1) m496x0(new IntFunction() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo340e();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public final boolean mo317u(C3188S c3188s) {
        return ((Boolean) m497w0(AbstractC3082o1.m401v(c3188s, EnumC3058k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public InterfaceC3032g unordered() {
        return !m501B0() ? this : new C2892H0(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: y0 */
    final InterfaceC2851A1 mo472y0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3137x2.m371g(abstractC3143y2, spliterator, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public final InterfaceC2965U mo316z(C3190U c3190u) {
        Objects.requireNonNull(c3190u);
        return new C2909K(this, this, EnumC3025e4.INT_VALUE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, c3190u);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: z0 */
    final void mo471z0(Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3) {
        InterfaceC2822l c2856b0;
        Spliterator.InterfaceC2773b m559L0 = m559L0(spliterator);
        if (interfaceC3072m3 instanceof InterfaceC2822l) {
            c2856b0 = (InterfaceC2822l) interfaceC3072m3;
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(AbstractC3008c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2856b0 = new C2856B0(interfaceC3072m3);
        }
        while (!interfaceC3072m3.mo359o() && m559L0.mo191g(c2856b0)) {
        }
    }
}
