package p034j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.Optional;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2852U;
import p034j$.util.stream.InterfaceC2909e1;
import p034j$.util.stream.InterfaceC2919g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1128a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1128a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3075O0 ? ((C3075O0) stream).f1158a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo252B(Object obj, BiFunction biFunction, InterfaceC2695b interfaceC2695b) {
        return this.f1128a.reduce(obj, C3124t.m100a(biFunction), C3128v.m96a(interfaceC2695b));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2852U mo251E(Function function) {
        return C3067K0.m194n0(this.f1128a.flatMapToDouble(C3070M.m187a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo250T(Predicate predicate) {
        return convert(this.f1128a.filter(C3133x0.m91a(predicate)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo249V(Consumer consumer) {
        return convert(this.f1128a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo248W(Predicate predicate) {
        return this.f1128a.allMatch(C3133x0.m91a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC2909e1 mo247X(Function function) {
        return C3071M0.m175n0(this.f1128a.flatMapToLong(C3070M.m187a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo246a(Predicate predicate) {
        return this.f1128a.anyMatch(C3133x0.m91a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo245b0(C3063I0 c3063i0) {
        return this.f1128a.collect(c3063i0 == null ? null : c3063i0.f1146a);
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo244c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1128a.flatMapToInt(C3070M.m187a(function)));
    }

    @Override // p034j$.util.stream.Stream, p034j$.util.stream.InterfaceC2919g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1128a.close();
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1128a.count();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo243d0(Predicate predicate) {
        return this.f1128a.noneMatch(C3133x0.m91a(predicate));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1128a.distinct());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo242e(Consumer consumer) {
        this.f1128a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2659a.m598m(this.f1128a.findAny());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2659a.m598m(this.f1128a.findFirst());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1128a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC2909e1 mo241g0(ToLongFunction toLongFunction) {
        return C3071M0.m175n0(this.f1128a.mapToLong(C3057F0.m219a(toLongFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo240i(InterfaceC2718y interfaceC2718y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1128a.collect(C3137z0.m86a(interfaceC2718y), C3120r.m104a(biConsumer), C3120r.m104a(biConsumer2));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ boolean isParallel() {
        return this.f1128a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ Iterator iterator() {
        return this.f1128a.iterator();
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2852U mo239j0(ToDoubleFunction toDoubleFunction) {
        return C3067K0.m194n0(this.f1128a.mapToDouble(C3049B0.m229a(toDoubleFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo238l(InterfaceC2706m interfaceC2706m) {
        return this.f1128a.toArray(C3079T.m162a(interfaceC2706m));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1128a.limit(j));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo237m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1128a.mapToInt(C3053D0.m224a(toIntFunction)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo236m0(Object obj, InterfaceC2695b interfaceC2695b) {
        return this.f1128a.reduce(obj, C3128v.m96a(interfaceC2695b));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2659a.m598m(this.f1128a.max(comparator));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2659a.m598m(this.f1128a.min(comparator));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo235n(Function function) {
        return convert(this.f1128a.map(C3070M.m187a(function)));
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo234o(Function function) {
        return convert(this.f1128a.flatMap(C3070M.m187a(function)));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g onClose(Runnable runnable) {
        return C3059G0.m218n0(this.f1128a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g parallel() {
        return C3059G0.m218n0(this.f1128a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g sequential() {
        return C3059G0.m218n0(this.f1128a.sequential());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1128a.skip(j));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1128a.sorted());
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1128a.sorted(comparator));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s spliterator() {
        return C3098g.m137a(this.f1128a.spliterator());
    }

    @Override // p034j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo233t(InterfaceC2695b interfaceC2695b) {
        return AbstractC2659a.m598m(this.f1128a.reduce(C3128v.m96a(interfaceC2695b)));
    }

    @Override // p034j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1128a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g unordered() {
        return C3059G0.m218n0(this.f1128a.unordered());
    }
}
