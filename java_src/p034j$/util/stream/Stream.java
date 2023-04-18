package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
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
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC2875g {
    /* renamed from: B */
    Object mo247B(Object obj, BiFunction biFunction, InterfaceC2651b interfaceC2651b);

    /* renamed from: E */
    InterfaceC2808U mo246E(Function function);

    /* renamed from: T */
    Stream mo245T(Predicate predicate);

    /* renamed from: V */
    Stream mo244V(Consumer consumer);

    /* renamed from: W */
    boolean mo243W(Predicate predicate);

    /* renamed from: X */
    InterfaceC2865e1 mo242X(Function function);

    /* renamed from: a */
    boolean mo241a(Predicate predicate);

    /* renamed from: b0 */
    Object mo240b0(C3019I0 c3019i0);

    /* renamed from: c */
    IntStream mo239c(Function function);

    @Override // p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    /* renamed from: d0 */
    boolean mo238d0(Predicate predicate);

    Stream distinct();

    /* renamed from: e */
    void mo237e(Consumer consumer);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: g0 */
    InterfaceC2865e1 mo236g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo235i(InterfaceC2674y interfaceC2674y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC2808U mo234j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo233l(InterfaceC2662m interfaceC2662m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo232m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo231m0(Object obj, InterfaceC2651b interfaceC2651b);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo230n(Function function);

    /* renamed from: o */
    Stream mo229o(Function function);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    /* renamed from: t */
    Optional mo228t(InterfaceC2651b interfaceC2651b);

    Object[] toArray();
}
