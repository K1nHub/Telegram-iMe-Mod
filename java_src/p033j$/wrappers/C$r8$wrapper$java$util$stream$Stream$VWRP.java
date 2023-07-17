package p033j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2973U;
import p033j$.util.stream.InterfaceC3030e1;
import p033j$.util.stream.InterfaceC3040g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1210a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1210a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3196O0 ? ((C3196O0) stream).f1240a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo252B(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        return this.f1210a.reduce(obj, C3245t.m100a(biFunction), C3249v.m96a(interfaceC2816b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2973U mo251E(Function function) {
        return C3188K0.m194n0(this.f1210a.flatMapToDouble(C3191M.m187a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo250T(Predicate predicate) {
        return convert(this.f1210a.filter(C3254x0.m91a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo249V(Consumer consumer) {
        return convert(this.f1210a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo248W(Predicate predicate) {
        return this.f1210a.allMatch(C3254x0.m91a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC3030e1 mo247X(Function function) {
        return C3192M0.m175n0(this.f1210a.flatMapToLong(C3191M.m187a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo246a(Predicate predicate) {
        return this.f1210a.anyMatch(C3254x0.m91a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo245b0(C3184I0 c3184i0) {
        return this.f1210a.collect(c3184i0 == null ? null : c3184i0.f1228a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo244c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1210a.flatMapToInt(C3191M.m187a(function)));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1210a.close();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1210a.count();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo243d0(Predicate predicate) {
        return this.f1210a.noneMatch(C3254x0.m91a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1210a.distinct());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo242e(Consumer consumer) {
        this.f1210a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2780a.m598m(this.f1210a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2780a.m598m(this.f1210a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1210a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC3030e1 mo241g0(ToLongFunction toLongFunction) {
        return C3192M0.m175n0(this.f1210a.mapToLong(C3178F0.m219a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo240i(InterfaceC2839y interfaceC2839y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1210a.collect(C3258z0.m86a(interfaceC2839y), C3241r.m104a(biConsumer), C3241r.m104a(biConsumer2));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1210a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1210a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2973U mo239j0(ToDoubleFunction toDoubleFunction) {
        return C3188K0.m194n0(this.f1210a.mapToDouble(C3170B0.m229a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo238l(InterfaceC2827m interfaceC2827m) {
        return this.f1210a.toArray(C3200T.m162a(interfaceC2827m));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1210a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo237m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1210a.mapToInt(C3174D0.m224a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo236m0(Object obj, InterfaceC2816b interfaceC2816b) {
        return this.f1210a.reduce(obj, C3249v.m96a(interfaceC2816b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2780a.m598m(this.f1210a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2780a.m598m(this.f1210a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo235n(Function function) {
        return convert(this.f1210a.map(C3191M.m187a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo234o(Function function) {
        return convert(this.f1210a.flatMap(C3191M.m187a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m218n0(this.f1210a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m218n0(this.f1210a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m218n0(this.f1210a.sequential());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1210a.skip(j));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1210a.sorted());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1210a.sorted(comparator));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m137a(this.f1210a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo233t(InterfaceC2816b interfaceC2816b) {
        return AbstractC2780a.m598m(this.f1210a.reduce(C3249v.m96a(interfaceC2816b)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1210a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m218n0(this.f1210a.unordered());
    }
}
