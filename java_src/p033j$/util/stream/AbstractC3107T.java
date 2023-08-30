package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.C2953f;
import p033j$.util.C2981i;
import p033j$.util.InterfaceC2985m;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.C2947a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2957d;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2960g;
import p033j$.util.function.InterfaceC2961h;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2974u;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3312D;
import p033j$.wrappers.C3316F;
import p033j$.wrappers.C3324J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC3107T extends AbstractC3155c implements InterfaceC3112U {
    public AbstractC3107T(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        super(interfaceC2992s, i, z);
    }

    public AbstractC3107T(AbstractC3155c abstractC3155c, int i) {
        super(abstractC3155c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2992s.InterfaceC2993a m497L0(InterfaceC2992s interfaceC2992s) {
        return m496M0(interfaceC2992s);
    }

    /* renamed from: M0 */
    public static InterfaceC2992s.InterfaceC2993a m496M0(InterfaceC2992s interfaceC2992s) {
        if (interfaceC2992s instanceof InterfaceC2992s.InterfaceC2993a) {
            return (InterfaceC2992s.InterfaceC2993a) interfaceC2992s;
        }
        if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(AbstractC3155c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3) {
        InterfaceC2959f c3026f;
        InterfaceC2992s.InterfaceC2993a m496M0 = m496M0(interfaceC2992s);
        if (interfaceC3219m3 instanceof InterfaceC2959f) {
            c3026f = (InterfaceC2959f) interfaceC3219m3;
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(AbstractC3155c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c3026f = new C3026F(interfaceC3219m3);
        }
        while (!interfaceC3219m3.mo314o() && m496M0.mo149k(c3026f)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: B0 */
    public final EnumC3172e4 mo428B0() {
        return EnumC3172e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: G */
    public final C2981i mo223G(InterfaceC2957d interfaceC2957d) {
        Objects.requireNonNull(interfaceC2957d);
        return (C2981i) m452x0(new C3017D2(EnumC3172e4.DOUBLE_VALUE, interfaceC2957d));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: H */
    public final Object mo222H(InterfaceC2978y interfaceC2978y, InterfaceC2974u interfaceC2974u, BiConsumer biConsumer) {
        C3008C c3008c = new C3008C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2978y);
        Objects.requireNonNull(interfaceC2974u);
        return m452x0(new C3296z2(EnumC3172e4.DOUBLE_VALUE, c3008c, interfaceC2974u, interfaceC2978y));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: K */
    public final double mo221K(double d, InterfaceC2957d interfaceC2957d) {
        Objects.requireNonNull(interfaceC2957d);
        return ((Double) m452x0(new C3005B2(EnumC3172e4.DOUBLE_VALUE, interfaceC2957d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: K0 */
    final InterfaceC2992s mo427K0(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        return new C3232o4(abstractC3290y2, interfaceC2978y, z);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: M */
    public final Stream mo220M(InterfaceC2960g interfaceC2960g) {
        Objects.requireNonNull(interfaceC2960g);
        return new C3062L(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, interfaceC2960g);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: R */
    public final IntStream mo219R(C3316F c3316f) {
        Objects.requireNonNull(c3316f);
        return new C3068M(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, c3316f);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: Y */
    public final boolean mo218Y(C3312D c3312d) {
        return ((Boolean) m452x0(AbstractC3229o1.m357u(c3312d, EnumC3205k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final C2981i average() {
        double[] dArr = (double[]) mo222H(new InterfaceC2978y() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2974u() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2974u
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3209l.m395b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3209l.m395b(dArr2, dArr3[0]);
                AbstractC3209l.m395b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2981i.m550d(AbstractC3209l.m396a(dArr) / dArr[2]) : C2981i.m553a();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: b */
    public final InterfaceC3112U mo217b(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C3056K(this, this, EnumC3172e4.DOUBLE_VALUE, 0, interfaceC2959f);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final Stream boxed() {
        return mo220M(C3032G.f838a);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final long count() {
        return ((AbstractC3163d1) mo209x(new InterfaceC2961h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2961h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final InterfaceC3112U distinct() {
        return ((AbstractC3171e3) mo220M(C3032G.f838a)).distinct().mo257j0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final C2981i findAny() {
        return (C2981i) m452x0(new C3162d0(false, EnumC3172e4.DOUBLE_VALUE, C2981i.m553a(), C3122W.f948a, C3137Z.f960a));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final C2981i findFirst() {
        return (C2981i) m452x0(new C3162d0(true, EnumC3172e4.DOUBLE_VALUE, C2981i.m553a(), C3122W.f948a, C3137Z.f960a));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: h0 */
    public final boolean mo216h0(C3312D c3312d) {
        return ((Boolean) m452x0(AbstractC3229o1.m357u(c3312d, EnumC3205k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: i0 */
    public final boolean mo215i0(C3312D c3312d) {
        return ((Boolean) m452x0(AbstractC3229o1.m357u(c3312d, EnumC3205k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public final InterfaceC2985m iterator() {
        return AbstractC2916I.m639f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public Iterator iterator() {
        return AbstractC2916I.m639f(spliterator());
    }

    /* renamed from: j */
    public void mo214j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        m452x0(new C3204k0(interfaceC2959f, false));
    }

    /* renamed from: l0 */
    public void mo213l0(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        m452x0(new C3204k0(interfaceC2959f, true));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final InterfaceC3112U limit(long j) {
        if (j >= 0) {
            return AbstractC3006B3.m533f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final C2981i max() {
        return mo223G(new InterfaceC2957d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2957d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final C2981i min() {
        return mo223G(new InterfaceC2957d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2957d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: r */
    public final InterfaceC3112U mo211r(C3312D c3312d) {
        Objects.requireNonNull(c3312d);
        return new C3056K(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1018t, c3312d);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final InterfaceC3112U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC3006B3.m533f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final InterfaceC3112U sorted() {
        return new C3054J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g
    public final InterfaceC2992s.InterfaceC2993a spliterator() {
        return m496M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final double sum() {
        return AbstractC3209l.m396a((double[]) mo222H(new InterfaceC2978y() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2974u() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2974u
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3209l.m395b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3209l.m395b(dArr, dArr2[0]);
                AbstractC3209l.m395b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final C2953f summaryStatistics() {
        return (C2953f) mo222H(new InterfaceC2978y() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new C2953f();
            }
        }, new InterfaceC2974u() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2974u
            public final void accept(Object obj, double d) {
                ((C2953f) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2953f) obj).m558b((C2953f) obj2);
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
        return AbstractC3284x2.m323j(j);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public final double[] toArray() {
        return (double[]) AbstractC3284x2.m320m((InterfaceC3265u1) m451y0(new InterfaceC2966m() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public InterfaceC3179g unordered() {
        return !m456C0() ? this : new C3080O(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1016r);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: w */
    public final InterfaceC3112U mo210w(InterfaceC2960g interfaceC2960g) {
        return new C3056K(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, interfaceC2960g);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: x */
    public final InterfaceC3169e1 mo209x(InterfaceC2961h interfaceC2961h) {
        Objects.requireNonNull(interfaceC2961h);
        return new C3074N(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, interfaceC2961h);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: y */
    public final InterfaceC3112U mo208y(C3324J c3324j) {
        Objects.requireNonNull(c3324j);
        return new C3056K(this, this, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, c3324j);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: z0 */
    final InterfaceC2998A1 mo426z0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m327f(abstractC3290y2, interfaceC2992s, z);
    }
}
