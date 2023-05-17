package p034j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2651I;
import p034j$.util.InterfaceC2727s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.C2689a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3058I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2906e3 extends AbstractC2890c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2906e3(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        super(interfaceC2727s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2906e3(AbstractC2890c abstractC2890c, int i) {
        super(abstractC2890c, i);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3) {
        while (!interfaceC2954m3.mo296o() && interfaceC2727s.mo113b(interfaceC2954m3)) {
        }
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo252B(Object obj, BiFunction biFunction, InterfaceC2690b interfaceC2690b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2690b);
        return m434x0(new C3031z2(EnumC2907e4.REFERENCE, interfaceC2690b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: B0 */
    public final EnumC2907e4 mo410B0() {
        return EnumC2907e4.REFERENCE;
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2847U mo251E(Function function) {
        Objects.requireNonNull(function);
        return new C2791K(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, function);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: K0 */
    final InterfaceC2727s mo409K0(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        return new C2802L4(abstractC3025y2, interfaceC2713y, z);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo250T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2797L(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f923t, predicate);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo249V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2797L(this, this, EnumC2907e4.REFERENCE, 0, consumer);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo248W(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC2964o1.m336x(predicate, EnumC2940k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2904e1 mo247X(Function function) {
        Objects.requireNonNull(function);
        return new C2809N(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, function);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo246a(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC2964o1.m336x(predicate, EnumC2940k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo245b0(C3058I0 c3058i0) {
        Object m434x0;
        if (isParallel() && c3058i0.m213b().contains(EnumC2920h.CONCURRENT) && (!m438C0() || c3058i0.m213b().contains(EnumC2920h.UNORDERED))) {
            m434x0 = c3058i0.m209f().get();
            forEach(new C2962o(c3058i0.m214a(), m434x0));
        } else {
            Objects.requireNonNull(c3058i0);
            InterfaceC2713y m209f = c3058i0.m209f();
            m434x0 = m434x0(new C2782I2(EnumC2907e4.REFERENCE, c3058i0.m212c(), c3058i0.m214a(), m209f, c3058i0));
        }
        return c3058i0.m213b().contains(EnumC2920h.IDENTITY_FINISH) ? m434x0 : c3058i0.m210e().apply(m434x0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo244c(Function function) {
        Objects.requireNonNull(function);
        return new C2803M(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, function);
    }

    @Override // p034j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2898d1) mo241g0(C2865X2.f859a)).sum();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo243d0(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC2964o1.m336x(predicate, EnumC2940k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    public final Stream distinct() {
        return new C2986s(this, EnumC2907e4.REFERENCE, EnumC2901d4.f916m | EnumC2901d4.f923t);
    }

    /* renamed from: e */
    public void mo242e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m434x0(new C2957n0(consumer, true));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m434x0(new C2897d0(false, EnumC2907e4.REFERENCE, Optional.empty(), C2852V.f849a, C2891c0.f897a));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m434x0(new C2897d0(true, EnumC2907e4.REFERENCE, Optional.empty(), C2852V.f849a, C2891c0.f897a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m434x0(new C2957n0(consumer, false));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2904e1 mo241g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2809N(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n, toLongFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo240i(InterfaceC2713y interfaceC2713y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2713y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m434x0(new C3031z2(EnumC2907e4.REFERENCE, biConsumer2, biConsumer, interfaceC2713y));
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public final Iterator iterator() {
        return AbstractC2651I.m618i(spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2847U mo239j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2791K(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n, toDoubleFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo238l(InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m303l(m433y0(interfaceC2701m), interfaceC2701m).mo319q(interfaceC2701m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2741B3.m512i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo237m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2803M(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n, toIntFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo236m0(Object obj, InterfaceC2690b interfaceC2690b) {
        Objects.requireNonNull(interfaceC2690b);
        return m434x0(new C3031z2(EnumC2907e4.REFERENCE, interfaceC2690b, interfaceC2690b, obj));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo233t(new C2689a(comparator, 0));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo233t(new C2689a(comparator, 1));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo235n(Function function) {
        Objects.requireNonNull(function);
        return new C2882a3(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n, function, 0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo234o(Function function) {
        Objects.requireNonNull(function);
        return new C2882a3(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f919p | EnumC2901d4.f917n | EnumC2901d4.f923t, function, 1);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2741B3.m512i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted() {
        return new C2807M3(this);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo233t(InterfaceC2690b interfaceC2690b) {
        Objects.requireNonNull(interfaceC2690b);
        return (Optional) m434x0(new C2752D2(EnumC2907e4.REFERENCE, interfaceC2690b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: t0 */
    public final InterfaceC2988s1 mo289t0(long j, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m311d(j, interfaceC2701m);
    }

    @Override // p034j$.util.stream.Stream
    public final Object[] toArray() {
        C2860W2 c2860w2 = C2860W2.f856a;
        return AbstractC3019x2.m303l(m433y0(c2860w2), c2860w2).mo319q(c2860w2);
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public InterfaceC2914g unordered() {
        return !m438C0() ? this : new C2875Z2(this, this, EnumC2907e4.REFERENCE, EnumC2901d4.f921r);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: z0 */
    final InterfaceC2733A1 mo408z0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m) {
        return AbstractC3019x2.m310e(abstractC3025y2, interfaceC2727s, z, interfaceC2701m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2807M3(this, comparator);
    }
}
