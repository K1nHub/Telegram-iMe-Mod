package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.C2896h;
import p033j$.util.C2897i;
import p033j$.util.C2899k;
import p033j$.util.InterfaceC2906q;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.C2863a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.C2888s;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2884o;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.InterfaceC2889t;
import p033j$.util.function.InterfaceC2892w;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3279i0;
import p033j$.wrappers.C3283k0;
import p033j$.wrappers.C3287m0;
/* renamed from: j$.util.stream.d1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3079d1 extends AbstractC3071c implements InterfaceC3085e1 {
    public AbstractC3079d1(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    public AbstractC3079d1(AbstractC3071c abstractC3071c, int i) {
        super(abstractC3071c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2908s.InterfaceC2911c m445L0(InterfaceC2908s interfaceC2908s) {
        return m444M0(interfaceC2908s);
    }

    /* renamed from: M0 */
    public static InterfaceC2908s.InterfaceC2911c m444M0(InterfaceC2908s interfaceC2908s) {
        if (interfaceC2908s instanceof InterfaceC2908s.InterfaceC2911c) {
            return (InterfaceC2908s.InterfaceC2911c) interfaceC2908s;
        }
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(AbstractC3071c.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3) {
        InterfaceC2886q c3039w0;
        InterfaceC2908s.InterfaceC2911c m444M0 = m444M0(interfaceC2908s);
        if (interfaceC3135m3 instanceof InterfaceC2886q) {
            c3039w0 = (InterfaceC2886q) interfaceC3135m3;
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(AbstractC3071c.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            c3039w0 = new C3039W0(interfaceC3135m3);
        }
        while (!interfaceC3135m3.mo314o() && m444M0.mo136i(c3039w0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: B0 */
    public final EnumC3088e4 mo428B0() {
        return EnumC3088e4.LONG_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: D */
    public final long mo204D(long j, InterfaceC2884o interfaceC2884o) {
        Objects.requireNonNull(interfaceC2884o);
        return ((Long) m452x0(new C3005P2(EnumC3088e4.LONG_VALUE, interfaceC2884o, j))).longValue();
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: K0 */
    final InterfaceC2908s mo427K0(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        return new C3172s4(abstractC3206y2, interfaceC2894y, z);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: L */
    public final boolean mo203L(C3279i0 c3279i0) {
        return ((Boolean) m452x0(AbstractC3145o1.m355w(c3279i0, EnumC3121k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: O */
    public final InterfaceC3028U mo202O(C3283k0 c3283k0) {
        Objects.requireNonNull(c3283k0);
        return new C2972K(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, c3283k0);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: Q */
    public final Stream mo201Q(InterfaceC2887r interfaceC2887r) {
        Objects.requireNonNull(interfaceC2887r);
        return new C2978L(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, interfaceC2887r);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: S */
    public final boolean mo200S(C3279i0 c3279i0) {
        return ((Boolean) m452x0(AbstractC3145o1.m355w(c3279i0, EnumC3121k1.NONE))).booleanValue();
    }

    /* renamed from: Z */
    public void mo199Z(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        m452x0(new C3132m0(interfaceC2886q, true));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final InterfaceC3028U asDoubleStream() {
        return new C2996O(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final C2897i average() {
        long[] jArr = (long[]) mo196f0(new InterfaceC2894y() { // from class: j$.util.stream.P0
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2892w() { // from class: j$.util.stream.O0
            @Override // p033j$.util.function.InterfaceC2892w
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
                return new C2863a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2897i.m550d(jArr[1] / jArr[0]) : C2897i.m553a();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final Stream boxed() {
        return mo201Q(C3044X0.f944a);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final long count() {
        return ((AbstractC3079d1) mo189z(new InterfaceC2889t() { // from class: j$.util.stream.Y0
            @Override // p033j$.util.function.InterfaceC2889t
            /* renamed from: a */
            public InterfaceC2889t mo130a(InterfaceC2889t interfaceC2889t) {
                Objects.requireNonNull(interfaceC2889t);
                return new C2888s(this, interfaceC2889t, 0);
            }

            @Override // p033j$.util.function.InterfaceC2889t
            public final long applyAsLong(long j) {
                return 1L;
            }

            @Override // p033j$.util.function.InterfaceC2889t
            /* renamed from: b */
            public InterfaceC2889t mo129b(InterfaceC2889t interfaceC2889t) {
                Objects.requireNonNull(interfaceC2889t);
                return new C2888s(this, interfaceC2889t, 1);
            }
        })).sum();
    }

    /* renamed from: d */
    public void mo198d(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        m452x0(new C3132m0(interfaceC2886q, false));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final InterfaceC3085e1 distinct() {
        return ((AbstractC3087e3) mo201Q(C3044X0.f944a)).distinct().mo259g0(new ToLongFunction() { // from class: j$.util.stream.Q0
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: e0 */
    public final IntStream mo197e0(C3287m0 c3287m0) {
        Objects.requireNonNull(c3287m0);
        return new C2984M(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, c3287m0);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: f0 */
    public final Object mo196f0(InterfaceC2894y interfaceC2894y, InterfaceC2892w interfaceC2892w, BiConsumer biConsumer) {
        C2924C c2924c = new C2924C(biConsumer, 2);
        Objects.requireNonNull(interfaceC2894y);
        Objects.requireNonNull(interfaceC2892w);
        return m452x0(new C3212z2(EnumC3088e4.LONG_VALUE, c2924c, interfaceC2892w, interfaceC2894y));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final C2899k findAny() {
        return (C2899k) m452x0(new C3078d0(false, EnumC3088e4.LONG_VALUE, C2899k.m545a(), C3048Y.f947a, C3066b0.f970a));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final C2899k findFirst() {
        return (C2899k) m452x0(new C3078d0(true, EnumC3088e4.LONG_VALUE, C2899k.m545a(), C3048Y.f947a, C3066b0.f970a));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: g */
    public final C2899k mo195g(InterfaceC2884o interfaceC2884o) {
        Objects.requireNonNull(interfaceC2884o);
        return (C2899k) m452x0(new C2933D2(EnumC3088e4.LONG_VALUE, interfaceC2884o));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public final InterfaceC2906q iterator() {
        return AbstractC2832I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public Iterator iterator() {
        return AbstractC2832I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: k */
    public final boolean mo194k(C3279i0 c3279i0) {
        return ((Boolean) m452x0(AbstractC3145o1.m355w(c3279i0, EnumC3121k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final InterfaceC3085e1 limit(long j) {
        if (j >= 0) {
            return AbstractC2922B3.m531h(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final C2899k max() {
        return mo195g(new InterfaceC2884o() { // from class: j$.util.stream.U0
            @Override // p033j$.util.function.InterfaceC2884o
            public final long applyAsLong(long j, long j2) {
                return Math.max(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final C2899k min() {
        return mo195g(new InterfaceC2884o() { // from class: j$.util.stream.V0
            @Override // p033j$.util.function.InterfaceC2884o
            public final long applyAsLong(long j, long j2) {
                return Math.min(j, j2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: p */
    public final InterfaceC3085e1 mo192p(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2990N(this, this, EnumC3088e4.LONG_VALUE, 0, interfaceC2886q);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: s */
    public final InterfaceC3085e1 mo191s(InterfaceC2887r interfaceC2887r) {
        return new C2990N(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, interfaceC2887r);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final InterfaceC3085e1 skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2922B3.m531h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final InterfaceC3085e1 sorted() {
        return new C2982L3(this);
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g
    public final InterfaceC2908s.InterfaceC2911c spliterator() {
        return m444M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final long sum() {
        return ((Long) m452x0(new C3005P2(EnumC3088e4.LONG_VALUE, new InterfaceC2884o() { // from class: j$.util.stream.T0
            @Override // p033j$.util.function.InterfaceC2884o
            public final long applyAsLong(long j, long j2) {
                return j + j2;
            }
        }, 0L))).longValue();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final C2896h summaryStatistics() {
        return (C2896h) mo196f0(new InterfaceC2894y() { // from class: j$.util.stream.k
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new C2896h();
            }
        }, new InterfaceC2892w() { // from class: j$.util.stream.N0
            @Override // p033j$.util.function.InterfaceC2892w
            public final void accept(Object obj, long j) {
                ((C2896h) obj).accept(j);
            }
        }, new BiConsumer() { // from class: j$.util.stream.M0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2896h) obj).m554b((C2896h) obj2);
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
        return AbstractC3200x2.m316q(j);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public final long[] toArray() {
        return (long[]) AbstractC3200x2.m318o((InterfaceC3205y1) m451y0(new InterfaceC2882m() { // from class: j$.util.stream.S0
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Long[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: u */
    public final InterfaceC3085e1 mo190u(C3279i0 c3279i0) {
        Objects.requireNonNull(c3279i0);
        return new C2990N(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1009t, c3279i0);
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public InterfaceC3095g unordered() {
        return !m456C0() ? this : new C2949G0(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1007r);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: z */
    public final InterfaceC3085e1 mo189z(InterfaceC2889t interfaceC2889t) {
        Objects.requireNonNull(interfaceC2889t);
        return new C2990N(this, this, EnumC3088e4.LONG_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, interfaceC2889t);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: z0 */
    final InterfaceC2914A1 mo426z0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m325h(abstractC3206y2, interfaceC2908s, z);
    }
}
