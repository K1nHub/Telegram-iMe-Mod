package p034j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2607U;
import p034j$.util.stream.InterfaceC2664e1;
import p034j$.util.stream.InterfaceC2674g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1119a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1119a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C2830O0 ? ((C2830O0) stream).f1149a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo267B(Object obj, BiFunction biFunction, InterfaceC2450b interfaceC2450b) {
        return this.f1119a.reduce(obj, C2879t.m115a(biFunction), C2883v.m111a(interfaceC2450b));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2607U mo266E(Function function) {
        return C2822K0.m209n0(this.f1119a.flatMapToDouble(C2825M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo265T(Predicate predicate) {
        return convert(this.f1119a.filter(C2888x0.m106a(predicate)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo264V(Consumer consumer) {
        return convert(this.f1119a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo263W(Predicate predicate) {
        return this.f1119a.allMatch(C2888x0.m106a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC2664e1 mo262X(Function function) {
        return C2826M0.m190n0(this.f1119a.flatMapToLong(C2825M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo261a(Predicate predicate) {
        return this.f1119a.anyMatch(C2888x0.m106a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo260b0(C2818I0 c2818i0) {
        return this.f1119a.collect(c2818i0 == null ? null : c2818i0.f1137a);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo259c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1119a.flatMapToInt(C2825M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream, p034j$.util.stream.InterfaceC2674g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1119a.close();
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1119a.count();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo258d0(Predicate predicate) {
        return this.f1119a.noneMatch(C2888x0.m106a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1119a.distinct());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo257e(Consumer consumer) {
        this.f1119a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2414a.m614m(this.f1119a.findAny());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2414a.m614m(this.f1119a.findFirst());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1119a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC2664e1 mo256g0(ToLongFunction toLongFunction) {
        return C2826M0.m190n0(this.f1119a.mapToLong(C2812F0.m234a(toLongFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo255i(InterfaceC2473y interfaceC2473y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1119a.collect(C2892z0.m101a(interfaceC2473y), C2875r.m119a(biConsumer), C2875r.m119a(biConsumer2));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ boolean isParallel() {
        return this.f1119a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ Iterator iterator() {
        return this.f1119a.iterator();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2607U mo254j0(ToDoubleFunction toDoubleFunction) {
        return C2822K0.m209n0(this.f1119a.mapToDouble(C2804B0.m244a(toDoubleFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo253l(InterfaceC2461m interfaceC2461m) {
        return this.f1119a.toArray(C2834T.m177a(interfaceC2461m));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1119a.limit(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo252m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1119a.mapToInt(C2808D0.m239a(toIntFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo251m0(Object obj, InterfaceC2450b interfaceC2450b) {
        return this.f1119a.reduce(obj, C2883v.m111a(interfaceC2450b));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2414a.m614m(this.f1119a.max(comparator));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2414a.m614m(this.f1119a.min(comparator));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo250n(Function function) {
        return convert(this.f1119a.map(C2825M.m202a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo249o(Function function) {
        return convert(this.f1119a.flatMap(C2825M.m202a(function)));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g onClose(Runnable runnable) {
        return C2814G0.m233n0(this.f1119a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g parallel() {
        return C2814G0.m233n0(this.f1119a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g sequential() {
        return C2814G0.m233n0(this.f1119a.sequential());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1119a.skip(j));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1119a.sorted());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1119a.sorted(comparator));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s spliterator() {
        return C2853g.m152a(this.f1119a.spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo248t(InterfaceC2450b interfaceC2450b) {
        return AbstractC2414a.m614m(this.f1119a.reduce(C2883v.m111a(interfaceC2450b)));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1119a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g unordered() {
        return C2814G0.m233n0(this.f1119a.unordered());
    }
}
