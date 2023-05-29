package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.C2693f;
import p034j$.util.C2721i;
import p034j$.util.InterfaceC2725m;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2697d;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2700g;
import p034j$.util.function.InterfaceC2701h;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2714u;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3052D;
import p034j$.wrappers.C3056F;
import p034j$.wrappers.C3064J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2847T extends AbstractC2895c implements InterfaceC2852U {
    public AbstractC2847T(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    public AbstractC2847T(AbstractC2895c abstractC2895c, int i) {
        super(abstractC2895c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2732s.InterfaceC2733a m479L0(InterfaceC2732s interfaceC2732s) {
        return m478M0(interfaceC2732s);
    }

    /* renamed from: M0 */
    public static InterfaceC2732s.InterfaceC2733a m478M0(InterfaceC2732s interfaceC2732s) {
        if (interfaceC2732s instanceof InterfaceC2732s.InterfaceC2733a) {
            return (InterfaceC2732s.InterfaceC2733a) interfaceC2732s;
        }
        if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(AbstractC2895c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3) {
        InterfaceC2699f c2766f;
        InterfaceC2732s.InterfaceC2733a m478M0 = m478M0(interfaceC2732s);
        if (interfaceC2959m3 instanceof InterfaceC2699f) {
            c2766f = (InterfaceC2699f) interfaceC2959m3;
        } else if (AbstractC2837Q4.f828a) {
            AbstractC2837Q4.m482a(AbstractC2895c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2766f = new C2766F(interfaceC2959m3);
        }
        while (!interfaceC2959m3.mo296o() && m478M0.mo131k(c2766f)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: B0 */
    public final EnumC2912e4 mo410B0() {
        return EnumC2912e4.DOUBLE_VALUE;
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: G */
    public final C2721i mo205G(InterfaceC2697d interfaceC2697d) {
        Objects.requireNonNull(interfaceC2697d);
        return (C2721i) m434x0(new C2757D2(EnumC2912e4.DOUBLE_VALUE, interfaceC2697d));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: H */
    public final Object mo204H(InterfaceC2718y interfaceC2718y, InterfaceC2714u interfaceC2714u, BiConsumer biConsumer) {
        C2748C c2748c = new C2748C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2718y);
        Objects.requireNonNull(interfaceC2714u);
        return m434x0(new C3036z2(EnumC2912e4.DOUBLE_VALUE, c2748c, interfaceC2714u, interfaceC2718y));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: K */
    public final double mo203K(double d, InterfaceC2697d interfaceC2697d) {
        Objects.requireNonNull(interfaceC2697d);
        return ((Double) m434x0(new C2745B2(EnumC2912e4.DOUBLE_VALUE, interfaceC2697d, d))).doubleValue();
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: K0 */
    final InterfaceC2732s mo409K0(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        return new C2972o4(abstractC3030y2, interfaceC2718y, z);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: M */
    public final Stream mo202M(InterfaceC2700g interfaceC2700g) {
        Objects.requireNonNull(interfaceC2700g);
        return new C2802L(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, interfaceC2700g);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: R */
    public final IntStream mo201R(C3056F c3056f) {
        Objects.requireNonNull(c3056f);
        return new C2808M(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, c3056f);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: Y */
    public final boolean mo200Y(C3052D c3052d) {
        return ((Boolean) m434x0(AbstractC2969o1.m339u(c3052d, EnumC2945k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final C2721i average() {
        double[] dArr = (double[]) mo204H(C3021x.f1080a, C3009v.f1067a, C2736A.f683a);
        return dArr[2] > 0.0d ? C2721i.m532d(AbstractC2949l.m378a(dArr) / dArr[2]) : C2721i.m535a();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: b */
    public final InterfaceC2852U mo199b(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2796K(this, this, EnumC2912e4.DOUBLE_VALUE, 0, interfaceC2699f);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final Stream boxed() {
        return mo202M(C2772G.f743a);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final long count() {
        return ((AbstractC2903d1) mo191x(C2778H.f751a)).sum();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final InterfaceC2852U distinct() {
        return ((AbstractC2911e3) mo202M(C2772G.f743a)).distinct().mo239j0(C3033z.f1098a);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final C2721i findAny() {
        return (C2721i) m434x0(new C2902d0(false, EnumC2912e4.DOUBLE_VALUE, C2721i.m535a(), C2862W.f853a, C2877Z.f865a));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final C2721i findFirst() {
        return (C2721i) m434x0(new C2902d0(true, EnumC2912e4.DOUBLE_VALUE, C2721i.m535a(), C2862W.f853a, C2877Z.f865a));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: h0 */
    public final boolean mo198h0(C3052D c3052d) {
        return ((Boolean) m434x0(AbstractC2969o1.m339u(c3052d, EnumC2945k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: i0 */
    public final boolean mo197i0(C3052D c3052d) {
        return ((Boolean) m434x0(AbstractC2969o1.m339u(c3052d, EnumC2945k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public final InterfaceC2725m iterator() {
        return AbstractC2656I.m621f(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public Iterator iterator() {
        return AbstractC2656I.m621f(spliterator());
    }

    /* renamed from: j */
    public void mo196j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        m434x0(new C2944k0(interfaceC2699f, false));
    }

    /* renamed from: l0 */
    public void mo195l0(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        m434x0(new C2944k0(interfaceC2699f, true));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final InterfaceC2852U limit(long j) {
        if (j >= 0) {
            return AbstractC2746B3.m515f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final C2721i max() {
        return mo205G(C2754D.f712a);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final C2721i min() {
        return mo205G(C2760E.f724a);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: r */
    public final InterfaceC2852U mo193r(C3052D c3052d) {
        Objects.requireNonNull(c3052d);
        return new C2796K(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f923t, c3052d);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final InterfaceC2852U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2746B3.m515f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final InterfaceC2852U sorted() {
        return new C2794J3(this);
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g
    public final InterfaceC2732s.InterfaceC2733a spliterator() {
        return m478M0(super.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final double sum() {
        return AbstractC2949l.m378a((double[]) mo204H(C3027y.f1094a, C3015w.f1075a, C2742B.f695a));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final C2693f summaryStatistics() {
        return (C2693f) mo204H(C2931i.f964a, C3003u.f1062a, C2997t.f1057a);
    }

    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: t0 */
    public final InterfaceC2993s1 mo289t0(long j, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m305j(j);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public final double[] toArray() {
        return (double[]) AbstractC3024x2.m302m((InterfaceC3005u1) m433y0(C2784I.f757a)).mo277e();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public InterfaceC2919g unordered() {
        return !m438C0() ? this : new C2820O(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f921r);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: w */
    public final InterfaceC2852U mo192w(InterfaceC2700g interfaceC2700g) {
        return new C2796K(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, interfaceC2700g);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: x */
    public final InterfaceC2909e1 mo191x(InterfaceC2701h interfaceC2701h) {
        Objects.requireNonNull(interfaceC2701h);
        return new C2814N(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, interfaceC2701h);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: y */
    public final InterfaceC2852U mo190y(C3064J c3064j) {
        Objects.requireNonNull(c3064j);
        return new C2796K(this, this, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f919p | EnumC2906d4.f917n, c3064j);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: z0 */
    final InterfaceC2738A1 mo408z0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m309f(abstractC3030y2, interfaceC2732s, z);
    }
}
