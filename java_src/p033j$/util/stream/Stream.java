package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
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
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC3095g {
    /* renamed from: B */
    Object mo270B(Object obj, BiFunction biFunction, InterfaceC2871b interfaceC2871b);

    /* renamed from: E */
    InterfaceC3028U mo269E(Function function);

    /* renamed from: T */
    Stream mo268T(Predicate predicate);

    /* renamed from: V */
    Stream mo267V(Consumer consumer);

    /* renamed from: W */
    boolean mo266W(Predicate predicate);

    /* renamed from: X */
    InterfaceC3085e1 mo265X(Function function);

    /* renamed from: a */
    boolean mo264a(Predicate predicate);

    /* renamed from: b0 */
    Object mo263b0(C3239I0 c3239i0);

    /* renamed from: c */
    IntStream mo262c(Function function);

    @Override // p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    /* renamed from: d0 */
    boolean mo261d0(Predicate predicate);

    Stream distinct();

    /* renamed from: e */
    void mo260e(Consumer consumer);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: g0 */
    InterfaceC3085e1 mo259g0(ToLongFunction toLongFunction);

    /* renamed from: i */
    Object mo258i(InterfaceC2894y interfaceC2894y, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: j0 */
    InterfaceC3028U mo257j0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    Object[] mo256l(InterfaceC2882m interfaceC2882m);

    Stream limit(long j);

    /* renamed from: m */
    IntStream mo255m(ToIntFunction toIntFunction);

    /* renamed from: m0 */
    Object mo254m0(Object obj, InterfaceC2871b interfaceC2871b);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo253n(Function function);

    /* renamed from: o */
    Stream mo252o(Function function);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    /* renamed from: t */
    Optional mo251t(InterfaceC2871b interfaceC2871b);

    Object[] toArray();
}
