package p035j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.C2662f;
import p035j$.util.C2690i;
import p035j$.util.InterfaceC2694m;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2666d;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2669g;
import p035j$.util.function.InterfaceC2670h;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2683u;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3021D;
import p035j$.wrappers.C3025F;
import p035j$.wrappers.C3033J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2816T extends AbstractC2864c implements InterfaceC2821U {
    public AbstractC2816T(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        super(interfaceC2701s, i, z);
    }

    public AbstractC2816T(AbstractC2864c abstractC2864c, int i) {
        super(abstractC2864c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2701s.InterfaceC2702a m488L0(InterfaceC2701s interfaceC2701s) {
        return m487M0(interfaceC2701s);
    }

    /* renamed from: M0 */
    public static InterfaceC2701s.InterfaceC2702a m487M0(InterfaceC2701s interfaceC2701s) {
        if (interfaceC2701s instanceof InterfaceC2701s.InterfaceC2702a) {
            return (InterfaceC2701s.InterfaceC2702a) interfaceC2701s;
        }
        if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(AbstractC2864c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: A0 */
    final void mo420A0(InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3) {
        InterfaceC2668f c2735f;
        InterfaceC2701s.InterfaceC2702a m487M0 = m487M0(interfaceC2701s);
        if (interfaceC2928m3 instanceof InterfaceC2668f) {
            c2735f = (InterfaceC2668f) interfaceC2928m3;
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(AbstractC2864c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2735f = new C2735F(interfaceC2928m3);
        }
        while (!interfaceC2928m3.mo305o() && m487M0.mo140k(c2735f)) {
        }
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: B0 */
    public final EnumC2881e4 mo419B0() {
        return EnumC2881e4.DOUBLE_VALUE;
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: G */
    public final C2690i mo214G(InterfaceC2666d interfaceC2666d) {
        Objects.requireNonNull(interfaceC2666d);
        return (C2690i) m443x0(new C2726D2(EnumC2881e4.DOUBLE_VALUE, interfaceC2666d));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: H */
    public final Object mo213H(InterfaceC2687y interfaceC2687y, InterfaceC2683u interfaceC2683u, BiConsumer biConsumer) {
        C2717C c2717c = new C2717C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2687y);
        Objects.requireNonNull(interfaceC2683u);
        return m443x0(new C3005z2(EnumC2881e4.DOUBLE_VALUE, c2717c, interfaceC2683u, interfaceC2687y));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: K */
    public final double mo212K(double d, InterfaceC2666d interfaceC2666d) {
        Objects.requireNonNull(interfaceC2666d);
        return ((Double) m443x0(new C2714B2(EnumC2881e4.DOUBLE_VALUE, interfaceC2666d, d))).doubleValue();
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: K0 */
    final InterfaceC2701s mo418K0(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        return new C2941o4(abstractC2999y2, interfaceC2687y, z);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: M */
    public final Stream mo211M(InterfaceC2669g interfaceC2669g) {
        Objects.requireNonNull(interfaceC2669g);
        return new C2771L(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, interfaceC2669g);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: R */
    public final IntStream mo210R(C3025F c3025f) {
        Objects.requireNonNull(c3025f);
        return new C2777M(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, c3025f);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: Y */
    public final boolean mo209Y(C3021D c3021d) {
        return ((Boolean) m443x0(AbstractC2938o1.m348u(c3021d, EnumC2914k1.ALL))).booleanValue();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final C2690i average() {
        double[] dArr = (double[]) mo213H(C2990x.f1082a, C2978v.f1069a, C2705A.f685a);
        return dArr[2] > 0.0d ? C2690i.m541d(AbstractC2918l.m387a(dArr) / dArr[2]) : C2690i.m544a();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: b */
    public final InterfaceC2821U mo208b(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2765K(this, this, EnumC2881e4.DOUBLE_VALUE, 0, interfaceC2668f);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final Stream boxed() {
        return mo211M(C2741G.f745a);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final long count() {
        return ((AbstractC2872d1) mo200x(C2747H.f753a)).sum();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final InterfaceC2821U distinct() {
        return ((AbstractC2880e3) mo211M(C2741G.f745a)).distinct().mo248j0(C3002z.f1100a);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final C2690i findAny() {
        return (C2690i) m443x0(new C2871d0(false, EnumC2881e4.DOUBLE_VALUE, C2690i.m544a(), C2831W.f855a, C2846Z.f867a));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final C2690i findFirst() {
        return (C2690i) m443x0(new C2871d0(true, EnumC2881e4.DOUBLE_VALUE, C2690i.m544a(), C2831W.f855a, C2846Z.f867a));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: h0 */
    public final boolean mo207h0(C3021D c3021d) {
        return ((Boolean) m443x0(AbstractC2938o1.m348u(c3021d, EnumC2914k1.ANY))).booleanValue();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: i0 */
    public final boolean mo206i0(C3021D c3021d) {
        return ((Boolean) m443x0(AbstractC2938o1.m348u(c3021d, EnumC2914k1.NONE))).booleanValue();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public final InterfaceC2694m iterator() {
        return AbstractC2625I.m631f(spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public Iterator iterator() {
        return AbstractC2625I.m631f(spliterator());
    }

    /* renamed from: j */
    public void mo205j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        m443x0(new C2913k0(interfaceC2668f, false));
    }

    /* renamed from: l0 */
    public void mo204l0(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        m443x0(new C2913k0(interfaceC2668f, true));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final InterfaceC2821U limit(long j) {
        if (j >= 0) {
            return AbstractC2715B3.m524f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final C2690i max() {
        return mo214G(C2723D.f714a);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final C2690i min() {
        return mo214G(C2729E.f726a);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: r */
    public final InterfaceC2821U mo202r(C3021D c3021d) {
        Objects.requireNonNull(c3021d);
        return new C2765K(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f925t, c3021d);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final InterfaceC2821U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2715B3.m524f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final InterfaceC2821U sorted() {
        return new C2763J3(this);
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g
    public final InterfaceC2701s.InterfaceC2702a spliterator() {
        return m487M0(super.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final double sum() {
        return AbstractC2918l.m387a((double[]) mo213H(C2996y.f1096a, C2984w.f1077a, C2711B.f697a));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final C2662f summaryStatistics() {
        return (C2662f) mo213H(C2900i.f966a, C2972u.f1064a, C2966t.f1059a);
    }

    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: t0 */
    public final InterfaceC2962s1 mo298t0(long j, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m314j(j);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public final double[] toArray() {
        return (double[]) AbstractC2993x2.m311m((InterfaceC2974u1) m442y0(C2753I.f759a)).mo286e();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public InterfaceC2888g unordered() {
        return !m447C0() ? this : new C2789O(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f923r);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: w */
    public final InterfaceC2821U mo201w(InterfaceC2669g interfaceC2669g) {
        return new C2765K(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, interfaceC2669g);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: x */
    public final InterfaceC2878e1 mo200x(InterfaceC2670h interfaceC2670h) {
        Objects.requireNonNull(interfaceC2670h);
        return new C2783N(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, interfaceC2670h);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: y */
    public final InterfaceC2821U mo199y(C3033J c3033j) {
        Objects.requireNonNull(c3033j);
        return new C2765K(this, this, EnumC2881e4.DOUBLE_VALUE, EnumC2875d4.f921p | EnumC2875d4.f919n, c3033j);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: z0 */
    final InterfaceC2707A1 mo417z0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m318f(abstractC2999y2, interfaceC2701s, z);
    }
}
