package p034j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.C2449a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2818I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2666e3 extends AbstractC2650c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2666e3(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        super(interfaceC2487s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2666e3(AbstractC2650c abstractC2650c, int i) {
        super(abstractC2650c, i);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: A0 */
    final void mo426A0(InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3) {
        while (!interfaceC2714m3.mo311o() && interfaceC2487s.mo128b(interfaceC2714m3)) {
        }
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo267B(Object obj, BiFunction biFunction, InterfaceC2450b interfaceC2450b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2450b);
        return m449x0(new C2791z2(EnumC2667e4.REFERENCE, interfaceC2450b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: B0 */
    public final EnumC2667e4 mo425B0() {
        return EnumC2667e4.REFERENCE;
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2607U mo266E(Function function) {
        Objects.requireNonNull(function);
        return new C2551K(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, function);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: K0 */
    final InterfaceC2487s mo424K0(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        return new C2562L4(abstractC2785y2, interfaceC2473y, z);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo265T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2557L(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f914t, predicate);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo264V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2557L(this, this, EnumC2667e4.REFERENCE, 0, consumer);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo263W(Predicate predicate) {
        return ((Boolean) m449x0(AbstractC2724o1.m351x(predicate, EnumC2700k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2664e1 mo262X(Function function) {
        Objects.requireNonNull(function);
        return new C2569N(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, function);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo261a(Predicate predicate) {
        return ((Boolean) m449x0(AbstractC2724o1.m351x(predicate, EnumC2700k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo260b0(C2818I0 c2818i0) {
        Object m449x0;
        if (isParallel() && c2818i0.m228b().contains(EnumC2680h.CONCURRENT) && (!m453C0() || c2818i0.m228b().contains(EnumC2680h.UNORDERED))) {
            m449x0 = c2818i0.m224f().get();
            forEach(new C2722o(c2818i0.m229a(), m449x0));
        } else {
            Objects.requireNonNull(c2818i0);
            InterfaceC2473y m224f = c2818i0.m224f();
            m449x0 = m449x0(new C2542I2(EnumC2667e4.REFERENCE, c2818i0.m227c(), c2818i0.m229a(), m224f, c2818i0));
        }
        return c2818i0.m228b().contains(EnumC2680h.IDENTITY_FINISH) ? m449x0 : c2818i0.m225e().apply(m449x0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo259c(Function function) {
        Objects.requireNonNull(function);
        return new C2563M(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, function);
    }

    @Override // p034j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2658d1) mo256g0(C2625X2.f850a)).sum();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo258d0(Predicate predicate) {
        return ((Boolean) m449x0(AbstractC2724o1.m351x(predicate, EnumC2700k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    public final Stream distinct() {
        return new C2746s(this, EnumC2667e4.REFERENCE, EnumC2661d4.f907m | EnumC2661d4.f914t);
    }

    /* renamed from: e */
    public void mo257e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m449x0(new C2717n0(consumer, true));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m449x0(new C2657d0(false, EnumC2667e4.REFERENCE, Optional.empty(), C2612V.f840a, C2651c0.f888a));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m449x0(new C2657d0(true, EnumC2667e4.REFERENCE, Optional.empty(), C2612V.f840a, C2651c0.f888a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m449x0(new C2717n0(consumer, false));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2664e1 mo256g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2569N(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n, toLongFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo255i(InterfaceC2473y interfaceC2473y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2473y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m449x0(new C2791z2(EnumC2667e4.REFERENCE, biConsumer2, biConsumer, interfaceC2473y));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public final Iterator iterator() {
        return AbstractC2411I.m634i(spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2607U mo254j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2551K(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n, toDoubleFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo253l(InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m318l(m448y0(interfaceC2461m), interfaceC2461m).mo334q(interfaceC2461m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2501B3.m527i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo252m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2563M(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n, toIntFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo251m0(Object obj, InterfaceC2450b interfaceC2450b) {
        Objects.requireNonNull(interfaceC2450b);
        return m449x0(new C2791z2(EnumC2667e4.REFERENCE, interfaceC2450b, interfaceC2450b, obj));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo248t(new C2449a(comparator, 0));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo248t(new C2449a(comparator, 1));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo250n(Function function) {
        Objects.requireNonNull(function);
        return new C2642a3(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n, function, 0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo249o(Function function) {
        Objects.requireNonNull(function);
        return new C2642a3(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f910p | EnumC2661d4.f908n | EnumC2661d4.f914t, function, 1);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2501B3.m527i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted() {
        return new C2567M3(this);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo248t(InterfaceC2450b interfaceC2450b) {
        Objects.requireNonNull(interfaceC2450b);
        return (Optional) m449x0(new C2512D2(EnumC2667e4.REFERENCE, interfaceC2450b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: t0 */
    public final InterfaceC2748s1 mo304t0(long j, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m326d(j, interfaceC2461m);
    }

    @Override // p034j$.util.stream.Stream
    public final Object[] toArray() {
        C2620W2 c2620w2 = C2620W2.f847a;
        return AbstractC2779x2.m318l(m448y0(c2620w2), c2620w2).mo334q(c2620w2);
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public InterfaceC2674g unordered() {
        return !m453C0() ? this : new C2635Z2(this, this, EnumC2667e4.REFERENCE, EnumC2661d4.f912r);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: z0 */
    final InterfaceC2493A1 mo423z0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m) {
        return AbstractC2779x2.m325e(abstractC2785y2, interfaceC2487s, z, interfaceC2461m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2567M3(this, comparator);
    }
}
