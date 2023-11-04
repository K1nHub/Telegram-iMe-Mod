package p033j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.Optional;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.C2815a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3174F0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3028e3 extends AbstractC3012c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3028e3(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3028e3(AbstractC3012c abstractC3012c, int i) {
        super(abstractC3012c, i);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: A */
    public final Object mo316A(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2816b);
        return m498w0(new C3153z2(EnumC3029e4.REFERENCE, interfaceC2816b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: A0 */
    public final EnumC3029e4 mo475A0() {
        return EnumC3029e4.REFERENCE;
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: D */
    public final InterfaceC2969U mo315D(Function function) {
        Objects.requireNonNull(function);
        return new C2913K(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, function);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: J0 */
    final Spliterator mo474J0(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        return new C2924L4(abstractC3147y2, interfaceC2838x, z);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: S */
    public final Stream mo314S(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2919L(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1058t, predicate);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: U */
    public final Stream mo313U(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2919L(this, this, EnumC3029e4.REFERENCE, 0, consumer);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public final boolean mo312V(Predicate predicate) {
        return ((Boolean) m498w0(AbstractC3086o1.m400x(predicate, EnumC3062k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public final InterfaceC3026e1 mo311W(Function function) {
        Objects.requireNonNull(function);
        return new C2931N(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo310a(Predicate predicate) {
        return ((Boolean) m498w0(AbstractC3086o1.m400x(predicate, EnumC3062k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a0 */
    public final Object mo309a0(C3174F0 c3174f0) {
        Object m498w0;
        if (isParallel() && c3174f0.m284b().contains(EnumC3042h.CONCURRENT) && (!m502B0() || c3174f0.m284b().contains(EnumC3042h.UNORDERED))) {
            m498w0 = c3174f0.m280f().get();
            forEach(new C3084o(c3174f0.m285a(), m498w0));
        } else {
            Objects.requireNonNull(c3174f0);
            InterfaceC2838x m280f = c3174f0.m280f();
            m498w0 = m498w0(new C2904I2(EnumC3029e4.REFERENCE, c3174f0.m283c(), c3174f0.m285a(), m280f, c3174f0));
        }
        return c3174f0.m284b().contains(EnumC3042h.IDENTITY_FINISH) ? m498w0 : c3174f0.m281e().apply(m498w0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo308c(Function function) {
        Objects.requireNonNull(function);
        return new C2925M(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c0 */
    public final boolean mo307c0(Predicate predicate) {
        return ((Boolean) m498w0(AbstractC3086o1.m400x(predicate, EnumC3062k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    public final long count() {
        return ((AbstractC3020d1) mo305f0(new ToLongFunction() { // from class: j$.util.stream.X2
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.Stream
    public final Stream distinct() {
        return new C3108s(this, EnumC3029e4.REFERENCE, EnumC3023d4.f1051m | EnumC3023d4.f1058t);
    }

    /* renamed from: e */
    public void mo306e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m498w0(new C3079n0(consumer, true));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: f0 */
    public final InterfaceC3026e1 mo305f0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2931N(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, toLongFunction);
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m498w0(new C3019d0(false, EnumC3029e4.REFERENCE, Optional.empty(), C2974V.f984a, C3013c0.f1032a));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m498w0(new C3019d0(true, EnumC3029e4.REFERENCE, Optional.empty(), C2974V.f984a, C3013c0.f1032a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m498w0(new C3079n0(consumer, false));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo304i(InterfaceC2838x interfaceC2838x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2838x);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m498w0(new C3153z2(EnumC3029e4.REFERENCE, biConsumer2, biConsumer, interfaceC2838x));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i0 */
    public final InterfaceC2969U mo303i0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2913K(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, toDoubleFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public final Iterator iterator() {
        return AbstractC2773F.m677i(spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public final IntStream mo302l(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2925M(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, toIntFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l0 */
    public final Object mo301l0(Object obj, InterfaceC2816b interfaceC2816b) {
        Objects.requireNonNull(interfaceC2816b);
        return m498w0(new C3153z2(EnumC3029e4.REFERENCE, interfaceC2816b, interfaceC2816b, obj));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2863B3.m576i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public final Stream mo300m(Function function) {
        Objects.requireNonNull(function);
        return new C3004a3(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n, function, 0);
    }

    @Override // p033j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo298s(new C2815a(comparator, 0));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo298s(new C2815a(comparator, 1));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo299n(Function function) {
        Objects.requireNonNull(function);
        return new C3004a3(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1054p | EnumC3023d4.f1052n | EnumC3023d4.f1058t, function, 1);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: s */
    public final Optional mo298s(InterfaceC2816b interfaceC2816b) {
        Objects.requireNonNull(interfaceC2816b);
        return (Optional) m498w0(new C2874D2(EnumC3029e4.REFERENCE, interfaceC2816b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3147y2
    /* renamed from: s0 */
    public final InterfaceC3110s1 mo353s0(long j, IntFunction intFunction) {
        return AbstractC3141x2.m375d(j, intFunction);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2863B3.m576i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted() {
        return new C2929M3(this);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray() {
        C2982W2 c2982w2 = new IntFunction() { // from class: j$.util.stream.W2
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        };
        return AbstractC3141x2.m367l(m497x0(c2982w2), c2982w2).mo383p(c2982w2);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC3141x2.m367l(m497x0(intFunction), intFunction).mo383p(intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public InterfaceC3036g unordered() {
        return !m502B0() ? this : new C2997Z2(this, this, EnumC3029e4.REFERENCE, EnumC3023d4.f1056r);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: y0 */
    final InterfaceC2855A1 mo473y0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3141x2.m374e(abstractC3147y2, spliterator, z, intFunction);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: z0 */
    final void mo472z0(Spliterator spliterator, InterfaceC3076m3 interfaceC3076m3) {
        while (!interfaceC3076m3.mo360o() && spliterator.mo179b(interfaceC3076m3)) {
        }
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2929M3(this, comparator);
    }
}
