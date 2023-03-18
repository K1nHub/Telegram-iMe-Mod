package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p034j$.util.AbstractC2538a;
import p034j$.util.C2572f;
import p034j$.util.C2600i;
import p034j$.util.InterfaceC2604m;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2576d;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2579g;
import p034j$.util.function.InterfaceC2580h;
import p034j$.util.function.InterfaceC2593u;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2731U;
import p034j$.util.stream.InterfaceC2788e1;
import p034j$.util.stream.InterfaceC2798g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2946K0 implements InterfaceC2731U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1146a;

    private /* synthetic */ C2946K0(DoubleStream doubleStream) {
        this.f1146a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2731U m209n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C2948L0 ? ((C2948L0) doubleStream).f1148a : new C2946K0(doubleStream);
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: G */
    public /* synthetic */ C2600i mo220G(InterfaceC2576d interfaceC2576d) {
        return AbstractC2538a.m613n(this.f1146a.reduce(C3013y.m105a(interfaceC2576d)));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: H */
    public /* synthetic */ Object mo219H(InterfaceC2597y interfaceC2597y, InterfaceC2593u interfaceC2593u, BiConsumer biConsumer) {
        return this.f1146a.collect(C3016z0.m101a(interfaceC2597y), C3000r0.m118a(interfaceC2593u), C2999r.m119a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: K */
    public /* synthetic */ double mo218K(double d, InterfaceC2576d interfaceC2576d) {
        return this.f1146a.reduce(d, C3013y.m105a(interfaceC2576d));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: M */
    public /* synthetic */ Stream mo217M(InterfaceC2579g interfaceC2579g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1146a.mapToObj(C2929C.m243a(interfaceC2579g)));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: R */
    public /* synthetic */ IntStream mo216R(C2935F c2935f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1146a.mapToInt(c2935f == null ? null : c2935f.f1135a));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: Y */
    public /* synthetic */ boolean mo215Y(C2931D c2931d) {
        return this.f1146a.allMatch(AbstractC2933E.m238a(c2931d));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ C2600i average() {
        return AbstractC2538a.m613n(this.f1146a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2731U mo214b(InterfaceC2578f interfaceC2578f) {
        return m209n0(this.f1146a.peek(C2925A.m247a(interfaceC2578f)));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1146a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1146a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ long count() {
        return this.f1146a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ InterfaceC2731U distinct() {
        return m209n0(this.f1146a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ C2600i findAny() {
        return AbstractC2538a.m613n(this.f1146a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ C2600i findFirst() {
        return AbstractC2538a.m613n(this.f1146a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo213h0(C2931D c2931d) {
        return this.f1146a.anyMatch(AbstractC2933E.m238a(c2931d));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo212i0(C2931D c2931d) {
        return this.f1146a.noneMatch(AbstractC2933E.m238a(c2931d));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ boolean isParallel() {
        return this.f1146a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2731U, p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2604m iterator() {
        return C2965a.m169a(this.f1146a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ Iterator iterator() {
        return this.f1146a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: j */
    public /* synthetic */ void mo211j(InterfaceC2578f interfaceC2578f) {
        this.f1146a.forEach(C2925A.m247a(interfaceC2578f));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: l0 */
    public /* synthetic */ void mo210l0(InterfaceC2578f interfaceC2578f) {
        this.f1146a.forEachOrdered(C2925A.m247a(interfaceC2578f));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ InterfaceC2731U limit(long j) {
        return m209n0(this.f1146a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ C2600i max() {
        return AbstractC2538a.m613n(this.f1146a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ C2600i min() {
        return AbstractC2538a.m613n(this.f1146a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g onClose(Runnable runnable) {
        return C2938G0.m233n0(this.f1146a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2731U, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2731U parallel() {
        return m209n0(this.f1146a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g parallel() {
        return C2938G0.m233n0(this.f1146a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2731U mo208r(C2931D c2931d) {
        return m209n0(this.f1146a.filter(AbstractC2933E.m238a(c2931d)));
    }

    @Override // p034j$.util.stream.InterfaceC2731U, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2731U sequential() {
        return m209n0(this.f1146a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g sequential() {
        return C2938G0.m233n0(this.f1146a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ InterfaceC2731U skip(long j) {
        return m209n0(this.f1146a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ InterfaceC2731U sorted() {
        return m209n0(this.f1146a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2731U, p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s.InterfaceC2612a spliterator() {
        return C2981i.m148a(this.f1146a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s spliterator() {
        return C2977g.m152a(this.f1146a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ double sum() {
        return this.f1146a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public C2572f summaryStatistics() {
        this.f1146a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    public /* synthetic */ double[] toArray() {
        return this.f1146a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g unordered() {
        return C2938G0.m233n0(this.f1146a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2731U mo207w(InterfaceC2579g interfaceC2579g) {
        return m209n0(this.f1146a.flatMap(C2929C.m243a(interfaceC2579g)));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2788e1 mo206x(InterfaceC2580h interfaceC2580h) {
        return C2950M0.m190n0(this.f1146a.mapToLong(C2941I.m230a(interfaceC2580h)));
    }

    @Override // p034j$.util.stream.InterfaceC2731U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2731U mo205y(C2943J c2943j) {
        return m209n0(this.f1146a.map(AbstractC2945K.m221a(c2943j)));
    }
}
