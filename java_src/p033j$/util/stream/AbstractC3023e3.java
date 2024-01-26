package p033j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.Optional;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.C2810a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3169F0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3023e3 extends AbstractC3007c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3023e3(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3023e3(AbstractC3007c abstractC3007c, int i) {
        super(abstractC3007c, i);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: A */
    public final Object mo319A(Object obj, BiFunction biFunction, InterfaceC2811b interfaceC2811b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2811b);
        return m501w0(new C3148z2(EnumC3024e4.REFERENCE, interfaceC2811b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: A0 */
    public final EnumC3024e4 mo478A0() {
        return EnumC3024e4.REFERENCE;
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: D */
    public final InterfaceC2964U mo318D(Function function) {
        Objects.requireNonNull(function);
        return new C2908K(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, function);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: J0 */
    final Spliterator mo477J0(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        return new C2919L4(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: S */
    public final Stream mo317S(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2914L(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1058t, predicate);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: U */
    public final Stream mo316U(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2914L(this, this, EnumC3024e4.REFERENCE, 0, consumer);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public final boolean mo315V(Predicate predicate) {
        return ((Boolean) m501w0(AbstractC3081o1.m403x(predicate, EnumC3057k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public final InterfaceC3021e1 mo314W(Function function) {
        Objects.requireNonNull(function);
        return new C2926N(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo313a(Predicate predicate) {
        return ((Boolean) m501w0(AbstractC3081o1.m403x(predicate, EnumC3057k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a0 */
    public final Object mo312a0(C3169F0 c3169f0) {
        Object m501w0;
        if (isParallel() && c3169f0.m287b().contains(EnumC3037h.CONCURRENT) && (!m505B0() || c3169f0.m287b().contains(EnumC3037h.UNORDERED))) {
            m501w0 = c3169f0.m283f().get();
            forEach(new C3079o(c3169f0.m288a(), m501w0));
        } else {
            Objects.requireNonNull(c3169f0);
            InterfaceC2833x m283f = c3169f0.m283f();
            m501w0 = m501w0(new C2899I2(EnumC3024e4.REFERENCE, c3169f0.m286c(), c3169f0.m288a(), m283f, c3169f0));
        }
        return c3169f0.m287b().contains(EnumC3037h.IDENTITY_FINISH) ? m501w0 : c3169f0.m284e().apply(m501w0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo311c(Function function) {
        Objects.requireNonNull(function);
        return new C2920M(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c0 */
    public final boolean mo310c0(Predicate predicate) {
        return ((Boolean) m501w0(AbstractC3081o1.m403x(predicate, EnumC3057k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    public final long count() {
        return ((AbstractC3015d1) mo308f0(new ToLongFunction() { // from class: j$.util.stream.X2
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.Stream
    public final Stream distinct() {
        return new C3103s(this, EnumC3024e4.REFERENCE, EnumC3018d4.f1051m | EnumC3018d4.f1058t);
    }

    /* renamed from: e */
    public void mo309e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m501w0(new C3074n0(consumer, true));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: f0 */
    public final InterfaceC3021e1 mo308f0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2926N(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, toLongFunction);
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m501w0(new C3014d0(false, EnumC3024e4.REFERENCE, Optional.empty(), C2969V.f984a, C3008c0.f1032a));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m501w0(new C3014d0(true, EnumC3024e4.REFERENCE, Optional.empty(), C2969V.f984a, C3008c0.f1032a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m501w0(new C3074n0(consumer, false));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo307i(InterfaceC2833x interfaceC2833x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2833x);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m501w0(new C3148z2(EnumC3024e4.REFERENCE, biConsumer2, biConsumer, interfaceC2833x));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i0 */
    public final InterfaceC2964U mo306i0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2908K(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, toDoubleFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public final Iterator iterator() {
        return AbstractC2768F.m680i(spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public final IntStream mo305l(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2920M(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, toIntFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l0 */
    public final Object mo304l0(Object obj, InterfaceC2811b interfaceC2811b) {
        Objects.requireNonNull(interfaceC2811b);
        return m501w0(new C3148z2(EnumC3024e4.REFERENCE, interfaceC2811b, interfaceC2811b, obj));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2858B3.m579i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public final Stream mo303m(Function function) {
        Objects.requireNonNull(function);
        return new C2999a3(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n, function, 0);
    }

    @Override // p033j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo301s(new C2810a(comparator, 0));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo301s(new C2810a(comparator, 1));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo302n(Function function) {
        Objects.requireNonNull(function);
        return new C2999a3(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1054p | EnumC3018d4.f1052n | EnumC3018d4.f1058t, function, 1);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: s */
    public final Optional mo301s(InterfaceC2811b interfaceC2811b) {
        Objects.requireNonNull(interfaceC2811b);
        return (Optional) m501w0(new C2869D2(EnumC3024e4.REFERENCE, interfaceC2811b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: s0 */
    public final InterfaceC3105s1 mo356s0(long j, IntFunction intFunction) {
        return AbstractC3136x2.m378d(j, intFunction);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2858B3.m579i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted() {
        return new C2924M3(this);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray() {
        C2977W2 c2977w2 = new IntFunction() { // from class: j$.util.stream.W2
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        };
        return AbstractC3136x2.m370l(m500x0(c2977w2), c2977w2).mo386p(c2977w2);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC3136x2.m370l(m500x0(intFunction), intFunction).mo386p(intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public InterfaceC3031g unordered() {
        return !m505B0() ? this : new C2992Z2(this, this, EnumC3024e4.REFERENCE, EnumC3018d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: y0 */
    final InterfaceC2850A1 mo476y0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3136x2.m377e(abstractC3142y2, spliterator, z, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: z0 */
    final void mo475z0(Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3) {
        while (!interfaceC3071m3.mo363o() && spliterator.mo182b(interfaceC3071m3)) {
        }
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2924M3(this, comparator);
    }
}
