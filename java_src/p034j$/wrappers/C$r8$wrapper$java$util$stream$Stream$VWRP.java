package p034j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
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
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2745U;
import p034j$.util.stream.InterfaceC2802e1;
import p034j$.util.stream.InterfaceC2812g;
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
        return stream instanceof C2968O0 ? ((C2968O0) stream).f1155a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo266B(Object obj, BiFunction biFunction, InterfaceC2588b interfaceC2588b) {
        return this.f1125a.reduce(obj, C3017t.m114a(biFunction), C3021v.m110a(interfaceC2588b));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2745U mo265E(Function function) {
        return C2960K0.m208n0(this.f1125a.flatMapToDouble(C2963M.m201a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo264T(Predicate predicate) {
        return convert(this.f1125a.filter(C3026x0.m105a(predicate)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo263V(Consumer consumer) {
        return convert(this.f1125a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo262W(Predicate predicate) {
        return this.f1125a.allMatch(C3026x0.m105a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC2802e1 mo261X(Function function) {
        return C2964M0.m189n0(this.f1125a.flatMapToLong(C2963M.m201a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo260a(Predicate predicate) {
        return this.f1125a.anyMatch(C3026x0.m105a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo259b0(C2956I0 c2956i0) {
        return this.f1125a.collect(c2956i0 == null ? null : c2956i0.f1143a);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo258c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1125a.flatMapToInt(C2963M.m201a(function)));
    }

    @Override // p034j$.util.stream.Stream, p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1125a.close();
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1125a.count();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo257d0(Predicate predicate) {
        return this.f1125a.noneMatch(C3026x0.m105a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1125a.distinct());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo256e(Consumer consumer) {
        this.f1125a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2552a.m613m(this.f1125a.findAny());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2552a.m613m(this.f1125a.findFirst());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1125a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC2802e1 mo255g0(ToLongFunction toLongFunction) {
        return C2964M0.m189n0(this.f1125a.mapToLong(C2950F0.m233a(toLongFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo254i(InterfaceC2611y interfaceC2611y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1125a.collect(C3030z0.m100a(interfaceC2611y), C3013r.m118a(biConsumer), C3013r.m118a(biConsumer2));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ boolean isParallel() {
        return this.f1125a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ Iterator iterator() {
        return this.f1125a.iterator();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2745U mo253j0(ToDoubleFunction toDoubleFunction) {
        return C2960K0.m208n0(this.f1125a.mapToDouble(C2942B0.m243a(toDoubleFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo252l(InterfaceC2599m interfaceC2599m) {
        return this.f1125a.toArray(C2972T.m176a(interfaceC2599m));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1125a.limit(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo251m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1125a.mapToInt(C2946D0.m238a(toIntFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo250m0(Object obj, InterfaceC2588b interfaceC2588b) {
        return this.f1125a.reduce(obj, C3021v.m110a(interfaceC2588b));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2552a.m613m(this.f1125a.max(comparator));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2552a.m613m(this.f1125a.min(comparator));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo249n(Function function) {
        return convert(this.f1125a.map(C2963M.m201a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo248o(Function function) {
        return convert(this.f1125a.flatMap(C2963M.m201a(function)));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g onClose(Runnable runnable) {
        return C2952G0.m232n0(this.f1125a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g parallel() {
        return C2952G0.m232n0(this.f1125a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g sequential() {
        return C2952G0.m232n0(this.f1125a.sequential());
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

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s spliterator() {
        return C2991g.m151a(this.f1125a.spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo247t(InterfaceC2588b interfaceC2588b) {
        return AbstractC2552a.m613m(this.f1125a.reduce(C3021v.m110a(interfaceC2588b)));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1125a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g unordered() {
        return C2952G0.m232n0(this.f1125a.unordered());
    }
}
