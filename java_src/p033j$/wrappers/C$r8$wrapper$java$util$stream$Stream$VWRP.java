package p033j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p033j$.util.AbstractC2840k;
import p033j$.util.Optional;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2966U;
import p033j$.util.stream.InterfaceC3023e1;
import p033j$.util.stream.InterfaceC3033g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1261a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1261a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3183L0 ? ((C3183L0) stream).f1285a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: A */
    public /* synthetic */ Object mo316A(Object obj, BiFunction biFunction, InterfaceC2813b interfaceC2813b) {
        return this.f1261a.reduce(obj, C3233s.m171a(biFunction), C3237u.m167a(interfaceC2813b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: D */
    public /* synthetic */ InterfaceC2966U mo315D(Function function) {
        return C3175H0.m266m0(this.f1261a.flatMapToDouble(C3180K.m241a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: S */
    public /* synthetic */ Stream mo314S(Predicate predicate) {
        return convert(this.f1261a.filter(C3238u0.m166a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: U */
    public /* synthetic */ Stream mo313U(Consumer consumer) {
        return convert(this.f1261a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ boolean mo312V(Predicate predicate) {
        return this.f1261a.allMatch(C3238u0.m166a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ InterfaceC3023e1 mo311W(Function function) {
        return C3179J0.m246m0(this.f1261a.flatMapToLong(C3180K.m241a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo310a(Predicate predicate) {
        return this.f1261a.anyMatch(C3238u0.m166a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a0 */
    public /* synthetic */ Object mo309a0(C3171F0 c3171f0) {
        return this.f1261a.collect(c3171f0 == null ? null : c3171f0.f1273a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo308c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1261a.flatMapToInt(C3180K.m241a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c0 */
    public /* synthetic */ boolean mo307c0(Predicate predicate) {
        return this.f1261a.noneMatch(C3238u0.m166a(predicate));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3033g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1261a.close();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1261a.count();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1261a.distinct());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo306e(Consumer consumer) {
        this.f1261a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: f0 */
    public /* synthetic */ InterfaceC3023e1 mo305f0(ToLongFunction toLongFunction) {
        return C3179J0.m246m0(this.f1261a.mapToLong(C3165C0.m291a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2840k.m597i(this.f1261a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2840k.m597i(this.f1261a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1261a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo304i(InterfaceC2835x interfaceC2835x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1261a.collect(C3242w0.m162a(interfaceC2835x), C3231r.m173a(biConsumer), C3231r.m173a(biConsumer2));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i0 */
    public /* synthetic */ InterfaceC2966U mo303i0(ToDoubleFunction toDoubleFunction) {
        return C3175H0.m266m0(this.f1261a.mapToDouble(C3246y0.m157a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ boolean isParallel() {
        return this.f1261a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Iterator iterator() {
        return this.f1261a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ IntStream mo302l(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1261a.mapToInt(C3161A0.m296a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l0 */
    public /* synthetic */ Object mo301l0(Object obj, InterfaceC2813b interfaceC2813b) {
        return this.f1261a.reduce(obj, C3237u.m167a(interfaceC2813b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1261a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ Stream mo300m(Function function) {
        return convert(this.f1261a.map(C3180K.m241a(function)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2840k.m597i(this.f1261a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2840k.m597i(this.f1261a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo299n(Function function) {
        return convert(this.f1261a.flatMap(C3180K.m241a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g onClose(Runnable runnable) {
        return C3167D0.m289m0(this.f1261a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g parallel() {
        return C3167D0.m289m0(this.f1261a.parallel());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: s */
    public /* synthetic */ Optional mo298s(InterfaceC2813b interfaceC2813b) {
        return AbstractC2840k.m597i(this.f1261a.reduce(C3237u.m167a(interfaceC2813b)));
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g sequential() {
        return C3167D0.m289m0(this.f1261a.sequential());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1261a.skip(j));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1261a.sorted());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1261a.sorted(comparator));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator spliterator() {
        return C3209g.m205a(this.f1261a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1261a.toArray();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1261a.toArray(C3188Q.m232a(intFunction));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g unordered() {
        return C3167D0.m289m0(this.f1261a.unordered());
    }
}
