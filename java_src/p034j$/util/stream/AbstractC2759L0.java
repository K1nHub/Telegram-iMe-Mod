package p034j$.util.stream;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.C2675g;
import p034j$.util.C2677i;
import p034j$.util.C2678j;
import p034j$.util.InterfaceC2683o;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2659j;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2663n;
import p034j$.util.function.InterfaceC2671v;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3036U;
import p034j$.wrappers.C3038W;
import p034j$.wrappers.C3043a0;
/* renamed from: j$.util.stream.L0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2759L0 extends AbstractC2851c implements IntStream {
    public AbstractC2759L0(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        super(interfaceC2688s, i, z);
    }

    public AbstractC2759L0(AbstractC2851c abstractC2851c, int i) {
        super(abstractC2851c, i);
    }

    /* renamed from: L0 */
    public static /* synthetic */ InterfaceC2688s.InterfaceC2690b m492L0(InterfaceC2688s interfaceC2688s) {
        return m491M0(interfaceC2688s);
    }

    /* renamed from: M0 */
    public static InterfaceC2688s.InterfaceC2690b m491M0(InterfaceC2688s interfaceC2688s) {
        if (interfaceC2688s instanceof InterfaceC2688s.InterfaceC2690b) {
            return (InterfaceC2688s.InterfaceC2690b) interfaceC2688s;
        }
        if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(AbstractC2851c.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public final InterfaceC2808U mo262A(C3038W c3038w) {
        Objects.requireNonNull(c3038w);
        return new C2752K(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, c3038w);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: A0 */
    final void mo406A0(InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3) {
        InterfaceC2661l c2699b0;
        InterfaceC2688s.InterfaceC2690b m491M0 = m491M0(interfaceC2688s);
        if (interfaceC2915m3 instanceof InterfaceC2661l) {
            c2699b0 = (InterfaceC2661l) interfaceC2915m3;
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(AbstractC2851c.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            c2699b0 = new C2699B0(interfaceC2915m3);
        }
        while (!interfaceC2915m3.mo291o() && m491M0.mo119g(c2699b0)) {
        }
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: B0 */
    public final EnumC2868e4 mo405B0() {
        return EnumC2868e4.INT_VALUE;
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public final boolean mo261C(C3036U c3036u) {
        return ((Boolean) m429x0(AbstractC2925o1.m333v(c3036u, EnumC2901k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public final boolean mo260F(C3036U c3036u) {
        return ((Boolean) m429x0(AbstractC2925o1.m333v(c3036u, EnumC2901k1.ANY))).booleanValue();
    }

    /* renamed from: I */
    public void mo259I(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        m429x0(new C2906l0(interfaceC2661l, true));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public final Stream mo258J(InterfaceC2662m interfaceC2662m) {
        Objects.requireNonNull(interfaceC2662m);
        return new C2758L(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, interfaceC2662m);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: K0 */
    final InterfaceC2688s mo404K0(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        return new C2940q4(abstractC2986y2, interfaceC2674y, z);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public final int mo257N(int i, InterfaceC2659j interfaceC2659j) {
        Objects.requireNonNull(interfaceC2659j);
        return ((Integer) m429x0(new C2761L2(EnumC2868e4.INT_VALUE, interfaceC2659j, i))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public final IntStream mo256P(InterfaceC2662m interfaceC2662m) {
        return new C2764M(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, interfaceC2662m);
    }

    /* renamed from: U */
    public void mo255U(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        m429x0(new C2906l0(interfaceC2661l, false));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public final C2678j mo254a0(InterfaceC2659j interfaceC2659j) {
        Objects.requireNonNull(interfaceC2659j);
        return (C2678j) m429x0(new C2713D2(EnumC2868e4.INT_VALUE, interfaceC2659j));
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2808U asDoubleStream() {
        return new C2776O(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n);
    }

    @Override // p034j$.util.stream.IntStream
    public final InterfaceC2865e1 asLongStream() {
        return new C2729G0(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2677i average() {
        long[] jArr = (long[]) mo250k0(C2966v0.f1065a, C2960u0.f1060a, C2978x0.f1078a);
        return jArr[0] > 0 ? C2677i.m527d(jArr[1] / jArr[0]) : C2677i.m530a();
    }

    @Override // p034j$.util.stream.IntStream
    public final Stream boxed() {
        return mo258J(C2705C0.f701a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public final IntStream mo253c0(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2764M(this, this, EnumC2868e4.INT_VALUE, 0, interfaceC2661l);
    }

    @Override // p034j$.util.stream.IntStream
    public final long count() {
        return ((AbstractC2859d1) mo252f(C2717E0.f722a)).sum();
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2867e3) mo258J(C2705C0.f701a)).distinct().mo232m(C2972w0.f1073a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public final InterfaceC2865e1 mo252f(InterfaceC2663n interfaceC2663n) {
        Objects.requireNonNull(interfaceC2663n);
        return new C2770N(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, interfaceC2663n);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2678j findAny() {
        return (C2678j) m429x0(new C2858d0(false, EnumC2868e4.INT_VALUE, C2678j.m526a(), C2823X.f854a, C2840a0.f874a));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2678j findFirst() {
        return (C2678j) m429x0(new C2858d0(true, EnumC2868e4.INT_VALUE, C2678j.m526a(), C2823X.f854a, C2840a0.f874a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public final IntStream mo251h(C3036U c3036u) {
        Objects.requireNonNull(c3036u);
        return new C2764M(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f920t, c3036u);
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public final InterfaceC2683o.InterfaceC2684a iterator() {
        return AbstractC2612I.m616g(spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public Iterator iterator() {
        return AbstractC2612I.m616g(spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public final Object mo250k0(InterfaceC2674y interfaceC2674y, InterfaceC2671v interfaceC2671v, BiConsumer biConsumer) {
        C2704C c2704c = new C2704C(biConsumer, 1);
        Objects.requireNonNull(interfaceC2674y);
        Objects.requireNonNull(interfaceC2671v);
        return m429x0(new C2992z2(EnumC2868e4.INT_VALUE, c2704c, interfaceC2671v, interfaceC2674y));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC2702B3.m509g(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final C2678j max() {
        return mo254a0(C2990z0.f1096a);
    }

    @Override // p034j$.util.stream.IntStream
    public final C2678j min() {
        return mo254a0(C2693A0.f681a);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public final IntStream mo249q(C3043a0 c3043a0) {
        Objects.requireNonNull(c3043a0);
        return new C2764M(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f916p | EnumC2862d4.f914n, c3043a0);
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2702B3.m509g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2756K3(this);
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g
    public final InterfaceC2688s.InterfaceC2690b spliterator() {
        return m491M0(super.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public final int sum() {
        return ((Integer) m429x0(new C2761L2(EnumC2868e4.INT_VALUE, C2984y0.f1092a, 0))).intValue();
    }

    @Override // p034j$.util.stream.IntStream
    public final C2675g summaryStatistics() {
        return (C2675g) mo250k0(C2893j.f968a, C2954t0.f1055a, C2948s0.f1044a);
    }

    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: t0 */
    public final InterfaceC2949s1 mo284t0(long j, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m294p(j);
    }

    @Override // p034j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2980x2.m296n((InterfaceC2973w1) m428y0(C2711D0.f710a)).mo272e();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public InterfaceC2875g unordered() {
        return !m433C0() ? this : new C2735H0(this, this, EnumC2868e4.INT_VALUE, EnumC2862d4.f918r);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public final boolean mo248v(C3036U c3036u) {
        return ((Boolean) m429x0(AbstractC2925o1.m333v(c3036u, EnumC2901k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: z0 */
    final InterfaceC2694A1 mo403z0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m303g(abstractC2986y2, interfaceC2688s, z);
    }
}
