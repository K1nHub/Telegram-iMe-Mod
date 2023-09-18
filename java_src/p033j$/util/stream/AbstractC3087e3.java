package p033j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.C2870a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3239I0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3087e3 extends AbstractC3071c implements Stream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3087e3(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3087e3(AbstractC3071c abstractC3071c, int i) {
        super(abstractC3071c, i);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: A0 */
    final void mo429A0(InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3) {
        while (!interfaceC3135m3.mo314o() && interfaceC2908s.mo131b(interfaceC3135m3)) {
        }
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public final Object mo270B(Object obj, BiFunction biFunction, InterfaceC2871b interfaceC2871b) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(interfaceC2871b);
        return m452x0(new C3212z2(EnumC3088e4.REFERENCE, interfaceC2871b, biFunction, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: B0 */
    public final EnumC3088e4 mo428B0() {
        return EnumC3088e4.REFERENCE;
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public final InterfaceC3028U mo269E(Function function) {
        Objects.requireNonNull(function);
        return new C2972K(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, function);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: K0 */
    final InterfaceC2908s mo427K0(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        return new C2983L4(abstractC3206y2, interfaceC2894y, z);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public final Stream mo268T(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2978L(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1009t, predicate);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public final Stream mo267V(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2978L(this, this, EnumC3088e4.REFERENCE, 0, consumer);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public final boolean mo266W(Predicate predicate) {
        return ((Boolean) m452x0(AbstractC3145o1.m354x(predicate, EnumC3121k1.ALL))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public final InterfaceC3085e1 mo265X(Function function) {
        Objects.requireNonNull(function);
        return new C2990N(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, function);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public final boolean mo264a(Predicate predicate) {
        return ((Boolean) m452x0(AbstractC3145o1.m354x(predicate, EnumC3121k1.ANY))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public final Object mo263b0(C3239I0 c3239i0) {
        Object m452x0;
        if (isParallel() && c3239i0.m231b().contains(EnumC3101h.CONCURRENT) && (!m456C0() || c3239i0.m231b().contains(EnumC3101h.UNORDERED))) {
            m452x0 = c3239i0.m227f().get();
            forEach(new C3143o(c3239i0.m232a(), m452x0));
        } else {
            Objects.requireNonNull(c3239i0);
            InterfaceC2894y m227f = c3239i0.m227f();
            m452x0 = m452x0(new C2963I2(EnumC3088e4.REFERENCE, c3239i0.m230c(), c3239i0.m232a(), m227f, c3239i0));
        }
        return c3239i0.m231b().contains(EnumC3101h.IDENTITY_FINISH) ? m452x0 : c3239i0.m228e().apply(m452x0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public final IntStream mo262c(Function function) {
        Objects.requireNonNull(function);
        return new C2984M(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, function);
    }

    @Override // p033j$.util.stream.Stream
    public final long count() {
        return ((AbstractC3079d1) mo259g0(new ToLongFunction() { // from class: j$.util.stream.X2
            @Override // p033j$.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return 1L;
            }
        })).sum();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public final boolean mo261d0(Predicate predicate) {
        return ((Boolean) m452x0(AbstractC3145o1.m354x(predicate, EnumC3121k1.NONE))).booleanValue();
    }

    @Override // p033j$.util.stream.Stream
    public final Stream distinct() {
        return new C3167s(this, EnumC3088e4.REFERENCE, EnumC3082d4.f1002m | EnumC3082d4.f1009t);
    }

    /* renamed from: e */
    public void mo260e(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m452x0(new C3138n0(consumer, true));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m452x0(new C3078d0(false, EnumC3088e4.REFERENCE, Optional.empty(), C3033V.f935a, C3072c0.f983a));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m452x0(new C3078d0(true, EnumC3088e4.REFERENCE, Optional.empty(), C3033V.f935a, C3072c0.f983a));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m452x0(new C3138n0(consumer, false));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public final InterfaceC3085e1 mo259g0(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2990N(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, toLongFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public final Object mo258i(InterfaceC2894y interfaceC2894y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(interfaceC2894y);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m452x0(new C3212z2(EnumC3088e4.REFERENCE, biConsumer2, biConsumer, interfaceC2894y));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public final Iterator iterator() {
        return AbstractC2832I.m636i(spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public final InterfaceC3028U mo257j0(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2972K(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, toDoubleFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public final Object[] mo256l(InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m321l(m451y0(interfaceC2882m), interfaceC2882m).mo337q(interfaceC2882m);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC2922B3.m530i(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public final IntStream mo255m(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2984M(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, toIntFunction);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public final Object mo254m0(Object obj, InterfaceC2871b interfaceC2871b) {
        Objects.requireNonNull(interfaceC2871b);
        return m452x0(new C3212z2(EnumC3088e4.REFERENCE, interfaceC2871b, interfaceC2871b, obj));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo251t(new C2870a(comparator, 0));
    }

    @Override // p033j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return mo251t(new C2870a(comparator, 1));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public final Stream mo253n(Function function) {
        Objects.requireNonNull(function);
        return new C3063a3(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n, function, 0);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public final Stream mo252o(Function function) {
        Objects.requireNonNull(function);
        return new C3063a3(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1005p | EnumC3082d4.f1003n | EnumC3082d4.f1009t, function, 1);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2922B3.m530i(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted() {
        return new C2988M3(this);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public final Optional mo251t(InterfaceC2871b interfaceC2871b) {
        Objects.requireNonNull(interfaceC2871b);
        return (Optional) m452x0(new C2933D2(EnumC3088e4.REFERENCE, interfaceC2871b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: t0 */
    public final InterfaceC3169s1 mo307t0(long j, InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m329d(j, interfaceC2882m);
    }

    @Override // p033j$.util.stream.Stream
    public final Object[] toArray() {
        C3041W2 c3041w2 = new InterfaceC2882m() { // from class: j$.util.stream.W2
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Object[i];
            }
        };
        return AbstractC3200x2.m321l(m451y0(c3041w2), c3041w2).mo337q(c3041w2);
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public InterfaceC3095g unordered() {
        return !m456C0() ? this : new C3056Z2(this, this, EnumC3088e4.REFERENCE, EnumC3082d4.f1007r);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: z0 */
    final InterfaceC2914A1 mo426z0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m) {
        return AbstractC3200x2.m328e(abstractC3206y2, interfaceC2908s, z, interfaceC2882m);
    }

    @Override // p033j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2988M3(this, comparator);
    }
}
