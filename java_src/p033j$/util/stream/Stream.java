package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3170F0;
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC3032g {
    /* renamed from: A */
    Object mo315A(Object obj, BiFunction biFunction, InterfaceC2812b interfaceC2812b);

    /* renamed from: D */
    InterfaceC2965U mo314D(Function function);

    /* renamed from: S */
    Stream mo313S(Predicate predicate);

    /* renamed from: U */
    Stream mo312U(Consumer consumer);

    /* renamed from: V */
    boolean mo311V(Predicate predicate);

    /* renamed from: W */
    InterfaceC3022e1 mo310W(Function function);

    /* renamed from: a */
    boolean mo309a(Predicate predicate);

    /* renamed from: a0 */
    Object mo308a0(C3170F0 c3170f0);

    /* renamed from: c */
    IntStream mo307c(Function function);

    /* renamed from: c0 */
    boolean mo306c0(Predicate predicate);

    @Override // p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    Stream distinct();

    /* renamed from: e */
    void mo305e(Consumer consumer);

    /* renamed from: f0 */
    InterfaceC3022e1 mo304f0(ToLongFunction toLongFunction);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: i */
    Object mo303i(InterfaceC2834x interfaceC2834x, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: i0 */
    InterfaceC2965U mo302i0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    IntStream mo301l(ToIntFunction toIntFunction);

    /* renamed from: l0 */
    Object mo300l0(Object obj, InterfaceC2812b interfaceC2812b);

    Stream limit(long j);

    /* renamed from: m */
    Stream mo299m(Function function);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo298n(Function function);

    /* renamed from: s */
    Optional mo297s(InterfaceC2812b interfaceC2812b);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    Object[] toArray();

    Object[] toArray(IntFunction intFunction);
}
