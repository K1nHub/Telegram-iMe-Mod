package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p034j$.util.AbstractC2615a;
import p034j$.util.C2649f;
import p034j$.util.C2677i;
import p034j$.util.InterfaceC2681m;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2653d;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2656g;
import p034j$.util.function.InterfaceC2657h;
import p034j$.util.function.InterfaceC2670u;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2808U;
import p034j$.util.stream.InterfaceC2865e1;
import p034j$.util.stream.InterfaceC2875g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3023K0 implements InterfaceC2808U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1147a;

    private /* synthetic */ C3023K0(DoubleStream doubleStream) {
        this.f1147a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2808U m189n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3025L0 ? ((C3025L0) doubleStream).f1149a : new C3023K0(doubleStream);
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: G */
    public /* synthetic */ C2677i mo200G(InterfaceC2653d interfaceC2653d) {
        return AbstractC2615a.m593n(this.f1147a.reduce(C3090y.m85a(interfaceC2653d)));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: H */
    public /* synthetic */ Object mo199H(InterfaceC2674y interfaceC2674y, InterfaceC2670u interfaceC2670u, BiConsumer biConsumer) {
        return this.f1147a.collect(C3093z0.m81a(interfaceC2674y), C3077r0.m98a(interfaceC2670u), C3076r.m99a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: K */
    public /* synthetic */ double mo198K(double d, InterfaceC2653d interfaceC2653d) {
        return this.f1147a.reduce(d, C3090y.m85a(interfaceC2653d));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: M */
    public /* synthetic */ Stream mo197M(InterfaceC2656g interfaceC2656g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1147a.mapToObj(C3006C.m223a(interfaceC2656g)));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: R */
    public /* synthetic */ IntStream mo196R(C3012F c3012f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1147a.mapToInt(c3012f == null ? null : c3012f.f1136a));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: Y */
    public /* synthetic */ boolean mo195Y(C3008D c3008d) {
        return this.f1147a.allMatch(AbstractC3010E.m218a(c3008d));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ C2677i average() {
        return AbstractC2615a.m593n(this.f1147a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2808U mo194b(InterfaceC2655f interfaceC2655f) {
        return m189n0(this.f1147a.peek(C3002A.m227a(interfaceC2655f)));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1147a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1147a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ long count() {
        return this.f1147a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ InterfaceC2808U distinct() {
        return m189n0(this.f1147a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ C2677i findAny() {
        return AbstractC2615a.m593n(this.f1147a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ C2677i findFirst() {
        return AbstractC2615a.m593n(this.f1147a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo193h0(C3008D c3008d) {
        return this.f1147a.anyMatch(AbstractC3010E.m218a(c3008d));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo192i0(C3008D c3008d) {
        return this.f1147a.noneMatch(AbstractC3010E.m218a(c3008d));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ boolean isParallel() {
        return this.f1147a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2808U, p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2681m iterator() {
        return C3042a.m149a(this.f1147a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ Iterator iterator() {
        return this.f1147a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: j */
    public /* synthetic */ void mo191j(InterfaceC2655f interfaceC2655f) {
        this.f1147a.forEach(C3002A.m227a(interfaceC2655f));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: l0 */
    public /* synthetic */ void mo190l0(InterfaceC2655f interfaceC2655f) {
        this.f1147a.forEachOrdered(C3002A.m227a(interfaceC2655f));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ InterfaceC2808U limit(long j) {
        return m189n0(this.f1147a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ C2677i max() {
        return AbstractC2615a.m593n(this.f1147a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ C2677i min() {
        return AbstractC2615a.m593n(this.f1147a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g onClose(Runnable runnable) {
        return C3015G0.m213n0(this.f1147a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2808U, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2808U parallel() {
        return m189n0(this.f1147a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g parallel() {
        return C3015G0.m213n0(this.f1147a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2808U mo188r(C3008D c3008d) {
        return m189n0(this.f1147a.filter(AbstractC3010E.m218a(c3008d)));
    }

    @Override // p034j$.util.stream.InterfaceC2808U, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2808U sequential() {
        return m189n0(this.f1147a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g sequential() {
        return C3015G0.m213n0(this.f1147a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ InterfaceC2808U skip(long j) {
        return m189n0(this.f1147a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ InterfaceC2808U sorted() {
        return m189n0(this.f1147a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2808U, p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s.InterfaceC2689a spliterator() {
        return C3058i.m128a(this.f1147a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s spliterator() {
        return C3054g.m132a(this.f1147a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ double sum() {
        return this.f1147a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public C2649f summaryStatistics() {
        this.f1147a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    public /* synthetic */ double[] toArray() {
        return this.f1147a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g unordered() {
        return C3015G0.m213n0(this.f1147a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2808U mo187w(InterfaceC2656g interfaceC2656g) {
        return m189n0(this.f1147a.flatMap(C3006C.m223a(interfaceC2656g)));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2865e1 mo186x(InterfaceC2657h interfaceC2657h) {
        return C3027M0.m170n0(this.f1147a.mapToLong(C3018I.m210a(interfaceC2657h)));
    }

    @Override // p034j$.util.stream.InterfaceC2808U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2808U mo185y(C3020J c3020j) {
        return m189n0(this.f1147a.map(AbstractC3022K.m201a(c3020j)));
    }
}
