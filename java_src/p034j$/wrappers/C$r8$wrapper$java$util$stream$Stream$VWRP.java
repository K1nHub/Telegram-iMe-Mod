package p034j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2731U;
import p034j$.util.stream.InterfaceC2788e1;
import p034j$.util.stream.InterfaceC2798g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1124a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1124a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C2954O0 ? ((C2954O0) stream).f1154a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo267B(Object obj, BiFunction biFunction, InterfaceC2574b interfaceC2574b) {
        return this.f1124a.reduce(obj, C3003t.m115a(biFunction), C3007v.m111a(interfaceC2574b));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2731U mo266E(Function function) {
        return C2946K0.m209n0(this.f1124a.flatMapToDouble(C2949M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo265T(Predicate predicate) {
        return convert(this.f1124a.filter(C3012x0.m106a(predicate)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo264V(Consumer consumer) {
        return convert(this.f1124a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo263W(Predicate predicate) {
        return this.f1124a.allMatch(C3012x0.m106a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC2788e1 mo262X(Function function) {
        return C2950M0.m190n0(this.f1124a.flatMapToLong(C2949M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo261a(Predicate predicate) {
        return this.f1124a.anyMatch(C3012x0.m106a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo260b0(C2942I0 c2942i0) {
        return this.f1124a.collect(c2942i0 == null ? null : c2942i0.f1142a);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo259c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1124a.flatMapToInt(C2949M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream, p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1124a.close();
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1124a.count();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo258d0(Predicate predicate) {
        return this.f1124a.noneMatch(C3012x0.m106a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1124a.distinct());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo257e(Consumer consumer) {
        this.f1124a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2538a.m614m(this.f1124a.findAny());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2538a.m614m(this.f1124a.findFirst());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1124a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC2788e1 mo256g0(ToLongFunction toLongFunction) {
        return C2950M0.m190n0(this.f1124a.mapToLong(C2936F0.m234a(toLongFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo255i(InterfaceC2597y interfaceC2597y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1124a.collect(C3016z0.m101a(interfaceC2597y), C2999r.m119a(biConsumer), C2999r.m119a(biConsumer2));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ boolean isParallel() {
        return this.f1124a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ Iterator iterator() {
        return this.f1124a.iterator();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2731U mo254j0(ToDoubleFunction toDoubleFunction) {
        return C2946K0.m209n0(this.f1124a.mapToDouble(C2928B0.m244a(toDoubleFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo253l(InterfaceC2585m interfaceC2585m) {
        return this.f1124a.toArray(C2958T.m177a(interfaceC2585m));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1124a.limit(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo252m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1124a.mapToInt(C2932D0.m239a(toIntFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo251m0(Object obj, InterfaceC2574b interfaceC2574b) {
        return this.f1124a.reduce(obj, C3007v.m111a(interfaceC2574b));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2538a.m614m(this.f1124a.max(comparator));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2538a.m614m(this.f1124a.min(comparator));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo250n(Function function) {
        return convert(this.f1124a.map(C2949M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo249o(Function function) {
        return convert(this.f1124a.flatMap(C2949M.m202a(function)));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g onClose(Runnable runnable) {
        return C2938G0.m233n0(this.f1124a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g parallel() {
        return C2938G0.m233n0(this.f1124a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g sequential() {
        return C2938G0.m233n0(this.f1124a.sequential());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1124a.skip(j));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1124a.sorted());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1124a.sorted(comparator));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s spliterator() {
        return C2977g.m152a(this.f1124a.spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo248t(InterfaceC2574b interfaceC2574b) {
        return AbstractC2538a.m614m(this.f1124a.reduce(C3007v.m111a(interfaceC2574b)));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1124a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g unordered() {
        return C2938G0.m233n0(this.f1124a.unordered());
    }
}
