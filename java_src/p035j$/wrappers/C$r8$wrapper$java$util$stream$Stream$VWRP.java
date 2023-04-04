package p035j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Optional;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Consumer;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.function.Predicate;
import p035j$.util.function.ToDoubleFunction;
import p035j$.util.function.ToIntFunction;
import p035j$.util.function.ToLongFunction;
import p035j$.util.stream.IntStream;
import p035j$.util.stream.InterfaceC2821U;
import p035j$.util.stream.InterfaceC2878e1;
import p035j$.util.stream.InterfaceC2888g;
import p035j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1130a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1130a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3044O0 ? ((C3044O0) stream).f1160a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo261B(Object obj, BiFunction biFunction, InterfaceC2664b interfaceC2664b) {
        return this.f1130a.reduce(obj, C3093t.m109a(biFunction), C3097v.m105a(interfaceC2664b));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2821U mo260E(Function function) {
        return C3036K0.m203n0(this.f1130a.flatMapToDouble(C3039M.m196a(function)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo259T(Predicate predicate) {
        return convert(this.f1130a.filter(C3102x0.m100a(predicate)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo258V(Consumer consumer) {
        return convert(this.f1130a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo257W(Predicate predicate) {
        return this.f1130a.allMatch(C3102x0.m100a(predicate));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC2878e1 mo256X(Function function) {
        return C3040M0.m184n0(this.f1130a.flatMapToLong(C3039M.m196a(function)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo255a(Predicate predicate) {
        return this.f1130a.anyMatch(C3102x0.m100a(predicate));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo254b0(C3032I0 c3032i0) {
        return this.f1130a.collect(c3032i0 == null ? null : c3032i0.f1148a);
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo253c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1130a.flatMapToInt(C3039M.m196a(function)));
    }

    @Override // p035j$.util.stream.Stream, p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1130a.close();
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1130a.count();
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo252d0(Predicate predicate) {
        return this.f1130a.noneMatch(C3102x0.m100a(predicate));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1130a.distinct());
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo251e(Consumer consumer) {
        this.f1130a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2628a.m608m(this.f1130a.findAny());
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2628a.m608m(this.f1130a.findFirst());
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1130a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC2878e1 mo250g0(ToLongFunction toLongFunction) {
        return C3040M0.m184n0(this.f1130a.mapToLong(C3026F0.m228a(toLongFunction)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo249i(InterfaceC2687y interfaceC2687y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1130a.collect(C3106z0.m95a(interfaceC2687y), C3089r.m113a(biConsumer), C3089r.m113a(biConsumer2));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ boolean isParallel() {
        return this.f1130a.isParallel();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ Iterator iterator() {
        return this.f1130a.iterator();
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2821U mo248j0(ToDoubleFunction toDoubleFunction) {
        return C3036K0.m203n0(this.f1130a.mapToDouble(C3018B0.m238a(toDoubleFunction)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo247l(InterfaceC2675m interfaceC2675m) {
        return this.f1130a.toArray(C3048T.m171a(interfaceC2675m));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1130a.limit(j));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo246m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1130a.mapToInt(C3022D0.m233a(toIntFunction)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo245m0(Object obj, InterfaceC2664b interfaceC2664b) {
        return this.f1130a.reduce(obj, C3097v.m105a(interfaceC2664b));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2628a.m608m(this.f1130a.max(comparator));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2628a.m608m(this.f1130a.min(comparator));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo244n(Function function) {
        return convert(this.f1130a.map(C3039M.m196a(function)));
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo243o(Function function) {
        return convert(this.f1130a.flatMap(C3039M.m196a(function)));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g onClose(Runnable runnable) {
        return C3028G0.m227n0(this.f1130a.onClose(runnable));
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g parallel() {
        return C3028G0.m227n0(this.f1130a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g sequential() {
        return C3028G0.m227n0(this.f1130a.sequential());
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1130a.skip(j));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1130a.sorted());
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1130a.sorted(comparator));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s spliterator() {
        return C3067g.m146a(this.f1130a.spliterator());
    }

    @Override // p035j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo242t(InterfaceC2664b interfaceC2664b) {
        return AbstractC2628a.m608m(this.f1130a.reduce(C3097v.m105a(interfaceC2664b)));
    }

    @Override // p035j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1130a.toArray();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g unordered() {
        return C3028G0.m227n0(this.f1130a.unordered());
    }
}
