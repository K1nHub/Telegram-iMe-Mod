package p034j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2808U;
import p034j$.util.stream.InterfaceC2865e1;
import p034j$.util.stream.InterfaceC2875g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1125a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1125a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3031O0 ? ((C3031O0) stream).f1155a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo247B(Object obj, BiFunction biFunction, InterfaceC2651b interfaceC2651b) {
        return this.f1125a.reduce(obj, C3080t.m95a(biFunction), C3084v.m91a(interfaceC2651b));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2808U mo246E(Function function) {
        return C3023K0.m189n0(this.f1125a.flatMapToDouble(C3026M.m182a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo245T(Predicate predicate) {
        return convert(this.f1125a.filter(C3089x0.m86a(predicate)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo244V(Consumer consumer) {
        return convert(this.f1125a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo243W(Predicate predicate) {
        return this.f1125a.allMatch(C3089x0.m86a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC2865e1 mo242X(Function function) {
        return C3027M0.m170n0(this.f1125a.flatMapToLong(C3026M.m182a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo241a(Predicate predicate) {
        return this.f1125a.anyMatch(C3089x0.m86a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo240b0(C3019I0 c3019i0) {
        return this.f1125a.collect(c3019i0 == null ? null : c3019i0.f1143a);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo239c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1125a.flatMapToInt(C3026M.m182a(function)));
    }

    @Override // p034j$.util.stream.Stream, p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1125a.close();
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1125a.count();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo238d0(Predicate predicate) {
        return this.f1125a.noneMatch(C3089x0.m86a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1125a.distinct());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo237e(Consumer consumer) {
        this.f1125a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2615a.m594m(this.f1125a.findAny());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2615a.m594m(this.f1125a.findFirst());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1125a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC2865e1 mo236g0(ToLongFunction toLongFunction) {
        return C3027M0.m170n0(this.f1125a.mapToLong(C3013F0.m214a(toLongFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo235i(InterfaceC2674y interfaceC2674y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1125a.collect(C3093z0.m81a(interfaceC2674y), C3076r.m99a(biConsumer), C3076r.m99a(biConsumer2));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ boolean isParallel() {
        return this.f1125a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ Iterator iterator() {
        return this.f1125a.iterator();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2808U mo234j0(ToDoubleFunction toDoubleFunction) {
        return C3023K0.m189n0(this.f1125a.mapToDouble(C3005B0.m224a(toDoubleFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo233l(InterfaceC2662m interfaceC2662m) {
        return this.f1125a.toArray(C3035T.m157a(interfaceC2662m));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1125a.limit(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo232m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1125a.mapToInt(C3009D0.m219a(toIntFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo231m0(Object obj, InterfaceC2651b interfaceC2651b) {
        return this.f1125a.reduce(obj, C3084v.m91a(interfaceC2651b));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2615a.m594m(this.f1125a.max(comparator));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2615a.m594m(this.f1125a.min(comparator));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo230n(Function function) {
        return convert(this.f1125a.map(C3026M.m182a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo229o(Function function) {
        return convert(this.f1125a.flatMap(C3026M.m182a(function)));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g onClose(Runnable runnable) {
        return C3015G0.m213n0(this.f1125a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g parallel() {
        return C3015G0.m213n0(this.f1125a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g sequential() {
        return C3015G0.m213n0(this.f1125a.sequential());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1125a.skip(j));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1125a.sorted());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1125a.sorted(comparator));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s spliterator() {
        return C3054g.m132a(this.f1125a.spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo228t(InterfaceC2651b interfaceC2651b) {
        return AbstractC2615a.m594m(this.f1125a.reduce(C3084v.m91a(interfaceC2651b)));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1125a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g unordered() {
        return C3015G0.m213n0(this.f1125a.unordered());
    }
}
