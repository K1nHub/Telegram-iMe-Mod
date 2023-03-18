package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2942I0;
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC2798g {
    /* renamed from: B */
    Object mo267B(Object obj, BiFunction biFunction, InterfaceC2574b interfaceC2574b);

    /* renamed from: E */
    InterfaceC2731U mo266E(Function function);

    /* renamed from: T */
    Stream mo265T(Predicate predicate);

    /* renamed from: V */
    Stream mo264V(Consumer consumer);

    /* renamed from: W */
    boolean mo263W(Predicate predicate);

    /* renamed from: X */
    InterfaceC2788e1 mo262X(Function function);

    /* renamed from: a */
    boolean mo261a(Predicate predicate);

    /* renamed from: b0 */
    Object mo260b0(C2942I0 c2942i0);

    /* renamed from: c */
    IntStream mo259c(Function function);

    @Override // p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    /* renamed from: d0 */
    boolean mo258d0(Predicate predicate);

    Stream distinct();

    /* renamed from: e */
    void mo257e(Consumer consumer);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: g0 */
    InterfaceC2788e1 mo256g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo255i(InterfaceC2597y interfaceC2597y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC2731U mo254j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo253l(InterfaceC2585m interfaceC2585m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo252m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo251m0(Object obj, InterfaceC2574b interfaceC2574b);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo250n(Function function);

    /* renamed from: o */
    Stream mo249o(Function function);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    /* renamed from: t */
    Optional mo248t(InterfaceC2574b interfaceC2574b);

    Object[] toArray();
}
