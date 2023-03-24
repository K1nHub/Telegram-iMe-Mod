package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p034j$.util.AbstractC2552a;
import p034j$.util.C2586f;
import p034j$.util.C2614i;
import p034j$.util.InterfaceC2618m;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2590d;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2593g;
import p034j$.util.function.InterfaceC2594h;
import p034j$.util.function.InterfaceC2607u;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2745U;
import p034j$.util.stream.InterfaceC2802e1;
import p034j$.util.stream.InterfaceC2812g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2960K0 implements InterfaceC2745U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1147a;

    private /* synthetic */ C2960K0(DoubleStream doubleStream) {
        this.f1147a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2745U m208n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C2962L0 ? ((C2962L0) doubleStream).f1149a : new C2960K0(doubleStream);
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: G */
    public /* synthetic */ C2614i mo219G(InterfaceC2590d interfaceC2590d) {
        return AbstractC2552a.m612n(this.f1147a.reduce(C3027y.m104a(interfaceC2590d)));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: H */
    public /* synthetic */ Object mo218H(InterfaceC2611y interfaceC2611y, InterfaceC2607u interfaceC2607u, BiConsumer biConsumer) {
        return this.f1147a.collect(C3030z0.m100a(interfaceC2611y), C3014r0.m117a(interfaceC2607u), C3013r.m118a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: K */
    public /* synthetic */ double mo217K(double d, InterfaceC2590d interfaceC2590d) {
        return this.f1147a.reduce(d, C3027y.m104a(interfaceC2590d));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: M */
    public /* synthetic */ Stream mo216M(InterfaceC2593g interfaceC2593g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1147a.mapToObj(C2943C.m242a(interfaceC2593g)));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: R */
    public /* synthetic */ IntStream mo215R(C2949F c2949f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1147a.mapToInt(c2949f == null ? null : c2949f.f1136a));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: Y */
    public /* synthetic */ boolean mo214Y(C2945D c2945d) {
        return this.f1147a.allMatch(AbstractC2947E.m237a(c2945d));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ C2614i average() {
        return AbstractC2552a.m612n(this.f1147a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2745U mo213b(InterfaceC2592f interfaceC2592f) {
        return m208n0(this.f1147a.peek(C2939A.m246a(interfaceC2592f)));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1147a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1147a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ long count() {
        return this.f1147a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ InterfaceC2745U distinct() {
        return m208n0(this.f1147a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ C2614i findAny() {
        return AbstractC2552a.m612n(this.f1147a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ C2614i findFirst() {
        return AbstractC2552a.m612n(this.f1147a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo212h0(C2945D c2945d) {
        return this.f1147a.anyMatch(AbstractC2947E.m237a(c2945d));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo211i0(C2945D c2945d) {
        return this.f1147a.noneMatch(AbstractC2947E.m237a(c2945d));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ boolean isParallel() {
        return this.f1147a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2745U, p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2618m iterator() {
        return C2979a.m168a(this.f1147a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ Iterator iterator() {
        return this.f1147a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: j */
    public /* synthetic */ void mo210j(InterfaceC2592f interfaceC2592f) {
        this.f1147a.forEach(C2939A.m246a(interfaceC2592f));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: l0 */
    public /* synthetic */ void mo209l0(InterfaceC2592f interfaceC2592f) {
        this.f1147a.forEachOrdered(C2939A.m246a(interfaceC2592f));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ InterfaceC2745U limit(long j) {
        return m208n0(this.f1147a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ C2614i max() {
        return AbstractC2552a.m612n(this.f1147a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ C2614i min() {
        return AbstractC2552a.m612n(this.f1147a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g onClose(Runnable runnable) {
        return C2952G0.m232n0(this.f1147a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2745U, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2745U parallel() {
        return m208n0(this.f1147a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g parallel() {
        return C2952G0.m232n0(this.f1147a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2745U mo207r(C2945D c2945d) {
        return m208n0(this.f1147a.filter(AbstractC2947E.m237a(c2945d)));
    }

    @Override // p034j$.util.stream.InterfaceC2745U, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2745U sequential() {
        return m208n0(this.f1147a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g sequential() {
        return C2952G0.m232n0(this.f1147a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ InterfaceC2745U skip(long j) {
        return m208n0(this.f1147a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ InterfaceC2745U sorted() {
        return m208n0(this.f1147a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2745U, p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s.InterfaceC2626a spliterator() {
        return C2995i.m147a(this.f1147a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s spliterator() {
        return C2991g.m151a(this.f1147a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ double sum() {
        return this.f1147a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public C2586f summaryStatistics() {
        this.f1147a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    public /* synthetic */ double[] toArray() {
        return this.f1147a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g unordered() {
        return C2952G0.m232n0(this.f1147a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2745U mo206w(InterfaceC2593g interfaceC2593g) {
        return m208n0(this.f1147a.flatMap(C2943C.m242a(interfaceC2593g)));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2802e1 mo205x(InterfaceC2594h interfaceC2594h) {
        return C2964M0.m189n0(this.f1147a.mapToLong(C2955I.m229a(interfaceC2594h)));
    }

    @Override // p034j$.util.stream.InterfaceC2745U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2745U mo204y(C2957J c2957j) {
        return m208n0(this.f1147a.map(AbstractC2959K.m220a(c2957j)));
    }
}
