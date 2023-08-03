package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.C2840g;
import p033j$.util.C2842i;
import p033j$.util.C2843j;
import p033j$.util.InterfaceC2848o;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3203W;
import p033j$.wrappers.C3208a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2924L0 extends AbstractC3016c implements IntStream {
    public AbstractC2924L0(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    public AbstractC2924L0(AbstractC3016c abstractC3016c, int i) {
        super(abstractC3016c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2855b m515L0(InterfaceC2853s interfaceC2853s) {
        return m514M0(interfaceC2853s);
    }

    /* renamed from: M0 */
    public static InterfaceC2853s.InterfaceC2855b m514M0(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s instanceof InterfaceC2853s.InterfaceC2855b) {
            return (InterfaceC2853s.InterfaceC2855b) interfaceC2853s;
        }
        if (AbstractC2958Q4.f913a) {
            AbstractC2958Q4.m500a(AbstractC3016c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2973U mo285A(C3203W c3203w) {
        Objects.requireNonNull(c3203w);
        return new C2917K(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, c3203w);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        InterfaceC2826l c2864b0;
        InterfaceC2853s.InterfaceC2855b m514M0 = m514M0(interfaceC2853s);
        if (interfaceC3080m3 instanceof InterfaceC2826l) {
            c2864b0 = (InterfaceC2826l) interfaceC3080m3;
        } else if (AbstractC2958Q4.f913a) {
            AbstractC2958Q4.m500a(AbstractC3016c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2864b0 = new C2864B0(interfaceC3080m3);
        }
        while (!interfaceC3080m3.mo314o() && m514M0.mo142g(c2864b0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo428B0() {
        return EnumC3033e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo284C(C3201U c3201u) {
        return ((Boolean) m452x0(AbstractC3090o1.m356v(c3201u, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo283F(C3201U c3201u) {
        return ((Boolean) m452x0(AbstractC3090o1.m356v(c3201u, EnumC3066k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo282I(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        m452x0(new C3071l0(interfaceC2826l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo281J(InterfaceC2827m interfaceC2827m) {
        Objects.requireNonNull(interfaceC2827m);
        return new C2923L(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, interfaceC2827m);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo427K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C3105q4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo280N(int i, InterfaceC2824j interfaceC2824j) {
        Objects.requireNonNull(interfaceC2824j);
        return ((Integer) m452x0(new C2926L2(EnumC3033e4.INT_VALUE, interfaceC2824j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo279P(InterfaceC2827m interfaceC2827m) {
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n | EnumC3027d4.f1008t, interfaceC2827m);
    }

    /* renamed from: U */
    public void mo278U(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        m452x0(new C3071l0(interfaceC2826l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2843j mo277a0(InterfaceC2824j interfaceC2824j) {
        Objects.requireNonNull(interfaceC2824j);
        return (C2843j) m452x0(new C2878D2(EnumC3033e4.INT_VALUE, interfaceC2824j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC2973U asDoubleStream() {
        return new C2941O(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3030e1 asLongStream() {
        return new C2894G0(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2842i average() {
        long[] jArr = (long[]) mo273k0(new InterfaceC2839y() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2836v() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2836v
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
                return new C2808a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2842i.m550d(jArr[1] / jArr[0]) : C2842i.m553a();
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo281J(C2870C0.f789a);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo276c0(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, 0, interfaceC2826l);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3024d1) mo275f(new InterfaceC2828n() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2828n
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3032e3) mo281J(C2870C0.f789a)).distinct().mo255m(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3030e1 mo275f(InterfaceC2828n interfaceC2828n) {
        Objects.requireNonNull(interfaceC2828n);
        return new C2935N(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, interfaceC2828n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j findAny() {
        return (C2843j) m452x0(new C3023d0(false, EnumC3033e4.INT_VALUE, C2843j.m549a(), C2988X.f942a, C3005a0.f962a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j findFirst() {
        return (C2843j) m452x0(new C3023d0(true, EnumC3033e4.INT_VALUE, C2843j.m549a(), C2988X.f942a, C3005a0.f962a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo274h(C3201U c3201u) {
        Objects.requireNonNull(c3201u);
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1008t, c3201u);
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2848o.InterfaceC2849a iterator() {
        return AbstractC2777I.m638g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public Iterator iterator() {
        return AbstractC2777I.m638g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo273k0(InterfaceC2839y interfaceC2839y, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer) {
        C2869C c2869c = new C2869C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(interfaceC2836v);
        return m452x0(new C3157z2(EnumC3033e4.INT_VALUE, c2869c, interfaceC2836v, interfaceC2839y));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m532g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j max() {
        return mo277a0(new InterfaceC2824j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2824j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2843j min() {
        return mo277a0(new InterfaceC2824j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2824j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo272q(C3208a0 c3208a0) {
        Objects.requireNonNull(c3208a0);
        return new C2929M(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1004p | EnumC3027d4.f1002n, c3208a0);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m532g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2921K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2853s.InterfaceC2855b spliterator() {
        return m514M0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m452x0(new C2926L2(EnumC3033e4.INT_VALUE, new InterfaceC2824j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2824j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2840g summaryStatistics() {
        return (C2840g) mo273k0(new InterfaceC2839y() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2839y
            public final Object get() {
                return new C2840g();
            }
        }, new InterfaceC2836v() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2836v
            public final void accept(Object obj, int i) {
                ((C2840g) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2840g) obj).m555b((C2840g) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2808a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo307t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m317p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3145x2.m319n((InterfaceC3138w1) m451y0(new InterfaceC2827m() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.InterfaceC2827m
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m456C0() ? this : new C2900H0(this, this, EnumC3033e4.INT_VALUE, EnumC3027d4.f1006r);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo271v(C3201U c3201u) {
        return ((Boolean) m452x0(AbstractC3090o1.m356v(c3201u, EnumC3066k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo426z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m326g(abstractC3151y2, interfaceC2853s, z);
    }
}
