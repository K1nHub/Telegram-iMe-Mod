package p033j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.Optional;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.C2811a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3170F0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3024e3 extends AbstractC3008c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3024e3(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3024e3(AbstractC3008c abstractC3008c, int i) {
        super(abstractC3008c, i);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: A */
    public final Object mo315A(Object obj, BiFunction biFunction, InterfaceC2812b interfaceC2812b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2812b);
        return m497w0(new C3149z2(EnumC3025e4.REFERENCE, interfaceC2812b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: A0 */
    public final EnumC3025e4 mo474A0() {
        return EnumC3025e4.REFERENCE;
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: D */
    public final InterfaceC2965U mo314D(Function function) {
        Objects.requireNonNull(function);
        return new C2909K(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, function);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: J0 */
    final Spliterator mo473J0(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        return new C2920L4(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: S */
    public final Stream mo313S(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2915L(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1058t, predicate);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: U */
    public final Stream mo312U(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2915L(this, this, EnumC3025e4.REFERENCE, 0, consumer);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public final boolean mo311V(Predicate predicate) {
        return ((Boolean) m497w0(AbstractC3082o1.m399x(predicate, EnumC3058k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public final InterfaceC3022e1 mo310W(Function function) {
        Objects.requireNonNull(function);
        return new C2927N(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo309a(Predicate predicate) {
        return ((Boolean) m497w0(AbstractC3082o1.m399x(predicate, EnumC3058k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a0 */
    public final Object mo308a0(C3170F0 c3170f0) {
        Object m497w0;
        if (isParallel() && c3170f0.m283b().contains(EnumC3038h.CONCURRENT) && (!m501B0() || c3170f0.m283b().contains(EnumC3038h.UNORDERED))) {
            m497w0 = c3170f0.m279f().get();
            forEach(new C3080o(c3170f0.m284a(), m497w0));
        } else {
            Objects.requireNonNull(c3170f0);
            InterfaceC2834x m279f = c3170f0.m279f();
            m497w0 = m497w0(new C2900I2(EnumC3025e4.REFERENCE, c3170f0.m282c(), c3170f0.m284a(), m279f, c3170f0));
        }
        return c3170f0.m283b().contains(EnumC3038h.IDENTITY_FINISH) ? m497w0 : c3170f0.m280e().apply(m497w0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo307c(Function function) {
        Objects.requireNonNull(function);
        return new C2921M(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c0 */
    public final boolean mo306c0(Predicate predicate) {
        return ((Boolean) m497w0(AbstractC3082o1.m399x(predicate, EnumC3058k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    public final long count() {
        return ((AbstractC3016d1) mo304f0(new ToLongFunction() { // from class: j$.util.stream.X2
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.Stream
    public final Stream distinct() {
        return new C3104s(this, EnumC3025e4.REFERENCE, EnumC3019d4.f1051m | EnumC3019d4.f1058t);
    }

    /* renamed from: e */
    public void mo305e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m497w0(new C3075n0(consumer, true));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: f0 */
    public final InterfaceC3022e1 mo304f0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2927N(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, toLongFunction);
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m497w0(new C3015d0(false, EnumC3025e4.REFERENCE, Optional.empty(), C2970V.f984a, C3009c0.f1032a));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m497w0(new C3015d0(true, EnumC3025e4.REFERENCE, Optional.empty(), C2970V.f984a, C3009c0.f1032a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m497w0(new C3075n0(consumer, false));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo303i(InterfaceC2834x interfaceC2834x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2834x);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m497w0(new C3149z2(EnumC3025e4.REFERENCE, biConsumer2, biConsumer, interfaceC2834x));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i0 */
    public final InterfaceC2965U mo302i0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2909K(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, toDoubleFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public final Iterator iterator() {
        return AbstractC2769F.m676i(spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public final IntStream mo301l(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2921M(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, toIntFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l0 */
    public final Object mo300l0(Object obj, InterfaceC2812b interfaceC2812b) {
        Objects.requireNonNull(interfaceC2812b);
        return m497w0(new C3149z2(EnumC3025e4.REFERENCE, interfaceC2812b, interfaceC2812b, obj));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2859B3.m575i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public final Stream mo299m(Function function) {
        Objects.requireNonNull(function);
        return new C3000a3(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n, function, 0);
    }

    @Override // p033j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo297s(new C2811a(comparator, 0));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo297s(new C2811a(comparator, 1));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo298n(Function function) {
        Objects.requireNonNull(function);
        return new C3000a3(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1054p | EnumC3019d4.f1052n | EnumC3019d4.f1058t, function, 1);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: s */
    public final Optional mo297s(InterfaceC2812b interfaceC2812b) {
        Objects.requireNonNull(interfaceC2812b);
        return (Optional) m497w0(new C2870D2(EnumC3025e4.REFERENCE, interfaceC2812b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: s0 */
    public final InterfaceC3106s1 mo352s0(long j, IntFunction intFunction) {
        return AbstractC3137x2.m374d(j, intFunction);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2859B3.m575i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted() {
        return new C2925M3(this);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray() {
        C2978W2 c2978w2 = new IntFunction() { // from class: j$.util.stream.W2
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        };
        return AbstractC3137x2.m366l(m496x0(c2978w2), c2978w2).mo382p(c2978w2);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC3137x2.m366l(m496x0(intFunction), intFunction).mo382p(intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public InterfaceC3032g unordered() {
        return !m501B0() ? this : new C2993Z2(this, this, EnumC3025e4.REFERENCE, EnumC3019d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: y0 */
    final InterfaceC2851A1 mo472y0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3137x2.m373e(abstractC3143y2, spliterator, z, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: z0 */
    final void mo471z0(Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3) {
        while (!interfaceC3072m3.mo359o() && spliterator.mo178b(interfaceC3072m3)) {
        }
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2925M3(this, comparator);
    }
}
