package p034j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.C2587a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2956I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2804e3 extends AbstractC2788c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2804e3(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        super(interfaceC2625s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2804e3(AbstractC2788c abstractC2788c, int i) {
        super(abstractC2788c, i);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: A0 */
    final void mo425A0(InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3) {
        while (!interfaceC2852m3.mo310o() && interfaceC2625s.mo127b(interfaceC2852m3)) {
        }
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo266B(Object obj, BiFunction biFunction, InterfaceC2588b interfaceC2588b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2588b);
        return m448x0(new C2929z2(EnumC2805e4.REFERENCE, interfaceC2588b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: B0 */
    public final EnumC2805e4 mo424B0() {
        return EnumC2805e4.REFERENCE;
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2745U mo265E(Function function) {
        Objects.requireNonNull(function);
        return new C2689K(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, function);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: K0 */
    final InterfaceC2625s mo423K0(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        return new C2700L4(abstractC2923y2, interfaceC2611y, z);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo264T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2695L(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f920t, predicate);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo263V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2695L(this, this, EnumC2805e4.REFERENCE, 0, consumer);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo262W(Predicate predicate) {
        return ((Boolean) m448x0(AbstractC2862o1.m350x(predicate, EnumC2838k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2802e1 mo261X(Function function) {
        Objects.requireNonNull(function);
        return new C2707N(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, function);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo260a(Predicate predicate) {
        return ((Boolean) m448x0(AbstractC2862o1.m350x(predicate, EnumC2838k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo259b0(C2956I0 c2956i0) {
        Object m448x0;
        if (isParallel() && c2956i0.m227b().contains(EnumC2818h.CONCURRENT) && (!m452C0() || c2956i0.m227b().contains(EnumC2818h.UNORDERED))) {
            m448x0 = c2956i0.m223f().get();
            forEach(new C2860o(c2956i0.m228a(), m448x0));
        } else {
            Objects.requireNonNull(c2956i0);
            InterfaceC2611y m223f = c2956i0.m223f();
            m448x0 = m448x0(new C2680I2(EnumC2805e4.REFERENCE, c2956i0.m226c(), c2956i0.m228a(), m223f, c2956i0));
        }
        return c2956i0.m227b().contains(EnumC2818h.IDENTITY_FINISH) ? m448x0 : c2956i0.m224e().apply(m448x0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo258c(Function function) {
        Objects.requireNonNull(function);
        return new C2701M(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, function);
    }

    @Override // p034j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2796d1) mo255g0(C2763X2.f856a)).sum();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo257d0(Predicate predicate) {
        return ((Boolean) m448x0(AbstractC2862o1.m350x(predicate, EnumC2838k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    public final Stream distinct() {
        return new C2884s(this, EnumC2805e4.REFERENCE, EnumC2799d4.f913m | EnumC2799d4.f920t);
    }

    /* renamed from: e */
    public void mo256e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m448x0(new C2855n0(consumer, true));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m448x0(new C2795d0(false, EnumC2805e4.REFERENCE, Optional.empty(), C2750V.f846a, C2789c0.f894a));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m448x0(new C2795d0(true, EnumC2805e4.REFERENCE, Optional.empty(), C2750V.f846a, C2789c0.f894a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m448x0(new C2855n0(consumer, false));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2802e1 mo255g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2707N(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n, toLongFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo254i(InterfaceC2611y interfaceC2611y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2611y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m448x0(new C2929z2(EnumC2805e4.REFERENCE, biConsumer2, biConsumer, interfaceC2611y));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public final Iterator iterator() {
        return AbstractC2549I.m633i(spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2745U mo253j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2689K(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n, toDoubleFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo252l(InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m317l(m447y0(interfaceC2599m), interfaceC2599m).mo333q(interfaceC2599m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2639B3.m526i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo251m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2701M(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n, toIntFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo250m0(Object obj, InterfaceC2588b interfaceC2588b) {
        Objects.requireNonNull(interfaceC2588b);
        return m448x0(new C2929z2(EnumC2805e4.REFERENCE, interfaceC2588b, interfaceC2588b, obj));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo247t(new C2587a(comparator, 0));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo247t(new C2587a(comparator, 1));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo249n(Function function) {
        Objects.requireNonNull(function);
        return new C2780a3(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n, function, 0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo248o(Function function) {
        Objects.requireNonNull(function);
        return new C2780a3(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f916p | EnumC2799d4.f914n | EnumC2799d4.f920t, function, 1);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2639B3.m526i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted() {
        return new C2705M3(this);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo247t(InterfaceC2588b interfaceC2588b) {
        Objects.requireNonNull(interfaceC2588b);
        return (Optional) m448x0(new C2650D2(EnumC2805e4.REFERENCE, interfaceC2588b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: t0 */
    public final InterfaceC2886s1 mo303t0(long j, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m325d(j, interfaceC2599m);
    }

    @Override // p034j$.util.stream.Stream
    public final Object[] toArray() {
        C2758W2 c2758w2 = C2758W2.f853a;
        return AbstractC2917x2.m317l(m447y0(c2758w2), c2758w2).mo333q(c2758w2);
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public InterfaceC2812g unordered() {
        return !m452C0() ? this : new C2773Z2(this, this, EnumC2805e4.REFERENCE, EnumC2799d4.f918r);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: z0 */
    final InterfaceC2631A1 mo422z0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m) {
        return AbstractC2917x2.m324e(abstractC2923y2, interfaceC2625s, z, interfaceC2599m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2705M3(this, comparator);
    }
}
