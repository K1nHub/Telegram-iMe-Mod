package p035j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p035j$.util.AbstractC2628a;
import p035j$.util.C2662f;
import p035j$.util.C2690i;
import p035j$.util.InterfaceC2694m;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2666d;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2669g;
import p035j$.util.function.InterfaceC2670h;
import p035j$.util.function.InterfaceC2683u;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.stream.IntStream;
import p035j$.util.stream.InterfaceC2821U;
import p035j$.util.stream.InterfaceC2878e1;
import p035j$.util.stream.InterfaceC2888g;
import p035j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3036K0 implements InterfaceC2821U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1152a;

    private /* synthetic */ C3036K0(DoubleStream doubleStream) {
        this.f1152a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2821U m203n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3038L0 ? ((C3038L0) doubleStream).f1154a : new C3036K0(doubleStream);
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: G */
    public /* synthetic */ C2690i mo214G(InterfaceC2666d interfaceC2666d) {
        return AbstractC2628a.m607n(this.f1152a.reduce(C3103y.m99a(interfaceC2666d)));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: H */
    public /* synthetic */ Object mo213H(InterfaceC2687y interfaceC2687y, InterfaceC2683u interfaceC2683u, BiConsumer biConsumer) {
        return this.f1152a.collect(C3106z0.m95a(interfaceC2687y), C3090r0.m112a(interfaceC2683u), C3089r.m113a(biConsumer));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: K */
    public /* synthetic */ double mo212K(double d, InterfaceC2666d interfaceC2666d) {
        return this.f1152a.reduce(d, C3103y.m99a(interfaceC2666d));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: M */
    public /* synthetic */ Stream mo211M(InterfaceC2669g interfaceC2669g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1152a.mapToObj(C3019C.m237a(interfaceC2669g)));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: R */
    public /* synthetic */ IntStream mo210R(C3025F c3025f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1152a.mapToInt(c3025f == null ? null : c3025f.f1141a));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: Y */
    public /* synthetic */ boolean mo209Y(C3021D c3021d) {
        return this.f1152a.allMatch(AbstractC3023E.m232a(c3021d));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ C2690i average() {
        return AbstractC2628a.m607n(this.f1152a.average());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2821U mo208b(InterfaceC2668f interfaceC2668f) {
        return m203n0(this.f1152a.peek(C3015A.m241a(interfaceC2668f)));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1152a.boxed());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1152a.close();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ long count() {
        return this.f1152a.count();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ InterfaceC2821U distinct() {
        return m203n0(this.f1152a.distinct());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ C2690i findAny() {
        return AbstractC2628a.m607n(this.f1152a.findAny());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ C2690i findFirst() {
        return AbstractC2628a.m607n(this.f1152a.findFirst());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo207h0(C3021D c3021d) {
        return this.f1152a.anyMatch(AbstractC3023E.m232a(c3021d));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo206i0(C3021D c3021d) {
        return this.f1152a.noneMatch(AbstractC3023E.m232a(c3021d));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ boolean isParallel() {
        return this.f1152a.isParallel();
    }

    @Override // p035j$.util.stream.InterfaceC2821U, p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2694m iterator() {
        return C3055a.m163a(this.f1152a.iterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ Iterator iterator() {
        return this.f1152a.iterator();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: j */
    public /* synthetic */ void mo205j(InterfaceC2668f interfaceC2668f) {
        this.f1152a.forEach(C3015A.m241a(interfaceC2668f));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: l0 */
    public /* synthetic */ void mo204l0(InterfaceC2668f interfaceC2668f) {
        this.f1152a.forEachOrdered(C3015A.m241a(interfaceC2668f));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ InterfaceC2821U limit(long j) {
        return m203n0(this.f1152a.limit(j));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ C2690i max() {
        return AbstractC2628a.m607n(this.f1152a.max());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ C2690i min() {
        return AbstractC2628a.m607n(this.f1152a.min());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g onClose(Runnable runnable) {
        return C3028G0.m227n0(this.f1152a.onClose(runnable));
    }

    @Override // p035j$.util.stream.InterfaceC2821U, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2821U parallel() {
        return m203n0(this.f1152a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g parallel() {
        return C3028G0.m227n0(this.f1152a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2821U mo202r(C3021D c3021d) {
        return m203n0(this.f1152a.filter(AbstractC3023E.m232a(c3021d)));
    }

    @Override // p035j$.util.stream.InterfaceC2821U, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2821U sequential() {
        return m203n0(this.f1152a.sequential());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g sequential() {
        return C3028G0.m227n0(this.f1152a.sequential());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ InterfaceC2821U skip(long j) {
        return m203n0(this.f1152a.skip(j));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ InterfaceC2821U sorted() {
        return m203n0(this.f1152a.sorted());
    }

    @Override // p035j$.util.stream.InterfaceC2821U, p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s.InterfaceC2702a spliterator() {
        return C3071i.m142a(this.f1152a.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s spliterator() {
        return C3067g.m146a(this.f1152a.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ double sum() {
        return this.f1152a.sum();
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public C2662f summaryStatistics() {
        this.f1152a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    public /* synthetic */ double[] toArray() {
        return this.f1152a.toArray();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g unordered() {
        return C3028G0.m227n0(this.f1152a.unordered());
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2821U mo201w(InterfaceC2669g interfaceC2669g) {
        return m203n0(this.f1152a.flatMap(C3019C.m237a(interfaceC2669g)));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2878e1 mo200x(InterfaceC2670h interfaceC2670h) {
        return C3040M0.m184n0(this.f1152a.mapToLong(C3031I.m224a(interfaceC2670h)));
    }

    @Override // p035j$.util.stream.InterfaceC2821U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2821U mo199y(C3033J c3033j) {
        return m203n0(this.f1152a.map(AbstractC3035K.m215a(c3033j)));
    }
}
