package p034j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.C2573a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2942I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2790e3 extends AbstractC2774c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2790e3(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        super(interfaceC2611s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2790e3(AbstractC2774c abstractC2774c, int i) {
        super(abstractC2774c, i);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3) {
        while (!interfaceC2838m3.mo311o() && interfaceC2611s.mo128b(interfaceC2838m3)) {
        }
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo267B(Object obj, BiFunction biFunction, InterfaceC2574b interfaceC2574b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2574b);
        return m449x0(new C2915z2(EnumC2791e4.REFERENCE, interfaceC2574b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: B0 */
    public final EnumC2791e4 mo425B0() {
        return EnumC2791e4.REFERENCE;
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2731U mo266E(Function function) {
        Objects.requireNonNull(function);
        return new C2675K(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, function);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: K0 */
    final InterfaceC2611s mo424K0(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        return new C2686L4(abstractC2909y2, interfaceC2597y, z);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo265T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2681L(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f919t, predicate);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo264V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2681L(this, this, EnumC2791e4.REFERENCE, 0, consumer);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo263W(Predicate predicate) {
        return ((Boolean) m449x0(AbstractC2848o1.m351x(predicate, EnumC2824k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2788e1 mo262X(Function function) {
        Objects.requireNonNull(function);
        return new C2693N(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, function);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo261a(Predicate predicate) {
        return ((Boolean) m449x0(AbstractC2848o1.m351x(predicate, EnumC2824k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo260b0(C2942I0 c2942i0) {
        Object m449x0;
        if (isParallel() && c2942i0.m228b().contains(EnumC2804h.CONCURRENT) && (!m453C0() || c2942i0.m228b().contains(EnumC2804h.UNORDERED))) {
            m449x0 = c2942i0.m224f().get();
            forEach(new C2846o(c2942i0.m229a(), m449x0));
        } else {
            Objects.requireNonNull(c2942i0);
            InterfaceC2597y m224f = c2942i0.m224f();
            m449x0 = m449x0(new C2666I2(EnumC2791e4.REFERENCE, c2942i0.m227c(), c2942i0.m229a(), m224f, c2942i0));
        }
        return c2942i0.m228b().contains(EnumC2804h.IDENTITY_FINISH) ? m449x0 : c2942i0.m225e().apply(m449x0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo259c(Function function) {
        Objects.requireNonNull(function);
        return new C2687M(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, function);
    }

    @Override // p034j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2782d1) mo256g0(C2749X2.f855a)).sum();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo258d0(Predicate predicate) {
        return ((Boolean) m449x0(AbstractC2848o1.m351x(predicate, EnumC2824k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    public final Stream distinct() {
        return new C2870s(this, EnumC2791e4.REFERENCE, EnumC2785d4.f912m | EnumC2785d4.f919t);
    }

    /* renamed from: e */
    public void mo257e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m449x0(new C2841n0(consumer, true));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m449x0(new C2781d0(false, EnumC2791e4.REFERENCE, Optional.empty(), C2736V.f845a, C2775c0.f893a));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m449x0(new C2781d0(true, EnumC2791e4.REFERENCE, Optional.empty(), C2736V.f845a, C2775c0.f893a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m449x0(new C2841n0(consumer, false));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2788e1 mo256g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2693N(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n, toLongFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo255i(InterfaceC2597y interfaceC2597y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2597y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m449x0(new C2915z2(EnumC2791e4.REFERENCE, biConsumer2, biConsumer, interfaceC2597y));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public final Iterator iterator() {
        return AbstractC2535I.m634i(spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2731U mo254j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2675K(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n, toDoubleFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo253l(InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m318l(m448y0(interfaceC2585m), interfaceC2585m).mo334q(interfaceC2585m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2625B3.m527i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo252m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2687M(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n, toIntFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo251m0(Object obj, InterfaceC2574b interfaceC2574b) {
        Objects.requireNonNull(interfaceC2574b);
        return m449x0(new C2915z2(EnumC2791e4.REFERENCE, interfaceC2574b, interfaceC2574b, obj));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo248t(new C2573a(comparator, 0));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo248t(new C2573a(comparator, 1));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo250n(Function function) {
        Objects.requireNonNull(function);
        return new C2766a3(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n, function, 0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo249o(Function function) {
        Objects.requireNonNull(function);
        return new C2766a3(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f915p | EnumC2785d4.f913n | EnumC2785d4.f919t, function, 1);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2625B3.m527i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted() {
        return new C2691M3(this);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo248t(InterfaceC2574b interfaceC2574b) {
        Objects.requireNonNull(interfaceC2574b);
        return (Optional) m449x0(new C2636D2(EnumC2791e4.REFERENCE, interfaceC2574b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: t0 */
    public final InterfaceC2872s1 mo304t0(long j, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m326d(j, interfaceC2585m);
    }

    @Override // p034j$.util.stream.Stream
    public final Object[] toArray() {
        C2744W2 c2744w2 = C2744W2.f852a;
        return AbstractC2903x2.m318l(m448y0(c2744w2), c2744w2).mo334q(c2744w2);
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public InterfaceC2798g unordered() {
        return !m453C0() ? this : new C2759Z2(this, this, EnumC2791e4.REFERENCE, EnumC2785d4.f917r);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: z0 */
    final InterfaceC2617A1 mo423z0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m) {
        return AbstractC2903x2.m325e(abstractC2909y2, interfaceC2611s, z, interfaceC2585m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2691M3(this, comparator);
    }
}
