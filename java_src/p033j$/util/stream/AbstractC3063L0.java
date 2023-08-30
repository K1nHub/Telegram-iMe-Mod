package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.C2979g;
import p033j$.util.C2981i;
import p033j$.util.C2982j;
import p033j$.util.InterfaceC2987o;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.C2947a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2963j;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2967n;
import p033j$.util.function.InterfaceC2975v;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3340U;
import p033j$.wrappers.C3342W;
import p033j$.wrappers.C3347a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC3063L0 extends AbstractC3155c implements IntStream {
    public AbstractC3063L0(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        super(interfaceC2992s, i, z);
    }

    public AbstractC3063L0(AbstractC3155c abstractC3155c, int i) {
        super(abstractC3155c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2992s.InterfaceC2994b m515L0(InterfaceC2992s interfaceC2992s) {
        return m514M0(interfaceC2992s);
    }

    /* renamed from: M0 */
    public static InterfaceC2992s.InterfaceC2994b m514M0(InterfaceC2992s interfaceC2992s) {
        if (interfaceC2992s instanceof InterfaceC2992s.InterfaceC2994b) {
            return (InterfaceC2992s.InterfaceC2994b) interfaceC2992s;
        }
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(AbstractC3155c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC3112U mo285A(C3342W c3342w) {
        Objects.requireNonNull(c3342w);
        return new C3056K(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, c3342w);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3) {
        InterfaceC2965l c3003b0;
        InterfaceC2992s.InterfaceC2994b m514M0 = m514M0(interfaceC2992s);
        if (interfaceC3219m3 instanceof InterfaceC2965l) {
            c3003b0 = (InterfaceC2965l) interfaceC3219m3;
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(AbstractC3155c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c3003b0 = new C3003B0(interfaceC3219m3);
        }
        while (!interfaceC3219m3.mo314o() && m514M0.mo142g(c3003b0)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: B0 */
    public final EnumC3172e4 mo428B0() {
        return EnumC3172e4.INT_VALUE;
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo284C(C3340U c3340u) {
        return ((Boolean) m452x0(AbstractC3229o1.m356v(c3340u, EnumC3205k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo283F(C3340U c3340u) {
        return ((Boolean) m452x0(AbstractC3229o1.m356v(c3340u, EnumC3205k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo282I(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        m452x0(new C3210l0(interfaceC2965l, true));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo281J(InterfaceC2966m interfaceC2966m) {
        Objects.requireNonNull(interfaceC2966m);
        return new C3062L(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, interfaceC2966m);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: K0 */
    final InterfaceC2992s mo427K0(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        return new C3244q4(abstractC3290y2, interfaceC2978y, z);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo280N(int i, InterfaceC2963j interfaceC2963j) {
        Objects.requireNonNull(interfaceC2963j);
        return ((Integer) m452x0(new C3065L2(EnumC3172e4.INT_VALUE, interfaceC2963j, i))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo279P(InterfaceC2966m interfaceC2966m) {
        return new C3068M(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, interfaceC2966m);
    }

    /* renamed from: U */
    public void mo278U(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        m452x0(new C3210l0(interfaceC2965l, false));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2982j mo277a0(InterfaceC2963j interfaceC2963j) {
        Objects.requireNonNull(interfaceC2963j);
        return (C2982j) m452x0(new C3017D2(EnumC3172e4.INT_VALUE, interfaceC2963j));
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3112U asDoubleStream() {
        return new C3080O(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n);
    }

    @Override // p033j$.util.stream.IntStream
    public final InterfaceC3169e1 asLongStream() {
        return new C3033G0(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2981i average() {
        long[] jArr = (long[]) mo273k0(new InterfaceC2978y() { // from class: j$.util.stream.v0
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new long[2];
            }
        }, new InterfaceC2975v() { // from class: j$.util.stream.u0
            @Override // p033j$.util.function.InterfaceC2975v
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
                return new C2947a(this, biConsumer);
            }
        });
        return jArr[0] > 0 ? C2981i.m550d(jArr[1] / jArr[0]) : C2981i.m553a();
    }

    @Override // p033j$.util.stream.IntStream
    public final Stream boxed() {
        return mo281J(C3009C0.f799a);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo276c0(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C3068M(this, this, EnumC3172e4.INT_VALUE, 0, interfaceC2965l);
    }

    @Override // p033j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC3163d1) mo275f(new InterfaceC2967n() { // from class: j$.util.stream.E0
            @Override // p033j$.util.function.InterfaceC2967n
            public final long applyAsLong(int i) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3171e3) mo281J(C3009C0.f799a)).distinct().mo255m(new ToIntFunction() { // from class: j$.util.stream.w0
            @Override // p033j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC3169e1 mo275f(InterfaceC2967n interfaceC2967n) {
        Objects.requireNonNull(interfaceC2967n);
        return new C3074N(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, interfaceC2967n);
    }

    @Override // p033j$.util.stream.IntStream
    public final C2982j findAny() {
        return (C2982j) m452x0(new C3162d0(false, EnumC3172e4.INT_VALUE, C2982j.m549a(), C3127X.f952a, C3144a0.f972a));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2982j findFirst() {
        return (C2982j) m452x0(new C3162d0(true, EnumC3172e4.INT_VALUE, C2982j.m549a(), C3127X.f952a, C3144a0.f972a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo274h(C3340U c3340u) {
        Objects.requireNonNull(c3340u);
        return new C3068M(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1018t, c3340u);
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public final InterfaceC2987o.InterfaceC2988a iterator() {
        return AbstractC2916I.m638g(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public Iterator iterator() {
        return AbstractC2916I.m638g(spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo273k0(InterfaceC2978y interfaceC2978y, InterfaceC2975v interfaceC2975v, BiConsumer biConsumer) {
        C3008C c3008c = new C3008C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2978y);
        Objects.requireNonNull(interfaceC2975v);
        return m452x0(new C3296z2(EnumC3172e4.INT_VALUE, c3008c, interfaceC2975v, interfaceC2978y));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC3006B3.m532g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final C2982j max() {
        return mo277a0(new InterfaceC2963j() { // from class: j$.util.stream.z0
            @Override // p033j$.util.function.InterfaceC2963j
            public final int applyAsInt(int i, int i2) {
                return Math.max(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    public final C2982j min() {
        return mo277a0(new InterfaceC2963j() { // from class: j$.util.stream.A0
            @Override // p033j$.util.function.InterfaceC2963j
            public final int applyAsInt(int i, int i2) {
                return Math.min(i, i2);
            }
        });
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo272q(C3347a0 c3347a0) {
        Objects.requireNonNull(c3347a0);
        return new C3068M(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, c3347a0);
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC3006B3.m532g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C3060K3(this);
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g
    public final InterfaceC2992s.InterfaceC2994b spliterator() {
        return m514M0(super.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m452x0(new C3065L2(EnumC3172e4.INT_VALUE, new InterfaceC2963j() { // from class: j$.util.stream.y0
            @Override // p033j$.util.function.InterfaceC2963j
            public final int applyAsInt(int i, int i2) {
                return i + i2;
            }
        }, 0))).intValue();
    }

    @Override // p033j$.util.stream.IntStream
    public final C2979g summaryStatistics() {
        return (C2979g) mo273k0(new InterfaceC2978y() { // from class: j$.util.stream.j
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new C2979g();
            }
        }, new InterfaceC2975v() { // from class: j$.util.stream.t0
            @Override // p033j$.util.function.InterfaceC2975v
            public final void accept(Object obj, int i) {
                ((C2979g) obj).accept(i);
            }
        }, new BiConsumer() { // from class: j$.util.stream.s0
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2979g) obj).m555b((C2979g) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            }
        });
    }

    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: t0 */
    public final InterfaceC3253s1 mo307t0(long j, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m317p(j);
    }

    @Override // p033j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3284x2.m319n((InterfaceC3277w1) m451y0(new InterfaceC2966m() { // from class: j$.util.stream.D0
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Integer[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public InterfaceC3179g unordered() {
        return !m456C0() ? this : new C3039H0(this, this, EnumC3172e4.INT_VALUE, EnumC3166d4.f1016r);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo271v(C3340U c3340u) {
        return ((Boolean) m452x0(AbstractC3229o1.m356v(c3340u, EnumC3205k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: z0 */
    final InterfaceC2998A1 mo426z0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m326g(abstractC3290y2, interfaceC2992s, z);
    }
}
