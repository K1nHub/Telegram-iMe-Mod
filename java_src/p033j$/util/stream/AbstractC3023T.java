package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.C2869f;
import p033j$.util.C2897i;
import p033j$.util.InterfaceC2901m;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.C2863a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2873d;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2876g;
import p033j$.util.function.InterfaceC2877h;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2890u;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3228D;
import p033j$.wrappers.C3232F;
import p033j$.wrappers.C3240J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC3023T extends AbstractC3071c implements InterfaceC3028U {
    public AbstractC3023T(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    public AbstractC3023T(AbstractC3071c abstractC3071c, int i) {
        super(abstractC3071c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2908s.InterfaceC2909a m497L0(InterfaceC2908s interfaceC2908s) {
        return m496M0(interfaceC2908s);
    }

    /* renamed from: M0 */
    public static InterfaceC2908s.InterfaceC2909a m496M0(InterfaceC2908s interfaceC2908s) {
        if (interfaceC2908s instanceof InterfaceC2908s.InterfaceC2909a) {
            return (InterfaceC2908s.InterfaceC2909a) interfaceC2908s;
        }
        if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(AbstractC3071c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3) {
        InterfaceC2875f c2942f;
        InterfaceC2908s.InterfaceC2909a m496M0 = m496M0(interfaceC2908s);
        if (interfaceC3135m3 instanceof InterfaceC2875f) {
            c2942f = (InterfaceC2875f) interfaceC3135m3;
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(AbstractC3071c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2942f = new C2942F(interfaceC3135m3);
        }
        while (!interfaceC3135m3.mo314o() && m496M0.mo149k(c2942f)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: B0 */
    public final EnumC3088e4 mo428B0() {
        return EnumC3088e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: G */
    public final C2897i mo223G(InterfaceC2873d interfaceC2873d) {
        Objects.requireNonNull(interfaceC2873d);
        return (C2897i) m452x0(new C2933D2(EnumC3088e4.DOUBLE_VALUE, interfaceC2873d));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: H */
    public final Object mo222H(InterfaceC2894y interfaceC2894y, InterfaceC2890u interfaceC2890u, BiConsumer biConsumer) {
        C2924C c2924c = new C2924C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2894y);
        Objects.requireNonNull(interfaceC2890u);
        return m452x0(new C3212z2(EnumC3088e4.DOUBLE_VALUE, c2924c, interfaceC2890u, interfaceC2894y));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: K */
    public final double mo221K(double d, InterfaceC2873d interfaceC2873d) {
        Objects.requireNonNull(interfaceC2873d);
        return ((Double) m452x0(new C2921B2(EnumC3088e4.DOUBLE_VALUE, interfaceC2873d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: K0 */
    final InterfaceC2908s mo427K0(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        return new C3148o4(abstractC3206y2, interfaceC2894y, z);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: M */
    public final Stream mo220M(InterfaceC2876g interfaceC2876g) {
        Objects.requireNonNull(interfaceC2876g);
        return new C2978L(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, interfaceC2876g);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: R */
    public final IntStream mo219R(C3232F c3232f) {
        Objects.requireNonNull(c3232f);
        return new C2984M(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, c3232f);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: Y */
    public final boolean mo218Y(C3228D c3228d) {
        return ((Boolean) m452x0(AbstractC3145o1.m357u(c3228d, EnumC3121k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final C2897i average() {
        double[] dArr = (double[]) mo222H(new InterfaceC2894y() { // from class: j$.util.stream.x
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new double[4];
            }
        }, new InterfaceC2890u() { // from class: j$.util.stream.v
            @Override // p033j$.util.function.InterfaceC2890u
            public final void accept(Object obj, double d) {
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3125l.m395b(dArr2, d);
                dArr2[3] = dArr2[3] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.A
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr2 = (double[]) obj;
                double[] dArr3 = (double[]) obj2;
                AbstractC3125l.m395b(dArr2, dArr3[0]);
                AbstractC3125l.m395b(dArr2, dArr3[1]);
                dArr2[2] = dArr2[2] + dArr3[2];
                dArr2[3] = dArr2[3] + dArr3[3];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            }
        });
        return dArr[2] > 0.0d ? C2897i.m550d(AbstractC3125l.m396a(dArr) / dArr[2]) : C2897i.m553a();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: b */
    public final InterfaceC3028U mo217b(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2972K(this, this, EnumC3088e4.DOUBLE_VALUE, 0, interfaceC2875f);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final Stream boxed() {
        return mo220M(C2948G.f829a);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final long count() {
        return ((AbstractC3079d1) mo209x(new InterfaceC2877h() { // from class: j$.util.stream.H
            @Override // p033j$.util.function.InterfaceC2877h
            public final long applyAsLong(double d) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final InterfaceC3028U distinct() {
        return ((AbstractC3087e3) mo220M(C2948G.f829a)).distinct().mo257j0(new ToDoubleFunction() { // from class: j$.util.stream.z
            @Override // p033j$.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((Double) obj).doubleValue();
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final C2897i findAny() {
        return (C2897i) m452x0(new C3078d0(false, EnumC3088e4.DOUBLE_VALUE, C2897i.m553a(), C3038W.f939a, C3053Z.f951a));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final C2897i findFirst() {
        return (C2897i) m452x0(new C3078d0(true, EnumC3088e4.DOUBLE_VALUE, C2897i.m553a(), C3038W.f939a, C3053Z.f951a));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: h0 */
    public final boolean mo216h0(C3228D c3228d) {
        return ((Boolean) m452x0(AbstractC3145o1.m357u(c3228d, EnumC3121k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: i0 */
    public final boolean mo215i0(C3228D c3228d) {
        return ((Boolean) m452x0(AbstractC3145o1.m357u(c3228d, EnumC3121k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public final InterfaceC2901m iterator() {
        return AbstractC2832I.m639f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public Iterator iterator() {
        return AbstractC2832I.m639f(spliterator());
    }

    /* renamed from: j */
    public void mo214j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        m452x0(new C3120k0(interfaceC2875f, false));
    }

    /* renamed from: l0 */
    public void mo213l0(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        m452x0(new C3120k0(interfaceC2875f, true));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final InterfaceC3028U limit(long j) {
        if (j >= 0) {
            return AbstractC2922B3.m533f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final C2897i max() {
        return mo223G(new InterfaceC2873d() { // from class: j$.util.stream.D
            @Override // p033j$.util.function.InterfaceC2873d
            public final double applyAsDouble(double d, double d2) {
                return Math.max(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final C2897i min() {
        return mo223G(new InterfaceC2873d() { // from class: j$.util.stream.E
            @Override // p033j$.util.function.InterfaceC2873d
            public final double applyAsDouble(double d, double d2) {
                return Math.min(d, d2);
            }
        });
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: r */
    public final InterfaceC3028U mo211r(C3228D c3228d) {
        Objects.requireNonNull(c3228d);
        return new C2972K(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1009t, c3228d);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final InterfaceC3028U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2922B3.m533f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final InterfaceC3028U sorted() {
        return new C2970J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g
    public final InterfaceC2908s.InterfaceC2909a spliterator() {
        return m496M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final double sum() {
        return AbstractC3125l.m396a((double[]) mo222H(new InterfaceC2894y() { // from class: j$.util.stream.y
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new double[3];
            }
        }, new InterfaceC2890u() { // from class: j$.util.stream.w
            @Override // p033j$.util.function.InterfaceC2890u
            public final void accept(Object obj, double d) {
                double[] dArr = (double[]) obj;
                AbstractC3125l.m395b(dArr, d);
                dArr[2] = dArr[2] + d;
            }
        }, new BiConsumer() { // from class: j$.util.stream.B
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3125l.m395b(dArr, dArr2[0]);
                AbstractC3125l.m395b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            }
        }));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final C2869f summaryStatistics() {
        return (C2869f) mo222H(new InterfaceC2894y() { // from class: j$.util.stream.i
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new C2869f();
            }
        }, new InterfaceC2890u() { // from class: j$.util.stream.u
            @Override // p033j$.util.function.InterfaceC2890u
            public final void accept(Object obj, double d) {
                ((C2869f) obj).accept(d);
            }
        }, new BiConsumer() { // from class: j$.util.stream.t
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((C2869f) obj).m558b((C2869f) obj2);
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
        return AbstractC3200x2.m323j(j);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public final double[] toArray() {
        return (double[]) AbstractC3200x2.m320m((InterfaceC3181u1) m451y0(new InterfaceC2882m() { // from class: j$.util.stream.I
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Double[i];
            }
        })).mo295e();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public InterfaceC3095g unordered() {
        return !m456C0() ? this : new C2996O(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1007r);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: w */
    public final InterfaceC3028U mo210w(InterfaceC2876g interfaceC2876g) {
        return new C2972K(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, interfaceC2876g);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: x */
    public final InterfaceC3085e1 mo209x(InterfaceC2877h interfaceC2877h) {
        Objects.requireNonNull(interfaceC2877h);
        return new C2990N(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, interfaceC2877h);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: y */
    public final InterfaceC3028U mo208y(C3240J c3240j) {
        Objects.requireNonNull(c3240j);
        return new C2972K(this, this, EnumC3088e4.DOUBLE_VALUE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, c3240j);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: z0 */
    final InterfaceC2914A1 mo426z0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m327f(abstractC3206y2, interfaceC2908s, z);
    }
}
