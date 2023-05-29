package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3058I0;
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC2914g {
    /* renamed from: B */
    Object mo252B(Object obj, BiFunction biFunction, InterfaceC2690b interfaceC2690b);

    /* renamed from: E */
    InterfaceC2847U mo251E(Function function);

    /* renamed from: T */
    Stream mo250T(Predicate predicate);

    /* renamed from: V */
    Stream mo249V(Consumer consumer);

    /* renamed from: W */
    boolean mo248W(Predicate predicate);

    /* renamed from: X */
    InterfaceC2904e1 mo247X(Function function);

    /* renamed from: a */
    boolean mo246a(Predicate predicate);

    /* renamed from: b0 */
    Object mo245b0(C3058I0 c3058i0);

    /* renamed from: c */
    IntStream mo244c(Function function);

    @Override // p034j$.util.stream.InterfaceC2914g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    /* renamed from: d0 */
    boolean mo243d0(Predicate predicate);

    Stream distinct();

    /* renamed from: e */
    void mo242e(Consumer consumer);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: g0 */
    InterfaceC2904e1 mo241g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo240i(InterfaceC2713y interfaceC2713y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC2847U mo239j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo238l(InterfaceC2701m interfaceC2701m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo237m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo236m0(Object obj, InterfaceC2690b interfaceC2690b);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo235n(Function function);

    /* renamed from: o */
    Stream mo234o(Function function);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    /* renamed from: t */
    Optional mo233t(InterfaceC2690b interfaceC2690b);

    Object[] toArray();
}
