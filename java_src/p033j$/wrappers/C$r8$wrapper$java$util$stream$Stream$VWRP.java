package p033j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p033j$.util.AbstractC2838k;
import p033j$.util.Optional;
import p033j$.util.Spliterator;
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
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2964U;
import p033j$.util.stream.InterfaceC3021e1;
import p033j$.util.stream.InterfaceC3031g;
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
        return stream instanceof C3181L0 ? ((C3181L0) stream).f1285a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: A */
    public /* synthetic */ Object mo319A(Object obj, BiFunction biFunction, InterfaceC2811b interfaceC2811b) {
        return this.f1261a.reduce(obj, C3231s.m174a(biFunction), C3235u.m170a(interfaceC2811b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: D */
    public /* synthetic */ InterfaceC2964U mo318D(Function function) {
        return C3173H0.m269m0(this.f1261a.flatMapToDouble(C3178K.m244a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: S */
    public /* synthetic */ Stream mo317S(Predicate predicate) {
        return convert(this.f1261a.filter(C3236u0.m169a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: U */
    public /* synthetic */ Stream mo316U(Consumer consumer) {
        return convert(this.f1261a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ boolean mo315V(Predicate predicate) {
        return this.f1261a.allMatch(C3236u0.m169a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ InterfaceC3021e1 mo314W(Function function) {
        return C3177J0.m249m0(this.f1261a.flatMapToLong(C3178K.m244a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo313a(Predicate predicate) {
        return this.f1261a.anyMatch(C3236u0.m169a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a0 */
    public /* synthetic */ Object mo312a0(C3169F0 c3169f0) {
        return this.f1261a.collect(c3169f0 == null ? null : c3169f0.f1273a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo311c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1261a.flatMapToInt(C3178K.m244a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c0 */
    public /* synthetic */ boolean mo310c0(Predicate predicate) {
        return this.f1261a.noneMatch(C3236u0.m169a(predicate));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
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
    public /* synthetic */ void mo309e(Consumer consumer) {
        this.f1261a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: f0 */
    public /* synthetic */ InterfaceC3021e1 mo308f0(ToLongFunction toLongFunction) {
        return C3177J0.m249m0(this.f1261a.mapToLong(C3163C0.m294a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2838k.m600i(this.f1261a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2838k.m600i(this.f1261a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1261a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo307i(InterfaceC2833x interfaceC2833x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1261a.collect(C3240w0.m165a(interfaceC2833x), C3229r.m176a(biConsumer), C3229r.m176a(biConsumer2));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i0 */
    public /* synthetic */ InterfaceC2964U mo306i0(ToDoubleFunction toDoubleFunction) {
        return C3173H0.m269m0(this.f1261a.mapToDouble(C3244y0.m160a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ boolean isParallel() {
        return this.f1261a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Iterator iterator() {
        return this.f1261a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ IntStream mo305l(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1261a.mapToInt(C3159A0.m299a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l0 */
    public /* synthetic */ Object mo304l0(Object obj, InterfaceC2811b interfaceC2811b) {
        return this.f1261a.reduce(obj, C3235u.m170a(interfaceC2811b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1261a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ Stream mo303m(Function function) {
        return convert(this.f1261a.map(C3178K.m244a(function)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2838k.m600i(this.f1261a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2838k.m600i(this.f1261a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo302n(Function function) {
        return convert(this.f1261a.flatMap(C3178K.m244a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g onClose(Runnable runnable) {
        return C3165D0.m292m0(this.f1261a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g parallel() {
        return C3165D0.m292m0(this.f1261a.parallel());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: s */
    public /* synthetic */ Optional mo301s(InterfaceC2811b interfaceC2811b) {
        return AbstractC2838k.m600i(this.f1261a.reduce(C3235u.m170a(interfaceC2811b)));
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g sequential() {
        return C3165D0.m292m0(this.f1261a.sequential());
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

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator spliterator() {
        return C3207g.m208a(this.f1261a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1261a.toArray();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1261a.toArray(C3186Q.m235a(intFunction));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g unordered() {
        return C3165D0.m292m0(this.f1261a.unordered());
    }
}
