package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
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
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC3040g {
    /* renamed from: B */
    Object mo252B(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b);

    /* renamed from: E */
    InterfaceC2973U mo251E(Function function);

    /* renamed from: T */
    Stream mo250T(Predicate predicate);

    /* renamed from: V */
    Stream mo249V(Consumer consumer);

    /* renamed from: W */
    boolean mo248W(Predicate predicate);

    /* renamed from: X */
    InterfaceC3030e1 mo247X(Function function);

    /* renamed from: a */
    boolean mo246a(Predicate predicate);

    /* renamed from: b0 */
    Object mo245b0(C3184I0 c3184i0);

    /* renamed from: c */
    IntStream mo244c(Function function);

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
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
    InterfaceC3030e1 mo241g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo240i(InterfaceC2839y interfaceC2839y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC2973U mo239j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo238l(InterfaceC2827m interfaceC2827m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo237m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo236m0(Object obj, InterfaceC2816b interfaceC2816b);

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
    Optional mo233t(InterfaceC2816b interfaceC2816b);

    Object[] toArray();
}
