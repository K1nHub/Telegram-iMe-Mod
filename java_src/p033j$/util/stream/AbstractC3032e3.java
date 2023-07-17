package p033j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.C2815a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3184I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3032e3 extends AbstractC3016c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3032e3(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3032e3(AbstractC3016c abstractC3016c, int i) {
        super(abstractC3016c, i);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: A0 */
    final void mo411A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3) {
        while (!interfaceC3080m3.mo296o() && interfaceC2853s.mo113b(interfaceC3080m3)) {
        }
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo252B(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2816b);
        return m434x0(new C3157z2(EnumC3033e4.REFERENCE, interfaceC2816b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: B0 */
    public final EnumC3033e4 mo410B0() {
        return EnumC3033e4.REFERENCE;
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC2973U mo251E(Function function) {
        Objects.requireNonNull(function);
        return new C2917K(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, function);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: K0 */
    final InterfaceC2853s mo409K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        return new C2928L4(abstractC3151y2, interfaceC2839y, z);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo250T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2923L(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1005t, predicate);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo249V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2923L(this, this, EnumC3033e4.REFERENCE, 0, consumer);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo248W(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC3090o1.m336x(predicate, EnumC3066k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC3030e1 mo247X(Function function) {
        Objects.requireNonNull(function);
        return new C2935N(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo246a(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC3090o1.m336x(predicate, EnumC3066k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo245b0(C3184I0 c3184i0) {
        Object m434x0;
        if (isParallel() && c3184i0.m213b().contains(EnumC3046h.CONCURRENT) && (!m438C0() || c3184i0.m213b().contains(EnumC3046h.UNORDERED))) {
            m434x0 = c3184i0.m209f().get();
            forEach(new C3088o(c3184i0.m214a(), m434x0));
        } else {
            Objects.requireNonNull(c3184i0);
            InterfaceC2839y m209f = c3184i0.m209f();
            m434x0 = m434x0(new C2908I2(EnumC3033e4.REFERENCE, c3184i0.m212c(), c3184i0.m214a(), m209f, c3184i0));
        }
        return c3184i0.m213b().contains(EnumC3046h.IDENTITY_FINISH) ? m434x0 : c3184i0.m210e().apply(m434x0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo244c(Function function) {
        Objects.requireNonNull(function);
        return new C2929M(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, function);
    }

    @Override // p033j$.util.stream.Stream
    public final long count() {
        return ((AbstractC3024d1) mo241g0(C2991X2.f941a)).sum();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo243d0(Predicate predicate) {
        return ((Boolean) m434x0(AbstractC3090o1.m336x(predicate, EnumC3066k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    public final Stream distinct() {
        return new C3112s(this, EnumC3033e4.REFERENCE, EnumC3027d4.f998m | EnumC3027d4.f1005t);
    }

    /* renamed from: e */
    public void mo242e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m434x0(new C3083n0(consumer, true));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m434x0(new C3023d0(false, EnumC3033e4.REFERENCE, Optional.empty(), C2978V.f931a, C3017c0.f979a));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m434x0(new C3023d0(true, EnumC3033e4.REFERENCE, Optional.empty(), C2978V.f931a, C3017c0.f979a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m434x0(new C3083n0(consumer, false));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC3030e1 mo241g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2935N(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n, toLongFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo240i(InterfaceC2839y interfaceC2839y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2839y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m434x0(new C3157z2(EnumC3033e4.REFERENCE, biConsumer2, biConsumer, interfaceC2839y));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final Iterator iterator() {
        return AbstractC2777I.m618i(spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC2973U mo239j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2917K(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n, toDoubleFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo238l(InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m303l(m433y0(interfaceC2827m), interfaceC2827m).mo319q(interfaceC2827m);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2867B3.m512i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo237m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2929M(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n, toIntFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo236m0(Object obj, InterfaceC2816b interfaceC2816b) {
        Objects.requireNonNull(interfaceC2816b);
        return m434x0(new C3157z2(EnumC3033e4.REFERENCE, interfaceC2816b, interfaceC2816b, obj));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo233t(new C2815a(comparator, 0));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo233t(new C2815a(comparator, 1));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo235n(Function function) {
        Objects.requireNonNull(function);
        return new C3008a3(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n, function, 0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo234o(Function function) {
        Objects.requireNonNull(function);
        return new C3008a3(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1001p | EnumC3027d4.f999n | EnumC3027d4.f1005t, function, 1);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2867B3.m512i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted() {
        return new C2933M3(this);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo233t(InterfaceC2816b interfaceC2816b) {
        Objects.requireNonNull(interfaceC2816b);
        return (Optional) m434x0(new C2878D2(EnumC3033e4.REFERENCE, interfaceC2816b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: t0 */
    public final InterfaceC3114s1 mo289t0(long j, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m311d(j, interfaceC2827m);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray() {
        C2986W2 c2986w2 = C2986W2.f938a;
        return AbstractC3145x2.m303l(m433y0(c2986w2), c2986w2).mo319q(c2986w2);
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g unordered() {
        return !m438C0() ? this : new C3001Z2(this, this, EnumC3033e4.REFERENCE, EnumC3027d4.f1003r);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: z0 */
    final InterfaceC2859A1 mo408z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        return AbstractC3145x2.m310e(abstractC3151y2, interfaceC2853s, z, interfaceC2827m);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2933M3(this, comparator);
    }
}
