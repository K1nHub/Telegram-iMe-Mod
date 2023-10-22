package p033j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p033j$.util.AbstractC2839k;
import p033j$.util.Optional;
import p033j$.util.Spliterator;
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
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2965U;
import p033j$.util.stream.InterfaceC3022e1;
import p033j$.util.stream.InterfaceC3032g;
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
        return stream instanceof C3182L0 ? ((C3182L0) stream).f1285a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: A */
    public /* synthetic */ Object mo315A(Object obj, BiFunction biFunction, InterfaceC2812b interfaceC2812b) {
        return this.f1261a.reduce(obj, C3232s.m169a(biFunction), C3236u.m165a(interfaceC2812b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: D */
    public /* synthetic */ InterfaceC2965U mo314D(Function function) {
        return C3174H0.m265m0(this.f1261a.flatMapToDouble(C3179K.m240a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: S */
    public /* synthetic */ Stream mo313S(Predicate predicate) {
        return convert(this.f1261a.filter(C3237u0.m164a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: U */
    public /* synthetic */ Stream mo312U(Consumer consumer) {
        return convert(this.f1261a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ boolean mo311V(Predicate predicate) {
        return this.f1261a.allMatch(C3237u0.m164a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ InterfaceC3022e1 mo310W(Function function) {
        return C3178J0.m245m0(this.f1261a.flatMapToLong(C3179K.m240a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo309a(Predicate predicate) {
        return this.f1261a.anyMatch(C3237u0.m164a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a0 */
    public /* synthetic */ Object mo308a0(C3170F0 c3170f0) {
        return this.f1261a.collect(c3170f0 == null ? null : c3170f0.f1273a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo307c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1261a.flatMapToInt(C3179K.m240a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c0 */
    public /* synthetic */ boolean mo306c0(Predicate predicate) {
        return this.f1261a.noneMatch(C3237u0.m164a(predicate));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
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
    public /* synthetic */ void mo305e(Consumer consumer) {
        this.f1261a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: f0 */
    public /* synthetic */ InterfaceC3022e1 mo304f0(ToLongFunction toLongFunction) {
        return C3178J0.m245m0(this.f1261a.mapToLong(C3164C0.m290a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2839k.m596i(this.f1261a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2839k.m596i(this.f1261a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1261a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo303i(InterfaceC2834x interfaceC2834x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1261a.collect(C3241w0.m160a(interfaceC2834x), C3230r.m171a(biConsumer), C3230r.m171a(biConsumer2));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i0 */
    public /* synthetic */ InterfaceC2965U mo302i0(ToDoubleFunction toDoubleFunction) {
        return C3174H0.m265m0(this.f1261a.mapToDouble(C3245y0.m155a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ boolean isParallel() {
        return this.f1261a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Iterator iterator() {
        return this.f1261a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ IntStream mo301l(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1261a.mapToInt(C3160A0.m295a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l0 */
    public /* synthetic */ Object mo300l0(Object obj, InterfaceC2812b interfaceC2812b) {
        return this.f1261a.reduce(obj, C3236u.m165a(interfaceC2812b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1261a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ Stream mo299m(Function function) {
        return convert(this.f1261a.map(C3179K.m240a(function)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2839k.m596i(this.f1261a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2839k.m596i(this.f1261a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo298n(Function function) {
        return convert(this.f1261a.flatMap(C3179K.m240a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g onClose(Runnable runnable) {
        return C3166D0.m288m0(this.f1261a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g parallel() {
        return C3166D0.m288m0(this.f1261a.parallel());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: s */
    public /* synthetic */ Optional mo297s(InterfaceC2812b interfaceC2812b) {
        return AbstractC2839k.m596i(this.f1261a.reduce(C3236u.m165a(interfaceC2812b)));
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g sequential() {
        return C3166D0.m288m0(this.f1261a.sequential());
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

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator spliterator() {
        return C3208g.m204a(this.f1261a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1261a.toArray();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1261a.toArray(C3187Q.m231a(intFunction));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g unordered() {
        return C3166D0.m288m0(this.f1261a.unordered());
    }
}
