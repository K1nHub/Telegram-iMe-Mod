package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p034j$.util.AbstractC2414a;
import p034j$.util.C2448f;
import p034j$.util.C2476i;
import p034j$.util.InterfaceC2480m;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2452d;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2455g;
import p034j$.util.function.InterfaceC2456h;
import p034j$.util.function.InterfaceC2469u;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2607U;
import p034j$.util.stream.InterfaceC2664e1;
import p034j$.util.stream.InterfaceC2674g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2822K0 implements InterfaceC2607U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1141a;

    private /* synthetic */ C2822K0(DoubleStream doubleStream) {
        this.f1141a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2607U m209n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C2824L0 ? ((C2824L0) doubleStream).f1143a : new C2822K0(doubleStream);
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: G */
    public /* synthetic */ C2476i mo220G(InterfaceC2452d interfaceC2452d) {
        return AbstractC2414a.m613n(this.f1141a.reduce(C2889y.m105a(interfaceC2452d)));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: H */
    public /* synthetic */ Object mo219H(InterfaceC2473y interfaceC2473y, InterfaceC2469u interfaceC2469u, BiConsumer biConsumer) {
        return this.f1141a.collect(C2892z0.m101a(interfaceC2473y), C2876r0.m118a(interfaceC2469u), C2875r.m119a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: K */
    public /* synthetic */ double mo218K(double d, InterfaceC2452d interfaceC2452d) {
        return this.f1141a.reduce(d, C2889y.m105a(interfaceC2452d));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: M */
    public /* synthetic */ Stream mo217M(InterfaceC2455g interfaceC2455g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1141a.mapToObj(C2805C.m243a(interfaceC2455g)));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: R */
    public /* synthetic */ IntStream mo216R(C2811F c2811f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1141a.mapToInt(c2811f == null ? null : c2811f.f1130a));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: Y */
    public /* synthetic */ boolean mo215Y(C2807D c2807d) {
        return this.f1141a.allMatch(AbstractC2809E.m238a(c2807d));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ C2476i average() {
        return AbstractC2414a.m613n(this.f1141a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2607U mo214b(InterfaceC2454f interfaceC2454f) {
        return m209n0(this.f1141a.peek(C2801A.m247a(interfaceC2454f)));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1141a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2674g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1141a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ long count() {
        return this.f1141a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ InterfaceC2607U distinct() {
        return m209n0(this.f1141a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ C2476i findAny() {
        return AbstractC2414a.m613n(this.f1141a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ C2476i findFirst() {
        return AbstractC2414a.m613n(this.f1141a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo213h0(C2807D c2807d) {
        return this.f1141a.anyMatch(AbstractC2809E.m238a(c2807d));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo212i0(C2807D c2807d) {
        return this.f1141a.noneMatch(AbstractC2809E.m238a(c2807d));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ boolean isParallel() {
        return this.f1141a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2480m iterator() {
        return C2841a.m169a(this.f1141a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ Iterator iterator() {
        return this.f1141a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: j */
    public /* synthetic */ void mo211j(InterfaceC2454f interfaceC2454f) {
        this.f1141a.forEach(C2801A.m247a(interfaceC2454f));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: l0 */
    public /* synthetic */ void mo210l0(InterfaceC2454f interfaceC2454f) {
        this.f1141a.forEachOrdered(C2801A.m247a(interfaceC2454f));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ InterfaceC2607U limit(long j) {
        return m209n0(this.f1141a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ C2476i max() {
        return AbstractC2414a.m613n(this.f1141a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ C2476i min() {
        return AbstractC2414a.m613n(this.f1141a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g onClose(Runnable runnable) {
        return C2814G0.m233n0(this.f1141a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2607U parallel() {
        return m209n0(this.f1141a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g parallel() {
        return C2814G0.m233n0(this.f1141a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2607U mo208r(C2807D c2807d) {
        return m209n0(this.f1141a.filter(AbstractC2809E.m238a(c2807d)));
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2607U sequential() {
        return m209n0(this.f1141a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g sequential() {
        return C2814G0.m233n0(this.f1141a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ InterfaceC2607U skip(long j) {
        return m209n0(this.f1141a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ InterfaceC2607U sorted() {
        return m209n0(this.f1141a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s.InterfaceC2488a spliterator() {
        return C2857i.m148a(this.f1141a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2607U, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s spliterator() {
        return C2853g.m152a(this.f1141a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ double sum() {
        return this.f1141a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public C2448f summaryStatistics() {
        this.f1141a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    public /* synthetic */ double[] toArray() {
        return this.f1141a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g unordered() {
        return C2814G0.m233n0(this.f1141a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2607U mo207w(InterfaceC2455g interfaceC2455g) {
        return m209n0(this.f1141a.flatMap(C2805C.m243a(interfaceC2455g)));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2664e1 mo206x(InterfaceC2456h interfaceC2456h) {
        return C2826M0.m190n0(this.f1141a.mapToLong(C2817I.m230a(interfaceC2456h)));
    }

    @Override // p034j$.util.stream.InterfaceC2607U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2607U mo205y(C2819J c2819j) {
        return m209n0(this.f1141a.map(AbstractC2821K.m221a(c2819j)));
    }
}
