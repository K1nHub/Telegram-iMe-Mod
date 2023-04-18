package p034j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.C2650a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3019I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2867e3 extends AbstractC2851c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2867e3(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        super(interfaceC2688s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2867e3(AbstractC2851c abstractC2851c, int i) {
        super(abstractC2851c, i);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: A0 */
    final void mo406A0(InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3) {
        while (!interfaceC2915m3.mo291o() && interfaceC2688s.mo108b(interfaceC2915m3)) {
        }
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo247B(Object obj, BiFunction biFunction, InterfaceC2651b interfaceC2651b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2651b);
        return m429x0(new C2992z2(EnumC2868e4.REFERENCE, interfaceC2651b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: B0 */
    public final EnumC2868e4 mo405B0() {
        return EnumC2868e4.REFERENCE;
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2808U mo246E(Function function) {
        Objects.requireNonNull(function);
        return new C2752K(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, function);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: K0 */
    final InterfaceC2688s mo404K0(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        return new C2763L4(abstractC2986y2, interfaceC2674y, z);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo245T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2758L(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f920t, predicate);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo244V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2758L(this, this, EnumC2868e4.REFERENCE, 0, consumer);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo243W(Predicate predicate) {
        return ((Boolean) m429x0(AbstractC2925o1.m331x(predicate, EnumC2901k1.ALL))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC2865e1 mo242X(Function function) {
        Objects.requireNonNull(function);
        return new C2770N(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, function);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo241a(Predicate predicate) {
        return ((Boolean) m429x0(AbstractC2925o1.m331x(predicate, EnumC2901k1.ANY))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo240b0(C3019I0 c3019i0) {
        Object m429x0;
        if (isParallel() && c3019i0.m208b().contains(EnumC2881h.CONCURRENT) && (!m433C0() || c3019i0.m208b().contains(EnumC2881h.UNORDERED))) {
            m429x0 = c3019i0.m204f().get();
            forEach(new C2923o(c3019i0.m209a(), m429x0));
        } else {
            Objects.requireNonNull(c3019i0);
            InterfaceC2674y m204f = c3019i0.m204f();
            m429x0 = m429x0(new C2743I2(EnumC2868e4.REFERENCE, c3019i0.m207c(), c3019i0.m209a(), m204f, c3019i0));
        }
        return c3019i0.m208b().contains(EnumC2881h.IDENTITY_FINISH) ? m429x0 : c3019i0.m205e().apply(m429x0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo239c(Function function) {
        Objects.requireNonNull(function);
        return new C2764M(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, function);
    }

    @Override // p034j$.util.stream.Stream
    public final long count() {
        return ((AbstractC2859d1) mo236g0(C2826X2.f856a)).sum();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo238d0(Predicate predicate) {
        return ((Boolean) m429x0(AbstractC2925o1.m331x(predicate, EnumC2901k1.NONE))).booleanValue();
    }

    @Override // p034j$.util.stream.Stream
    public final Stream distinct() {
        return new C2947s(this, EnumC2868e4.REFERENCE, EnumC2862d4.f913m | EnumC2862d4.f920t);
    }

    /* renamed from: e */
    public void mo237e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m429x0(new C2918n0(consumer, true));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m429x0(new C2858d0(false, EnumC2868e4.REFERENCE, Optional.empty(), C2813V.f846a, C2852c0.f894a));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m429x0(new C2858d0(true, EnumC2868e4.REFERENCE, Optional.empty(), C2813V.f846a, C2852c0.f894a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m429x0(new C2918n0(consumer, false));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC2865e1 mo236g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2770N(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n, toLongFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo235i(InterfaceC2674y interfaceC2674y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2674y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m429x0(new C2992z2(EnumC2868e4.REFERENCE, biConsumer2, biConsumer, interfaceC2674y));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public final Iterator iterator() {
        return AbstractC2612I.m614i(spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2808U mo234j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2752K(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n, toDoubleFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo233l(InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m298l(m428y0(interfaceC2662m), interfaceC2662m).mo314q(interfaceC2662m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2702B3.m507i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo232m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2764M(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n, toIntFunction);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo231m0(Object obj, InterfaceC2651b interfaceC2651b) {
        Objects.requireNonNull(interfaceC2651b);
        return m429x0(new C2992z2(EnumC2868e4.REFERENCE, interfaceC2651b, interfaceC2651b, obj));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo228t(new C2650a(comparator, 0));
    }

    @Override // p034j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo228t(new C2650a(comparator, 1));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo230n(Function function) {
        Objects.requireNonNull(function);
        return new C2843a3(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n, function, 0);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo229o(Function function) {
        Objects.requireNonNull(function);
        return new C2843a3(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f916p | EnumC2862d4.f914n | EnumC2862d4.f920t, function, 1);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2702B3.m507i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted() {
        return new C2768M3(this);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo228t(InterfaceC2651b interfaceC2651b) {
        Objects.requireNonNull(interfaceC2651b);
        return (Optional) m429x0(new C2713D2(EnumC2868e4.REFERENCE, interfaceC2651b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: t0 */
    public final InterfaceC2949s1 mo284t0(long j, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m306d(j, interfaceC2662m);
    }

    @Override // p034j$.util.stream.Stream
    public final Object[] toArray() {
        C2821W2 c2821w2 = C2821W2.f853a;
        return AbstractC2980x2.m298l(m428y0(c2821w2), c2821w2).mo314q(c2821w2);
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public InterfaceC2875g unordered() {
        return !m433C0() ? this : new C2836Z2(this, this, EnumC2868e4.REFERENCE, EnumC2862d4.f918r);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: z0 */
    final InterfaceC2694A1 mo403z0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m) {
        return AbstractC2980x2.m305e(abstractC2986y2, interfaceC2688s, z, interfaceC2662m);
    }

    @Override // p034j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2768M3(this, comparator);
    }
}
