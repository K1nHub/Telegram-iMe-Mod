package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2651I;
import p034j$.util.C2714g;
import p034j$.util.C2716i;
import p034j$.util.C2717j;
import p034j$.util.InterfaceC2722o;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2698j;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2702n;
import p034j$.util.function.InterfaceC2710v;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3075U;
import p034j$.wrappers.C3077W;
import p034j$.wrappers.C3082a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2798L0 extends AbstractC2890c implements IntStream {
    public AbstractC2798L0(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        super(interfaceC2727s, i, z);
    }

    public AbstractC2798L0(AbstractC2890c abstractC2890c, int i) {
        super(abstractC2890c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2727s.InterfaceC2729b m497L0(InterfaceC2727s interfaceC2727s) {
        return m496M0(interfaceC2727s);
    }

    /* renamed from: M0 */
    public static InterfaceC2727s.InterfaceC2729b m496M0(InterfaceC2727s interfaceC2727s) {
        if (interfaceC2727s instanceof InterfaceC2727s.InterfaceC2729b) {
            return (InterfaceC2727s.InterfaceC2729b) interfaceC2727s;
        }
        if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(AbstractC2890c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2847U mo267A(C3077W c3077w) {
        Objects.requireNonNull(c3077w);
        return new C2791K(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, c3077w);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3) {
        InterfaceC2700l c2738b0;
        InterfaceC2727s.InterfaceC2729b m496M0 = m496M0(interfaceC2727s);
        if (interfaceC2954m3 instanceof InterfaceC2700l) {
            c2738b0 = (InterfaceC2700l) interfaceC2954m3;
        } else if (AbstractC2832Q4.f828a) {
            AbstractC2832Q4.m482a(AbstractC2890c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2738b0 = new C2738B0(interfaceC2954m3);
        }
        while (!interfaceC2954m3.mo296o() && m496M0.mo124g(c2738b0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: B0 */
    public final EnumC2907e4 mo410B0() {
        return EnumC2907e4.INT_VALUE;
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo266C(C3075U c3075u) {
        return ((Boolean) m434x0(AbstractC2964o1.m338v(c3075u, EnumC2940k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo265F(C3075U c3075u) {
        return ((Boolean) m434x0(AbstractC2964o1.m338v(c3075u, EnumC2940k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo264I(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        m434x0(new C2945l0(interfaceC2700l, true));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo263J(InterfaceC2701m interfaceC2701m) {
        Objects.requireNonNull(interfaceC2701m);
        return new C2797L(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, interfaceC2701m);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: K0 */
    final InterfaceC2727s mo409K0(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        return new C2979q4(abstractC3025y2, interfaceC2713y, z);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo262N(int i, InterfaceC2698j interfaceC2698j) {
        Objects.requireNonNull(interfaceC2698j);
        return ((Integer) m434x0(new C2800L2(EnumC2907e4.INT_VALUE, interfaceC2698j, i))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo261P(InterfaceC2701m interfaceC2701m) {
        return new C2803M(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, interfaceC2701m);
    }

    /* renamed from: U */
    public void mo260U(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        m434x0(new C2945l0(interfaceC2700l, false));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2717j mo259a0(InterfaceC2698j interfaceC2698j) {
        Objects.requireNonNull(interfaceC2698j);
        return (C2717j) m434x0(new C2752D2(EnumC2907e4.INT_VALUE, interfaceC2698j));
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2847U asDoubleStream() {
        return new C2815O(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n);
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2904e1 asLongStream() {
        return new C2768G0(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2716i average() {
        long[] jArr = (long[]) mo255k0(C3005v0.f1068a, C2999u0.f1063a, C3017x0.f1081a);
        return jArr[0] > 0 ? C2716i.m532d(jArr[1] / jArr[0]) : C2716i.m535a();
    }

    @Override // p034j$.util.stream.IntStream
    public final Stream boxed() {
        return mo263J(C2744C0.f704a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo258c0(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2803M(this, this, EnumC2907e4.INT_VALUE, 0, interfaceC2700l);
    }

    @Override // p034j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2898d1) mo257f(C2756E0.f725a)).sum();
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2906e3) mo263J(C2744C0.f704a)).distinct().mo237m(C3011w0.f1076a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2904e1 mo257f(InterfaceC2702n interfaceC2702n) {
        Objects.requireNonNull(interfaceC2702n);
        return new C2809N(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, interfaceC2702n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2717j findAny() {
        return (C2717j) m434x0(new C2897d0(false, EnumC2907e4.INT_VALUE, C2717j.m531a(), C2862X.f857a, C2879a0.f877a));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2717j findFirst() {
        return (C2717j) m434x0(new C2897d0(true, EnumC2907e4.INT_VALUE, C2717j.m531a(), C2862X.f857a, C2879a0.f877a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo256h(C3075U c3075u) {
        Objects.requireNonNull(c3075u);
        return new C2803M(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f923t, c3075u);
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public final InterfaceC2722o.InterfaceC2723a iterator() {
        return AbstractC2651I.m620g(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public Iterator iterator() {
        return AbstractC2651I.m620g(spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo255k0(InterfaceC2713y interfaceC2713y, InterfaceC2710v interfaceC2710v, BiConsumer biConsumer) {
        C2743C c2743c = new C2743C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2713y);
        Objects.requireNonNull(interfaceC2710v);
        return m434x0(new C3031z2(EnumC2907e4.INT_VALUE, c2743c, interfaceC2710v, interfaceC2713y));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2741B3.m514g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2717j max() {
        return mo259a0(C3029z0.f1099a);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2717j min() {
        return mo259a0(C2732A0.f684a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo254q(C3082a0 c3082a0) {
        Objects.requireNonNull(c3082a0);
        return new C2803M(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f919p | EnumC2901d4.f917n, c3082a0);
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2741B3.m514g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2795K3(this);
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g
    public final InterfaceC2727s.InterfaceC2729b spliterator() {
        return m496M0(super.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m434x0(new C2800L2(EnumC2907e4.INT_VALUE, C3023y0.f1095a, 0))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    public final C2714g summaryStatistics() {
        return (C2714g) mo255k0(C2932j.f971a, C2993t0.f1058a, C2987s0.f1047a);
    }

    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: t0 */
    public final InterfaceC2988s1 mo289t0(long j, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m299p(j);
    }

    @Override // p034j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3019x2.m301n((InterfaceC3012w1) m433y0(C2750D0.f713a)).mo277e();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public InterfaceC2914g unordered() {
        return !m438C0() ? this : new C2774H0(this, this, EnumC2907e4.INT_VALUE, EnumC2901d4.f921r);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo253v(C3075U c3075u) {
        return ((Boolean) m434x0(AbstractC2964o1.m338v(c3075u, EnumC2940k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: z0 */
    final InterfaceC2733A1 mo408z0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m308g(abstractC3025y2, interfaceC2727s, z);
    }
}
