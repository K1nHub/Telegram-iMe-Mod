package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3169F0;
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC3031g {
    /* renamed from: A */
    Object mo319A(Object obj, BiFunction biFunction, InterfaceC2811b interfaceC2811b);

    /* renamed from: D */
    InterfaceC2964U mo318D(Function function);

    /* renamed from: S */
    Stream mo317S(Predicate predicate);

    /* renamed from: U */
    Stream mo316U(Consumer consumer);

    /* renamed from: V */
    boolean mo315V(Predicate predicate);

    /* renamed from: W */
    InterfaceC3021e1 mo314W(Function function);

    /* renamed from: a */
    boolean mo313a(Predicate predicate);

    /* renamed from: a0 */
    Object mo312a0(C3169F0 c3169f0);

    /* renamed from: c */
    IntStream mo311c(Function function);

    /* renamed from: c0 */
    boolean mo310c0(Predicate predicate);

    @Override // p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    Stream distinct();

    /* renamed from: e */
    void mo309e(Consumer consumer);

    /* renamed from: f0 */
    InterfaceC3021e1 mo308f0(ToLongFunction toLongFunction);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: i */
    Object mo307i(InterfaceC2833x interfaceC2833x, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: i0 */
    InterfaceC2964U mo306i0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    IntStream mo305l(ToIntFunction toIntFunction);

    /* renamed from: l0 */
    Object mo304l0(Object obj, InterfaceC2811b interfaceC2811b);

    Stream limit(long j);

    /* renamed from: m */
    Stream mo303m(Function function);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo302n(Function function);

    /* renamed from: s */
    Optional mo301s(InterfaceC2811b interfaceC2811b);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    Object[] toArray();

    Object[] toArray(IntFunction intFunction);
}
