package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2835a;
import p033j$.util.C2869f;
import p033j$.util.C2897i;
import p033j$.util.InterfaceC2901m;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2873d;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2876g;
import p033j$.util.function.InterfaceC2877h;
import p033j$.util.function.InterfaceC2890u;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3028U;
import p033j$.util.stream.InterfaceC3085e1;
import p033j$.util.stream.InterfaceC3095g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3243K0 implements InterfaceC3028U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1236a;

    private /* synthetic */ C3243K0(DoubleStream doubleStream) {
        this.f1236a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3028U m212n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3245L0 ? ((C3245L0) doubleStream).f1238a : new C3243K0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: G */
    public /* synthetic */ C2897i mo223G(InterfaceC2873d interfaceC2873d) {
        return AbstractC2835a.m615n(this.f1236a.reduce(C3310y.m108a(interfaceC2873d)));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: H */
    public /* synthetic */ Object mo222H(InterfaceC2894y interfaceC2894y, InterfaceC2890u interfaceC2890u, BiConsumer biConsumer) {
        return this.f1236a.collect(C3313z0.m104a(interfaceC2894y), C3297r0.m121a(interfaceC2890u), C3296r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: K */
    public /* synthetic */ double mo221K(double d, InterfaceC2873d interfaceC2873d) {
        return this.f1236a.reduce(d, C3310y.m108a(interfaceC2873d));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: M */
    public /* synthetic */ Stream mo220M(InterfaceC2876g interfaceC2876g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1236a.mapToObj(C3226C.m246a(interfaceC2876g)));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: R */
    public /* synthetic */ IntStream mo219R(C3232F c3232f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1236a.mapToInt(c3232f == null ? null : c3232f.f1225a));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: Y */
    public /* synthetic */ boolean mo218Y(C3228D c3228d) {
        return this.f1236a.allMatch(AbstractC3230E.m241a(c3228d));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ C2897i average() {
        return AbstractC2835a.m615n(this.f1236a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: b */
    public /* synthetic */ InterfaceC3028U mo217b(InterfaceC2875f interfaceC2875f) {
        return m212n0(this.f1236a.peek(C3222A.m250a(interfaceC2875f)));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1236a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1236a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ long count() {
        return this.f1236a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ InterfaceC3028U distinct() {
        return m212n0(this.f1236a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ C2897i findAny() {
        return AbstractC2835a.m615n(this.f1236a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ C2897i findFirst() {
        return AbstractC2835a.m615n(this.f1236a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo216h0(C3228D c3228d) {
        return this.f1236a.anyMatch(AbstractC3230E.m241a(c3228d));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo215i0(C3228D c3228d) {
        return this.f1236a.noneMatch(AbstractC3230E.m241a(c3228d));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ boolean isParallel() {
        return this.f1236a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3028U, p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2901m iterator() {
        return C3262a.m172a(this.f1236a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ Iterator iterator() {
        return this.f1236a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: j */
    public /* synthetic */ void mo214j(InterfaceC2875f interfaceC2875f) {
        this.f1236a.forEach(C3222A.m250a(interfaceC2875f));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: l0 */
    public /* synthetic */ void mo213l0(InterfaceC2875f interfaceC2875f) {
        this.f1236a.forEachOrdered(C3222A.m250a(interfaceC2875f));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ InterfaceC3028U limit(long j) {
        return m212n0(this.f1236a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ C2897i max() {
        return AbstractC2835a.m615n(this.f1236a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ C2897i min() {
        return AbstractC2835a.m615n(this.f1236a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g onClose(Runnable runnable) {
        return C3235G0.m236n0(this.f1236a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3028U, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3028U parallel() {
        return m212n0(this.f1236a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g parallel() {
        return C3235G0.m236n0(this.f1236a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: r */
    public /* synthetic */ InterfaceC3028U mo211r(C3228D c3228d) {
        return m212n0(this.f1236a.filter(AbstractC3230E.m241a(c3228d)));
    }

    @Override // p033j$.util.stream.InterfaceC3028U, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3028U sequential() {
        return m212n0(this.f1236a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g sequential() {
        return C3235G0.m236n0(this.f1236a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ InterfaceC3028U skip(long j) {
        return m212n0(this.f1236a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ InterfaceC3028U sorted() {
        return m212n0(this.f1236a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3028U, p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s.InterfaceC2909a spliterator() {
        return C3278i.m151a(this.f1236a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s spliterator() {
        return C3274g.m155a(this.f1236a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ double sum() {
        return this.f1236a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public C2869f summaryStatistics() {
        this.f1236a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    public /* synthetic */ double[] toArray() {
        return this.f1236a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g unordered() {
        return C3235G0.m236n0(this.f1236a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: w */
    public /* synthetic */ InterfaceC3028U mo210w(InterfaceC2876g interfaceC2876g) {
        return m212n0(this.f1236a.flatMap(C3226C.m246a(interfaceC2876g)));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: x */
    public /* synthetic */ InterfaceC3085e1 mo209x(InterfaceC2877h interfaceC2877h) {
        return C3247M0.m193n0(this.f1236a.mapToLong(C3238I.m233a(interfaceC2877h)));
    }

    @Override // p033j$.util.stream.InterfaceC3028U
    /* renamed from: y */
    public /* synthetic */ InterfaceC3028U mo208y(C3240J c3240j) {
        return m212n0(this.f1236a.map(AbstractC3242K.m224a(c3240j)));
    }
}
