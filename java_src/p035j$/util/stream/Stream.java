package p035j$.util.stream;

import java.util.Comparator;
import p035j$.util.Optional;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
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
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC2888g {
    /* renamed from: B */
    Object mo261B(Object obj, BiFunction biFunction, InterfaceC2664b interfaceC2664b);

    /* renamed from: E */
    InterfaceC2821U mo260E(Function function);

    /* renamed from: T */
    Stream mo259T(Predicate predicate);

    /* renamed from: V */
    Stream mo258V(Consumer consumer);

    /* renamed from: W */
    boolean mo257W(Predicate predicate);

    /* renamed from: X */
    InterfaceC2878e1 mo256X(Function function);

    /* renamed from: a */
    boolean mo255a(Predicate predicate);

    /* renamed from: b0 */
    Object mo254b0(C3032I0 c3032i0);

    /* renamed from: c */
    IntStream mo253c(Function function);

    @Override // p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    /* renamed from: d0 */
    boolean mo252d0(Predicate predicate);

    Stream distinct();

    /* renamed from: e */
    void mo251e(Consumer consumer);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: g0 */
    InterfaceC2878e1 mo250g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo249i(InterfaceC2687y interfaceC2687y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC2821U mo248j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo247l(InterfaceC2675m interfaceC2675m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo246m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo245m0(Object obj, InterfaceC2664b interfaceC2664b);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo244n(Function function);

    /* renamed from: o */
    Stream mo243o(Function function);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    /* renamed from: t */
    Optional mo242t(InterfaceC2664b interfaceC2664b);

    Object[] toArray();
}
