package p034j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.C2694a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3063I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2911e3 extends AbstractC2895c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2911e3(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2911e3(AbstractC2895c abstractC2895c, int i) {
        super(abstractC2895c, i);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3) {
        while (!interfaceC2959m3.mo296o() && interfaceC2732s.mo113b(interfaceC2959m3)) {
        }
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo252B(Object obj, BiFunction biFunction, InterfaceC2695b interfaceC2695b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2695b);
        return m434x0(new C3036z2(EnumC2912e4.REFERENCE, interfaceC2695b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: B0 */
    public final EnumC2912e4 mo410B0() {
        return EnumC2912e4.REFERENCE;
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2852U mo251E(Function function) {
        Objects.requireNonNull(function);
        return new C2796K(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, function);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: K0 */
    final InterfaceC2732s mo409K0(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        return new C2807L4(abstractC3030y2, interfaceC2718y, z);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo250T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2802L(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f923t, predicate);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo249V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2802L(this, this, EnumC2912e4.REFERENCE, 0, consumer);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo248W(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC2969o1.m336x(predicate, EnumC2945k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2909e1 mo247X(Function function) {
        Objects.requireNonNull(function);
        return new C2814N(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, function);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo246a(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC2969o1.m336x(predicate, EnumC2945k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo245b0(C3063I0 c3063i0) {
        Object m434x0;
        if (isParallel() && c3063i0.m213b().contains(EnumC2925h.CONCURRENT) && (!m438C0() || c3063i0.m213b().contains(EnumC2925h.UNORDERED))) {
            m434x0 = c3063i0.m209f().get();
            forEach(new C2967o(c3063i0.m214a(), m434x0));
        } else {
            Objects.requireNonNull(c3063i0);
            InterfaceC2718y m209f = c3063i0.m209f();
            m434x0 = m434x0(new C2787I2(EnumC2912e4.REFERENCE, c3063i0.m212c(), c3063i0.m214a(), m209f, c3063i0));
        }
        return c3063i0.m213b().contains(EnumC2925h.IDENTITY_FINISH) ? m434x0 : c3063i0.m210e().apply(m434x0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo244c(Function function) {
        Objects.requireNonNull(function);
        return new C2808M(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, function);
    }

    @Override // p034j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2903d1) mo241g0(C2870X2.f859a)).sum();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo243d0(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC2969o1.m336x(predicate, EnumC2945k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    public final Stream distinct() {
        return new C2991s(this, EnumC2912e4.REFERENCE, EnumC2906d4.f916m | EnumC2906d4.f923t);
    }

    /* renamed from: e */
    public void mo242e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m434x0(new C2962n0(consumer, true));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m434x0(new C2902d0(false, EnumC2912e4.REFERENCE, Optional.empty(), C2857V.f849a, C2896c0.f897a));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m434x0(new C2902d0(true, EnumC2912e4.REFERENCE, Optional.empty(), C2857V.f849a, C2896c0.f897a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m434x0(new C2962n0(consumer, false));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2909e1 mo241g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2814N(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n, toLongFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo240i(InterfaceC2718y interfaceC2718y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2718y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m434x0(new C3036z2(EnumC2912e4.REFERENCE, biConsumer2, biConsumer, interfaceC2718y));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public final Iterator iterator() {
        return AbstractC2656I.m618i(spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2852U mo239j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2796K(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n, toDoubleFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo238l(InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m303l(m433y0(interfaceC2706m), interfaceC2706m).mo319q(interfaceC2706m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2746B3.m512i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo237m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2808M(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n, toIntFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo236m0(Object obj, InterfaceC2695b interfaceC2695b) {
        Objects.requireNonNull(interfaceC2695b);
        return m434x0(new C3036z2(EnumC2912e4.REFERENCE, interfaceC2695b, interfaceC2695b, obj));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo233t(new C2694a(comparator, 0));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo233t(new C2694a(comparator, 1));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo235n(Function function) {
        Objects.requireNonNull(function);
        return new C2887a3(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n, function, 0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo234o(Function function) {
        Objects.requireNonNull(function);
        return new C2887a3(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f919p | EnumC2906d4.f917n | EnumC2906d4.f923t, function, 1);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2746B3.m512i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted() {
        return new C2812M3(this);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo233t(InterfaceC2695b interfaceC2695b) {
        Objects.requireNonNull(interfaceC2695b);
        return (Optional) m434x0(new C2757D2(EnumC2912e4.REFERENCE, interfaceC2695b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: t0 */
    public final InterfaceC2993s1 mo289t0(long j, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m311d(j, interfaceC2706m);
    }

    @Override // p034j$.util.stream.Stream
    public final Object[] toArray() {
        C2865W2 c2865w2 = C2865W2.f856a;
        return AbstractC3024x2.m303l(m433y0(c2865w2), c2865w2).mo319q(c2865w2);
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public InterfaceC2919g unordered() {
        return !m438C0() ? this : new C2880Z2(this, this, EnumC2912e4.REFERENCE, EnumC2906d4.f921r);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: z0 */
    final InterfaceC2738A1 mo408z0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m) {
        return AbstractC3024x2.m310e(abstractC3030y2, interfaceC2732s, z, interfaceC2706m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2812M3(this, comparator);
    }
}
