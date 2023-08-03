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
    final /* synthetic */ java.util.stream.Stream f1213a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1213a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3196O0 ? ((C3196O0) stream).f1243a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo270B(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        return this.f1213a.reduce(obj, C3245t.m118a(biFunction), C3249v.m114a(interfaceC2816b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC2973U mo269E(Function function) {
        return C3188K0.m212n0(this.f1213a.flatMapToDouble(C3191M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo268T(Predicate predicate) {
        return convert(this.f1213a.filter(C3254x0.m109a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo267V(Consumer consumer) {
        return convert(this.f1213a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo266W(Predicate predicate) {
        return this.f1213a.allMatch(C3254x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC3030e1 mo265X(Function function) {
        return C3192M0.m193n0(this.f1213a.flatMapToLong(C3191M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo264a(Predicate predicate) {
        return this.f1213a.anyMatch(C3254x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo263b0(C3184I0 c3184i0) {
        return this.f1213a.collect(c3184i0 == null ? null : c3184i0.f1231a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo262c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1213a.flatMapToInt(C3191M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1213a.close();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1213a.count();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo261d0(Predicate predicate) {
        return this.f1213a.noneMatch(C3254x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1213a.distinct());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo260e(Consumer consumer) {
        this.f1213a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2780a.m616m(this.f1213a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2780a.m616m(this.f1213a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1213a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC3030e1 mo259g0(ToLongFunction toLongFunction) {
        return C3192M0.m193n0(this.f1213a.mapToLong(C3178F0.m237a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo258i(InterfaceC2839y interfaceC2839y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1213a.collect(C3258z0.m104a(interfaceC2839y), C3241r.m122a(biConsumer), C3241r.m122a(biConsumer2));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1213a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1213a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC2973U mo257j0(ToDoubleFunction toDoubleFunction) {
        return C3188K0.m212n0(this.f1213a.mapToDouble(C3170B0.m247a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo256l(InterfaceC2827m interfaceC2827m) {
        return this.f1213a.toArray(C3200T.m180a(interfaceC2827m));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1213a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo255m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1213a.mapToInt(C3174D0.m242a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo254m0(Object obj, InterfaceC2816b interfaceC2816b) {
        return this.f1213a.reduce(obj, C3249v.m114a(interfaceC2816b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2780a.m616m(this.f1213a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2780a.m616m(this.f1213a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo253n(Function function) {
        return convert(this.f1213a.map(C3191M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo252o(Function function) {
        return convert(this.f1213a.flatMap(C3191M.m205a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m236n0(this.f1213a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m236n0(this.f1213a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m236n0(this.f1213a.sequential());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1213a.skip(j));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1213a.sorted());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1213a.sorted(comparator));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m155a(this.f1213a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo251t(InterfaceC2816b interfaceC2816b) {
        return AbstractC2780a.m616m(this.f1213a.reduce(C3249v.m114a(interfaceC2816b)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1213a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m236n0(this.f1213a.unordered());
    }
}
