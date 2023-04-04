package p035j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Optional;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
import p035j$.util.function.C2663a;
import p035j$.util.function.Consumer;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.function.Predicate;
import p035j$.util.function.ToDoubleFunction;
import p035j$.util.function.ToIntFunction;
import p035j$.util.function.ToLongFunction;
import p035j$.wrappers.C3032I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2880e3 extends AbstractC2864c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2880e3(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        super(interfaceC2701s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2880e3(AbstractC2864c abstractC2864c, int i) {
        super(abstractC2864c, i);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: A0 */
    final void mo420A0(InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3) {
        while (!interfaceC2928m3.mo305o() && interfaceC2701s.mo122b(interfaceC2928m3)) {
        }
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo261B(Object obj, BiFunction biFunction, InterfaceC2664b interfaceC2664b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2664b);
        return m443x0(new C3005z2(EnumC2881e4.REFERENCE, interfaceC2664b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: B0 */
    public final EnumC2881e4 mo419B0() {
        return EnumC2881e4.REFERENCE;
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2821U mo260E(Function function) {
        Objects.requireNonNull(function);
        return new C2765K(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, function);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: K0 */
    final InterfaceC2701s mo418K0(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        return new C2776L4(abstractC2999y2, interfaceC2687y, z);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo259T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2771L(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f925t, predicate);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo258V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2771L(this, this, EnumC2881e4.REFERENCE, 0, consumer);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo257W(Predicate predicate) {
        return ((Boolean) m443x0(AbstractC2938o1.m345x(predicate, EnumC2914k1.ALL))).booleanValue();
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2878e1 mo256X(Function function) {
        Objects.requireNonNull(function);
        return new C2783N(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, function);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo255a(Predicate predicate) {
        return ((Boolean) m443x0(AbstractC2938o1.m345x(predicate, EnumC2914k1.ANY))).booleanValue();
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo254b0(C3032I0 c3032i0) {
        Object m443x0;
        if (isParallel() && c3032i0.m222b().contains(EnumC2894h.CONCURRENT) && (!m447C0() || c3032i0.m222b().contains(EnumC2894h.UNORDERED))) {
            m443x0 = c3032i0.m218f().get();
            forEach(new C2936o(c3032i0.m223a(), m443x0));
        } else {
            Objects.requireNonNull(c3032i0);
            InterfaceC2687y m218f = c3032i0.m218f();
            m443x0 = m443x0(new C2756I2(EnumC2881e4.REFERENCE, c3032i0.m221c(), c3032i0.m223a(), m218f, c3032i0));
        }
        return c3032i0.m222b().contains(EnumC2894h.IDENTITY_FINISH) ? m443x0 : c3032i0.m219e().apply(m443x0);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo253c(Function function) {
        Objects.requireNonNull(function);
        return new C2777M(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, function);
    }

    @Override // p035j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2872d1) mo250g0(C2839X2.f861a)).sum();
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo252d0(Predicate predicate) {
        return ((Boolean) m443x0(AbstractC2938o1.m345x(predicate, EnumC2914k1.NONE))).booleanValue();
    }

    @Override // p035j$.util.stream.Stream
    public final Stream distinct() {
        return new C2960s(this, EnumC2881e4.REFERENCE, EnumC2875d4.f918m | EnumC2875d4.f925t);
    }

    /* renamed from: e */
    public void mo251e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m443x0(new C2931n0(consumer, true));
    }

    @Override // p035j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m443x0(new C2871d0(false, EnumC2881e4.REFERENCE, Optional.empty(), C2826V.f851a, C2865c0.f899a));
    }

    @Override // p035j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m443x0(new C2871d0(true, EnumC2881e4.REFERENCE, Optional.empty(), C2826V.f851a, C2865c0.f899a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m443x0(new C2931n0(consumer, false));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2878e1 mo250g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2783N(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n, toLongFunction);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo249i(InterfaceC2687y interfaceC2687y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2687y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m443x0(new C3005z2(EnumC2881e4.REFERENCE, biConsumer2, biConsumer, interfaceC2687y));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public final Iterator iterator() {
        return AbstractC2625I.m628i(spliterator());
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2821U mo248j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2765K(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n, toDoubleFunction);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo247l(InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m312l(m442y0(interfaceC2675m), interfaceC2675m).mo328q(interfaceC2675m);
    }

    @Override // p035j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2715B3.m521i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo246m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2777M(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n, toIntFunction);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo245m0(Object obj, InterfaceC2664b interfaceC2664b) {
        Objects.requireNonNull(interfaceC2664b);
        return m443x0(new C3005z2(EnumC2881e4.REFERENCE, interfaceC2664b, interfaceC2664b, obj));
    }

    @Override // p035j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo242t(new C2663a(comparator, 0));
    }

    @Override // p035j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo242t(new C2663a(comparator, 1));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo244n(Function function) {
        Objects.requireNonNull(function);
        return new C2856a3(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n, function, 0);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo243o(Function function) {
        Objects.requireNonNull(function);
        return new C2856a3(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f921p | EnumC2875d4.f919n | EnumC2875d4.f925t, function, 1);
    }

    @Override // p035j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2715B3.m521i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p035j$.util.stream.Stream
    public final Stream sorted() {
        return new C2781M3(this);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo242t(InterfaceC2664b interfaceC2664b) {
        Objects.requireNonNull(interfaceC2664b);
        return (Optional) m443x0(new C2726D2(EnumC2881e4.REFERENCE, interfaceC2664b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: t0 */
    public final InterfaceC2962s1 mo298t0(long j, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m320d(j, interfaceC2675m);
    }

    @Override // p035j$.util.stream.Stream
    public final Object[] toArray() {
        C2834W2 c2834w2 = C2834W2.f858a;
        return AbstractC2993x2.m312l(m442y0(c2834w2), c2834w2).mo328q(c2834w2);
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public InterfaceC2888g unordered() {
        return !m447C0() ? this : new C2849Z2(this, this, EnumC2881e4.REFERENCE, EnumC2875d4.f923r);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: z0 */
    final InterfaceC2707A1 mo417z0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m) {
        return AbstractC2993x2.m319e(abstractC2999y2, interfaceC2701s, z, interfaceC2675m);
    }

    @Override // p035j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2781M3(this, comparator);
    }
}
