package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2651I;
import p034j$.util.C2688f;
import p034j$.util.C2716i;
import p034j$.util.InterfaceC2720m;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2692d;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2695g;
import p034j$.util.function.InterfaceC2696h;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2709u;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3047D;
import p034j$.wrappers.C3051F;
import p034j$.wrappers.C3059J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2842T extends AbstractC2890c implements InterfaceC2847U {
    public AbstractC2842T(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        super(interfaceC2727s, i, z);
    }

    public AbstractC2842T(AbstractC2890c abstractC2890c, int i) {
        super(abstractC2890c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2727s.InterfaceC2728a m479L0(InterfaceC2727s interfaceC2727s) {
        return m478M0(interfaceC2727s);
    }

    /* renamed from: M0 */
    public static InterfaceC2727s.InterfaceC2728a m478M0(InterfaceC2727s interfaceC2727s) {
        if (interfaceC2727s instanceof InterfaceC2727s.InterfaceC2728a) {
            return (InterfaceC2727s.InterfaceC2728a) interfaceC2727s;
        }
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(AbstractC2890c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3) {
        InterfaceC2694f c2761f;
        InterfaceC2727s.InterfaceC2728a m478M0 = m478M0(interfaceC2727s);
        if (interfaceC2954m3 instanceof InterfaceC2694f) {
            c2761f = (InterfaceC2694f) interfaceC2954m3;
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(AbstractC2890c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2761f = new C2761F(interfaceC2954m3);
        }
        while (!interfaceC2954m3.mo296o() && m478M0.mo131k(c2761f)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: B0 */
    public final EnumC2907e4 mo410B0() {
        return EnumC2907e4.DOUBLE_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: G */
    public final C2716i mo205G(InterfaceC2692d interfaceC2692d) {
        Objects.requireNonNull(interfaceC2692d);
        return (C2716i) m434x0(new C2752D2(EnumC2907e4.DOUBLE_VALUE, interfaceC2692d));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: H */
    public final Object mo204H(InterfaceC2713y interfaceC2713y, InterfaceC2709u interfaceC2709u, BiConsumer biConsumer) {
        C2743C c2743c = new C2743C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2713y);
        Objects.requireNonNull(interfaceC2709u);
        return m434x0(new C3031z2(EnumC2907e4.DOUBLE_VALUE, c2743c, interfaceC2709u, interfaceC2713y));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: K */
    public final double mo203K(double d, InterfaceC2692d interfaceC2692d) {
        Objects.requireNonNull(interfaceC2692d);
        return ((Double) m434x0(new C2740B2(EnumC2907e4.DOUBLE_VALUE, interfaceC2692d, d))).doubleValue();
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: K0 */
    final InterfaceC2727s mo409K0(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        return new C2967o4(abstractC3025y2, interfaceC2713y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: M */
    public final Stream mo202M(InterfaceC2695g interfaceC2695g) {
        Objects.requireNonNull(interfaceC2695g);
        return new C2797L(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, interfaceC2695g);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: R */
    public final IntStream mo201R(C3051F c3051f) {
        Objects.requireNonNull(c3051f);
        return new C2803M(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, c3051f);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: Y */
    public final boolean mo200Y(C3047D c3047d) {
        return ((Boolean) m434x0(AbstractC2964o1.m339u(c3047d, EnumC2940k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final C2716i average() {
        double[] dArr = (double[]) mo204H(C3016x.f1080a, C3004v.f1067a, C2731A.f683a);
        return dArr[2] > 0.0d ? C2716i.m532d(AbstractC2944l.m378a(dArr) / dArr[2]) : C2716i.m535a();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: b */
    public final InterfaceC2847U mo199b(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2791K(this, this, EnumC2907e4.DOUBLE_VALUE, 0, interfaceC2694f);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final Stream boxed() {
        return mo202M(C2767G.f743a);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final long count() {
        return ((AbstractC2898d1) mo191x(C2773H.f751a)).sum();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final InterfaceC2847U distinct() {
        return ((AbstractC2906e3) mo202M(C2767G.f743a)).distinct().mo239j0(C3028z.f1098a);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final C2716i findAny() {
        return (C2716i) m434x0(new C2897d0(false, EnumC2907e4.DOUBLE_VALUE, C2716i.m535a(), C2857W.f853a, C2872Z.f865a));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final C2716i findFirst() {
        return (C2716i) m434x0(new C2897d0(true, EnumC2907e4.DOUBLE_VALUE, C2716i.m535a(), C2857W.f853a, C2872Z.f865a));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: h0 */
    public final boolean mo198h0(C3047D c3047d) {
        return ((Boolean) m434x0(AbstractC2964o1.m339u(c3047d, EnumC2940k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: i0 */
    public final boolean mo197i0(C3047D c3047d) {
        return ((Boolean) m434x0(AbstractC2964o1.m339u(c3047d, EnumC2940k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public final InterfaceC2720m iterator() {
        return AbstractC2651I.m621f(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public Iterator iterator() {
        return AbstractC2651I.m621f(spliterator());
    }

    /* renamed from: j */
    public void mo196j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        m434x0(new C2939k0(interfaceC2694f, false));
    }

    /* renamed from: l0 */
    public void mo195l0(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        m434x0(new C2939k0(interfaceC2694f, true));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final InterfaceC2847U limit(long j) {
        if (j >= 0) {
            return AbstractC2741B3.m515f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final C2716i max() {
        return mo205G(C2749D.f712a);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final C2716i min() {
        return mo205G(C2755E.f724a);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: r */
    public final InterfaceC2847U mo193r(C3047D c3047d) {
        Objects.requireNonNull(c3047d);
        return new C2791K(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f923t, c3047d);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final InterfaceC2847U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2741B3.m515f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final InterfaceC2847U sorted() {
        return new C2789J3(this);
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g
    public final InterfaceC2727s.InterfaceC2728a spliterator() {
        return m478M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final double sum() {
        return AbstractC2944l.m378a((double[]) mo204H(C3022y.f1094a, C3010w.f1075a, C2737B.f695a));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final C2688f summaryStatistics() {
        return (C2688f) mo204H(C2926i.f964a, C2998u.f1062a, C2992t.f1057a);
    }

    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: t0 */
    public final InterfaceC2988s1 mo289t0(long j, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m305j(j);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public final double[] toArray() {
        return (double[]) AbstractC3019x2.m302m((InterfaceC3000u1) m433y0(C2779I.f757a)).mo277e();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public InterfaceC2914g unordered() {
        return !m438C0() ? this : new C2815O(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f921r);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: w */
    public final InterfaceC2847U mo192w(InterfaceC2695g interfaceC2695g) {
        return new C2791K(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, interfaceC2695g);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: x */
    public final InterfaceC2904e1 mo191x(InterfaceC2696h interfaceC2696h) {
        Objects.requireNonNull(interfaceC2696h);
        return new C2809N(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, interfaceC2696h);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: y */
    public final InterfaceC2847U mo190y(C3059J c3059j) {
        Objects.requireNonNull(c3059j);
        return new C2791K(this, this, EnumC2907e4.DOUBLE_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, c3059j);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: z0 */
    final InterfaceC2733A1 mo408z0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m309f(abstractC3025y2, interfaceC2727s, z);
    }
}
