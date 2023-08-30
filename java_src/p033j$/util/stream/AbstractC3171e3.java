package p033j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.C2954a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3323I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3171e3 extends AbstractC3155c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3171e3(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        super(interfaceC2992s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3171e3(AbstractC3155c abstractC3155c, int i) {
        super(abstractC3155c, i);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3) {
        while (!interfaceC3219m3.mo314o() && interfaceC2992s.mo131b(interfaceC3219m3)) {
        }
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo270B(Object obj, BiFunction biFunction, InterfaceC2955b interfaceC2955b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2955b);
        return m452x0(new C3296z2(EnumC3172e4.REFERENCE, interfaceC2955b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: B0 */
    public final EnumC3172e4 mo428B0() {
        return EnumC3172e4.REFERENCE;
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC3112U mo269E(Function function) {
        Objects.requireNonNull(function);
        return new C3056K(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, function);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: K0 */
    final InterfaceC2992s mo427K0(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        return new C3067L4(abstractC3290y2, interfaceC2978y, z);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo268T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C3062L(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1018t, predicate);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo267V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C3062L(this, this, EnumC3172e4.REFERENCE, 0, consumer);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo266W(Predicate predicate) {
        return ((Boolean) m452x0(AbstractC3229o1.m354x(predicate, EnumC3205k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC3169e1 mo265X(Function function) {
        Objects.requireNonNull(function);
        return new C3074N(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo264a(Predicate predicate) {
        return ((Boolean) m452x0(AbstractC3229o1.m354x(predicate, EnumC3205k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo263b0(C3323I0 c3323i0) {
        Object m452x0;
        if (isParallel() && c3323i0.m231b().contains(EnumC3185h.CONCURRENT) && (!m456C0() || c3323i0.m231b().contains(EnumC3185h.UNORDERED))) {
            m452x0 = c3323i0.m227f().get();
            forEach(new C3227o(c3323i0.m232a(), m452x0));
        } else {
            Objects.requireNonNull(c3323i0);
            InterfaceC2978y m227f = c3323i0.m227f();
            m452x0 = m452x0(new C3047I2(EnumC3172e4.REFERENCE, c3323i0.m230c(), c3323i0.m232a(), m227f, c3323i0));
        }
        return c3323i0.m231b().contains(EnumC3185h.IDENTITY_FINISH) ? m452x0 : c3323i0.m228e().apply(m452x0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo262c(Function function) {
        Objects.requireNonNull(function);
        return new C3068M(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, function);
    }

    @Override // p033j$.util.stream.Stream
    public final long count() {
        return ((AbstractC3163d1) mo259g0(new ToLongFunction() { // from class: j$.util.stream.X2
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo261d0(Predicate predicate) {
        return ((Boolean) m452x0(AbstractC3229o1.m354x(predicate, EnumC3205k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    public final Stream distinct() {
        return new C3251s(this, EnumC3172e4.REFERENCE, EnumC3166d4.f1011m | EnumC3166d4.f1018t);
    }

    /* renamed from: e */
    public void mo260e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m452x0(new C3222n0(consumer, true));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m452x0(new C3162d0(false, EnumC3172e4.REFERENCE, Optional.empty(), C3117V.f944a, C3156c0.f992a));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m452x0(new C3162d0(true, EnumC3172e4.REFERENCE, Optional.empty(), C3117V.f944a, C3156c0.f992a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m452x0(new C3222n0(consumer, false));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC3169e1 mo259g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C3074N(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, toLongFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo258i(InterfaceC2978y interfaceC2978y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2978y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m452x0(new C3296z2(EnumC3172e4.REFERENCE, biConsumer2, biConsumer, interfaceC2978y));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public final Iterator iterator() {
        return AbstractC2916I.m636i(spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC3112U mo257j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C3056K(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, toDoubleFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo256l(InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m321l(m451y0(interfaceC2966m), interfaceC2966m).mo337q(interfaceC2966m);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC3006B3.m530i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo255m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C3068M(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, toIntFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo254m0(Object obj, InterfaceC2955b interfaceC2955b) {
        Objects.requireNonNull(interfaceC2955b);
        return m452x0(new C3296z2(EnumC3172e4.REFERENCE, interfaceC2955b, interfaceC2955b, obj));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo251t(new C2954a(comparator, 0));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo251t(new C2954a(comparator, 1));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo253n(Function function) {
        Objects.requireNonNull(function);
        return new C3147a3(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n, function, 0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo252o(Function function) {
        Objects.requireNonNull(function);
        return new C3147a3(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1014p | EnumC3166d4.f1012n | EnumC3166d4.f1018t, function, 1);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC3006B3.m530i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted() {
        return new C3072M3(this);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo251t(InterfaceC2955b interfaceC2955b) {
        Objects.requireNonNull(interfaceC2955b);
        return (Optional) m452x0(new C3017D2(EnumC3172e4.REFERENCE, interfaceC2955b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: t0 */
    public final InterfaceC3253s1 mo307t0(long j, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m329d(j, interfaceC2966m);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray() {
        C3125W2 c3125w2 = new InterfaceC2966m() { // from class: j$.util.stream.W2
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Object[i];
            }
        };
        return AbstractC3284x2.m321l(m451y0(c3125w2), c3125w2).mo337q(c3125w2);
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public InterfaceC3179g unordered() {
        return !m456C0() ? this : new C3140Z2(this, this, EnumC3172e4.REFERENCE, EnumC3166d4.f1016r);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: z0 */
    final InterfaceC2998A1 mo426z0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m) {
        return AbstractC3284x2.m328e(abstractC3290y2, interfaceC2992s, z, interfaceC2966m);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C3072M3(this, comparator);
    }
}
