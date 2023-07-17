package p033j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.C2814f;
import p033j$.util.C2842i;
import p033j$.util.InterfaceC2846m;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3177F;
import p033j$.wrappers.C3185J;
/* renamed from: j$.util.stream.T */
/* loaded from: classes2.dex */
public abstract class AbstractC2968T extends AbstractC3016c implements InterfaceC2973U {
    public AbstractC2968T(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    public AbstractC2968T(AbstractC3016c abstractC3016c, int i) {
        super(abstractC3016c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2854a m479L0(InterfaceC2853s interfaceC2853s) {
        return m478M0(interfaceC2853s);
    }

    /* renamed from: M0 */
    public static InterfaceC2853s.InterfaceC2854a m478M0(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s instanceof InterfaceC2853s.InterfaceC2854a) {
            return (InterfaceC2853s.InterfaceC2854a) interfaceC2853s;
        }
        if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(AbstractC3016c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        InterfaceC2820f c2887f;
        InterfaceC2853s.InterfaceC2854a m478M0 = m478M0(interfaceC2853s);
        if (interfaceC3080m3 instanceof InterfaceC2820f) {
            c2887f = (InterfaceC2820f) interfaceC3080m3;
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(AbstractC3016c.class, "using DoubleStream.adapt(Sink<Double> s)");
            throw null;
        } else {
            c2887f = new C2887F(interfaceC3080m3);
        }
        while (!interfaceC3080m3.mo296o() && m478M0.mo131k(c2887f)) {
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo410B0() {
        return EnumC3033e4.DOUBLE_VALUE;
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: G */
    public final C2842i mo205G(InterfaceC2818d interfaceC2818d) {
        Objects.requireNonNull(interfaceC2818d);
        return (C2842i) m434x0(new C2878D2(EnumC3033e4.DOUBLE_VALUE, interfaceC2818d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: H */
    public final Object mo204H(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer) {
        C2869C c2869c = new C2869C(biConsumer, 0);
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(interfaceC2835u);
        return m434x0(new C3157z2(EnumC3033e4.DOUBLE_VALUE, c2869c, interfaceC2835u, interfaceC2839y));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: K */
    public final double mo203K(double d, InterfaceC2818d interfaceC2818d) {
        Objects.requireNonNull(interfaceC2818d);
        return ((Double) m434x0(new C2866B2(EnumC3033e4.DOUBLE_VALUE, interfaceC2818d, d))).doubleValue();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo409K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C3093o4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: M */
    public final Stream mo202M(InterfaceC2821g interfaceC2821g) {
        Objects.requireNonNull(interfaceC2821g);
        return new C2923L(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, interfaceC2821g);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: R */
    public final IntStream mo201R(C3177F c3177f) {
        Objects.requireNonNull(c3177f);
        return new C2929M(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, c3177f);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: Y */
    public final boolean mo200Y(C3173D c3173d) {
        return ((Boolean) m434x0(AbstractC3090o1.m339u(c3173d, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i average() {
        double[] dArr = (double[]) mo204H(C3142x.f1162a, C3130v.f1149a, C2857A.f765a);
        return dArr[2] > 0.0d ? C2842i.m532d(AbstractC3070l.m378a(dArr) / dArr[2]) : C2842i.m535a();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: b */
    public final InterfaceC2973U mo199b(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, 0, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final Stream boxed() {
        return mo202M(C2893G.f825a);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final long count() {
        return ((AbstractC3024d1) mo191x(C2899H.f833a)).sum();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U distinct() {
        return ((AbstractC3032e3) mo202M(C2893G.f825a)).distinct().mo239j0(C3154z.f1180a);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i findAny() {
        return (C2842i) m434x0(new C3023d0(false, EnumC3033e4.DOUBLE_VALUE, C2842i.m535a(), C2983W.f935a, C2998Z.f947a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i findFirst() {
        return (C2842i) m434x0(new C3023d0(true, EnumC3033e4.DOUBLE_VALUE, C2842i.m535a(), C2983W.f935a, C2998Z.f947a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: h0 */
    public final boolean mo198h0(C3173D c3173d) {
        return ((Boolean) m434x0(AbstractC3090o1.m339u(c3173d, EnumC3066k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: i0 */
    public final boolean mo197i0(C3173D c3173d) {
        return ((Boolean) m434x0(AbstractC3090o1.m339u(c3173d, EnumC3066k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2846m iterator() {
        return AbstractC2777I.m621f(spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public Iterator iterator() {
        return AbstractC2777I.m621f(spliterator());
    }

    /* renamed from: j */
    public void mo196j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        m434x0(new C3065k0(interfaceC2820f, false));
    }

    /* renamed from: l0 */
    public void mo195l0(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        m434x0(new C3065k0(interfaceC2820f, true));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m515f(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i max() {
        return mo205G(C2875D.f794a);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2842i min() {
        return mo205G(C2881E.f806a);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: r */
    public final InterfaceC2973U mo193r(C3173D c3173d) {
        Objects.requireNonNull(c3173d);
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1005t, c3173d);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m515f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final InterfaceC2973U sorted() {
        return new C2915J3(this);
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g
    public final InterfaceC2853s.InterfaceC2854a spliterator() {
        return m478M0(super.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final double sum() {
        return AbstractC3070l.m378a((double[]) mo204H(C3148y.f1176a, C3136w.f1157a, C2863B.f777a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final C2814f summaryStatistics() {
        return (C2814f) mo204H(C3052i.f1046a, C3124u.f1144a, C3118t.f1139a);
    }

    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo289t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m305j(j);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public final double[] toArray() {
        return (double[]) AbstractC3145x2.m302m((InterfaceC3126u1) m433y0(C2905I.f839a)).mo277e();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m438C0() ? this : new C2941O(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1003r);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: w */
    public final InterfaceC2973U mo192w(InterfaceC2821g interfaceC2821g) {
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, interfaceC2821g);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: x */
    public final InterfaceC3030e1 mo191x(InterfaceC2822h interfaceC2822h) {
        Objects.requireNonNull(interfaceC2822h);
        return new C2935N(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, interfaceC2822h);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: y */
    public final InterfaceC2973U mo190y(C3185J c3185j) {
        Objects.requireNonNull(c3185j);
        return new C2917K(this, this, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1001p | EnumC3027d4.f999n, c3185j);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo408z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m309f(abstractC3151y2, interfaceC2853s, z);
    }
}
