package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2956I0;
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC2812g {
    /* renamed from: B */
    Object mo266B(Object obj, BiFunction biFunction, InterfaceC2588b interfaceC2588b);

    /* renamed from: E */
    InterfaceC2745U mo265E(Function function);

    /* renamed from: T */
    Stream mo264T(Predicate predicate);

    /* renamed from: V */
    Stream mo263V(Consumer consumer);

    /* renamed from: W */
    boolean mo262W(Predicate predicate);

    /* renamed from: X */
    InterfaceC2802e1 mo261X(Function function);

    /* renamed from: a */
    boolean mo260a(Predicate predicate);

    /* renamed from: b0 */
    Object mo259b0(C2956I0 c2956i0);

    /* renamed from: c */
    IntStream mo258c(Function function);

    @Override // p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    /* renamed from: d0 */
    boolean mo257d0(Predicate predicate);

    Stream distinct();

    /* renamed from: e */
    void mo256e(Consumer consumer);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: g0 */
    InterfaceC2802e1 mo255g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo254i(InterfaceC2611y interfaceC2611y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC2745U mo253j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo252l(InterfaceC2599m interfaceC2599m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo251m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo250m0(Object obj, InterfaceC2588b interfaceC2588b);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo249n(Function function);

    /* renamed from: o */
    Stream mo248o(Function function);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    /* renamed from: t */
    Optional mo247t(InterfaceC2588b interfaceC2588b);

    Object[] toArray();
}
