package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.C2895g;
import p033j$.util.C2897i;
import p033j$.util.C2898j;
import p033j$.util.InterfaceC2903o;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.C2863a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2879j;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2883n;
import p033j$.util.function.InterfaceC2891v;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3256U;
import p033j$.wrappers.C3258W;
import p033j$.wrappers.C3263a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2979L0 extends AbstractC3071c implements IntStream {
    public AbstractC2979L0(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    public AbstractC2979L0(AbstractC3071c abstractC3071c, int i) {
        super(abstractC3071c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2908s.InterfaceC2910b m515L0(InterfaceC2908s interfaceC2908s) {
        return m514M0(interfaceC2908s);
    }

    /* renamed from: M0 */
    public static InterfaceC2908s.InterfaceC2910b m514M0(InterfaceC2908s interfaceC2908s) {
        if (interfaceC2908s instanceof InterfaceC2908s.InterfaceC2910b) {
            return (InterfaceC2908s.InterfaceC2910b) interfaceC2908s;
        }
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(AbstractC3071c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC3028U mo285A(C3258W c3258w) {
        Objects.requireNonNull(c3258w);
        return new C2972K(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, c3258w);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3) {
        InterfaceC2881l c2919b0;
        InterfaceC2908s.InterfaceC2910b m514M0 = m514M0(interfaceC2908s);
        if (interfaceC3135m3 instanceof InterfaceC2881l) {
            c2919b0 = (InterfaceC2881l) interfaceC3135m3;
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(AbstractC3071c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2919b0 = new C2919B0(interfaceC3135m3);
        }
        while (!interfaceC3135m3.mo314o() && m514M0.mo142g(c2919b0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: B0 */
    public final EnumC3088e4 mo428B0() {
        return EnumC3088e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo284C(C3256U c3256u) {
        return ((Boolean) m452x0(AbstractC3145o1.m356v(c3256u, EnumC3121k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo283F(C3256U c3256u) {
        return ((Boolean) m452x0(AbstractC3145o1.m356v(c3256u, EnumC3121k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo282I(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        m452x0(new C3126l0(interfaceC2881l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo281J(InterfaceC2882m interfaceC2882m) {
        Objects.requireNonNull(interfaceC2882m);
        return new C2978L(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, interfaceC2882m);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: K0 */
    final InterfaceC2908s mo427K0(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        return new C3160q4(abstractC3206y2, interfaceC2894y, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo280N(int i, InterfaceC2879j interfaceC2879j) {
        Objects.requireNonNull(interfaceC2879j);
        return ((Integer) m452x0(new C2981L2(EnumC3088e4.INT_VALUE, interfaceC2879j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo279P(InterfaceC2882m interfaceC2882m) {
        return new C2984M(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, interfaceC2882m);
    }

    /* renamed from: U */
    public void mo278U(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        m452x0(new C3126l0(interfaceC2881l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2898j mo277a0(InterfaceC2879j interfaceC2879j) {
        Objects.requireNonNull(interfaceC2879j);
        return (C2898j) m452x0(new C2933D2(EnumC3088e4.INT_VALUE, interfaceC2879j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3028U asDoubleStream() {
        return new C2996O(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3085e1 asLongStream() {
        return new C2949G0(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2897i average() {
        long[] jArr = (long[]) mo273k0(new InterfaceC2894y() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2891v() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2891v
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
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2897i.m550d(jArr[1] / jArr[0]) : C2897i.m553a();
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo281J(C2925C0.f790a);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo276c0(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2984M(this, this, EnumC3088e4.INT_VALUE, 0, interfaceC2881l);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3079d1) mo275f(new InterfaceC2883n() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2883n
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3087e3) mo281J(C2925C0.f790a)).distinct().mo255m(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3085e1 mo275f(InterfaceC2883n interfaceC2883n) {
        Objects.requireNonNull(interfaceC2883n);
        return new C2990N(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, interfaceC2883n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2898j findAny() {
        return (C2898j) m452x0(new C3078d0(false, EnumC3088e4.INT_VALUE, C2898j.m549a(), C3043X.f943a, C3060a0.f963a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2898j findFirst() {
        return (C2898j) m452x0(new C3078d0(true, EnumC3088e4.INT_VALUE, C2898j.m549a(), C3043X.f943a, C3060a0.f963a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo274h(C3256U c3256u) {
        Objects.requireNonNull(c3256u);
        return new C2984M(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1009t, c3256u);
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public final InterfaceC2903o.InterfaceC2904a iterator() {
        return AbstractC2832I.m638g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public Iterator iterator() {
        return AbstractC2832I.m638g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo273k0(InterfaceC2894y interfaceC2894y, InterfaceC2891v interfaceC2891v, BiConsumer biConsumer) {
        C2924C c2924c = new C2924C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2894y);
        Objects.requireNonNull(interfaceC2891v);
        return m452x0(new C3212z2(EnumC3088e4.INT_VALUE, c2924c, interfaceC2891v, interfaceC2894y));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2922B3.m532g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2898j max() {
        return mo277a0(new InterfaceC2879j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2879j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2898j min() {
        return mo277a0(new InterfaceC2879j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2879j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo272q(C3263a0 c3263a0) {
        Objects.requireNonNull(c3263a0);
        return new C2984M(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, c3263a0);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2922B3.m532g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2976K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g
    public final InterfaceC2908s.InterfaceC2910b spliterator() {
        return m514M0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m452x0(new C2981L2(EnumC3088e4.INT_VALUE, new InterfaceC2879j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2879j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2895g summaryStatistics() {
        return (C2895g) mo273k0(new InterfaceC2894y() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new C2895g();
            }
        }, new InterfaceC2891v() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2891v
            public final void accept(Object obj, int i) {
                ((C2895g) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2895g) obj).m555b((C2895g) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: t0 */
    public final InterfaceC3169s1 mo307t0(long j, InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m317p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3200x2.m319n((InterfaceC3193w1) m451y0(new InterfaceC2882m() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public InterfaceC3095g unordered() {
        return !m456C0() ? this : new C2955H0(this, this, EnumC3088e4.INT_VALUE, EnumC3082d4.f1007r);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo271v(C3256U c3256u) {
        return ((Boolean) m452x0(AbstractC3145o1.m356v(c3256u, EnumC3121k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: z0 */
    final InterfaceC2914A1 mo426z0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m326g(abstractC3206y2, interfaceC2908s, z);
    }
}
