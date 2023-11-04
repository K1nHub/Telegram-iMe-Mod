package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3174F0;
/* renamed from: j$.util.stream.Stream */
/* loaded from: classes2.dex */
public interface Stream<T> extends InterfaceC3036g {
    /* renamed from: A */
    Object mo316A(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b);

    /* renamed from: D */
    InterfaceC2969U mo315D(Function function);

    /* renamed from: S */
    Stream mo314S(Predicate predicate);

    /* renamed from: U */
    Stream mo313U(Consumer consumer);

    /* renamed from: V */
    boolean mo312V(Predicate predicate);

    /* renamed from: W */
    InterfaceC3026e1 mo311W(Function function);

    /* renamed from: a */
    boolean mo310a(Predicate predicate);

    /* renamed from: a0 */
    Object mo309a0(C3174F0 c3174f0);

    /* renamed from: c */
    IntStream mo308c(Function function);

    /* renamed from: c0 */
    boolean mo307c0(Predicate predicate);

    @Override // p033j$.util.stream.InterfaceC3036g, java.lang.AutoCloseable
    /* synthetic */ void close();

    long count();

    Stream distinct();

    /* renamed from: e */
    void mo306e(Consumer consumer);

    /* renamed from: f0 */
    InterfaceC3026e1 mo305f0(ToLongFunction toLongFunction);

    Optional findAny();

    Optional findFirst();

    void forEach(Consumer<? super T> consumer);

    /* renamed from: i */
    Object mo304i(InterfaceC2838x interfaceC2838x, BiConsumer biConsumer, BiConsumer biConsumer2);

    /* renamed from: i0 */
    InterfaceC2969U mo303i0(ToDoubleFunction toDoubleFunction);

    /* renamed from: l */
    IntStream mo302l(ToIntFunction toIntFunction);

    /* renamed from: l0 */
    Object mo301l0(Object obj, InterfaceC2816b interfaceC2816b);

    Stream limit(long j);

    /* renamed from: m */
    Stream mo300m(Function function);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* renamed from: n */
    Stream mo299n(Function function);

    /* renamed from: s */
    Optional mo298s(InterfaceC2816b interfaceC2816b);

    Stream skip(long j);

    Stream sorted();

    Stream sorted(Comparator comparator);

    Object[] toArray();

    Object[] toArray(IntFunction intFunction);
}
