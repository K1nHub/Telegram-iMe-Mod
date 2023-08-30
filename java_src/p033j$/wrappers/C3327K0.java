package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2919a;
import p033j$.util.C2953f;
import p033j$.util.C2981i;
import p033j$.util.InterfaceC2985m;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2957d;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2960g;
import p033j$.util.function.InterfaceC2961h;
import p033j$.util.function.InterfaceC2974u;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3112U;
import p033j$.util.stream.InterfaceC3169e1;
import p033j$.util.stream.InterfaceC3179g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3327K0 implements InterfaceC3112U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1245a;

    private /* synthetic */ C3327K0(DoubleStream doubleStream) {
        this.f1245a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3112U m212n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3329L0 ? ((C3329L0) doubleStream).f1247a : new C3327K0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: G */
    public /* synthetic */ C2981i mo223G(InterfaceC2957d interfaceC2957d) {
        return AbstractC2919a.m615n(this.f1245a.reduce(C3394y.m108a(interfaceC2957d)));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: H */
    public /* synthetic */ Object mo222H(InterfaceC2978y interfaceC2978y, InterfaceC2974u interfaceC2974u, BiConsumer biConsumer) {
        return this.f1245a.collect(C3397z0.m104a(interfaceC2978y), C3381r0.m121a(interfaceC2974u), C3380r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: K */
    public /* synthetic */ double mo221K(double d, InterfaceC2957d interfaceC2957d) {
        return this.f1245a.reduce(d, C3394y.m108a(interfaceC2957d));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: M */
    public /* synthetic */ Stream mo220M(InterfaceC2960g interfaceC2960g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1245a.mapToObj(C3310C.m246a(interfaceC2960g)));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: R */
    public /* synthetic */ IntStream mo219R(C3316F c3316f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1245a.mapToInt(c3316f == null ? null : c3316f.f1234a));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: Y */
    public /* synthetic */ boolean mo218Y(C3312D c3312d) {
        return this.f1245a.allMatch(AbstractC3314E.m241a(c3312d));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ C2981i average() {
        return AbstractC2919a.m615n(this.f1245a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: b */
    public /* synthetic */ InterfaceC3112U mo217b(InterfaceC2959f interfaceC2959f) {
        return m212n0(this.f1245a.peek(C3306A.m250a(interfaceC2959f)));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1245a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1245a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ long count() {
        return this.f1245a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ InterfaceC3112U distinct() {
        return m212n0(this.f1245a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ C2981i findAny() {
        return AbstractC2919a.m615n(this.f1245a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ C2981i findFirst() {
        return AbstractC2919a.m615n(this.f1245a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo216h0(C3312D c3312d) {
        return this.f1245a.anyMatch(AbstractC3314E.m241a(c3312d));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo215i0(C3312D c3312d) {
        return this.f1245a.noneMatch(AbstractC3314E.m241a(c3312d));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ boolean isParallel() {
        return this.f1245a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3112U, p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2985m iterator() {
        return C3346a.m172a(this.f1245a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ Iterator iterator() {
        return this.f1245a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: j */
    public /* synthetic */ void mo214j(InterfaceC2959f interfaceC2959f) {
        this.f1245a.forEach(C3306A.m250a(interfaceC2959f));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: l0 */
    public /* synthetic */ void mo213l0(InterfaceC2959f interfaceC2959f) {
        this.f1245a.forEachOrdered(C3306A.m250a(interfaceC2959f));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ InterfaceC3112U limit(long j) {
        return m212n0(this.f1245a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ C2981i max() {
        return AbstractC2919a.m615n(this.f1245a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ C2981i min() {
        return AbstractC2919a.m615n(this.f1245a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g onClose(Runnable runnable) {
        return C3319G0.m236n0(this.f1245a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3112U, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3112U parallel() {
        return m212n0(this.f1245a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g parallel() {
        return C3319G0.m236n0(this.f1245a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: r */
    public /* synthetic */ InterfaceC3112U mo211r(C3312D c3312d) {
        return m212n0(this.f1245a.filter(AbstractC3314E.m241a(c3312d)));
    }

    @Override // p033j$.util.stream.InterfaceC3112U, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3112U sequential() {
        return m212n0(this.f1245a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g sequential() {
        return C3319G0.m236n0(this.f1245a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ InterfaceC3112U skip(long j) {
        return m212n0(this.f1245a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ InterfaceC3112U sorted() {
        return m212n0(this.f1245a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3112U, p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s.InterfaceC2993a spliterator() {
        return C3362i.m151a(this.f1245a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s spliterator() {
        return C3358g.m155a(this.f1245a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ double sum() {
        return this.f1245a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public C2953f summaryStatistics() {
        this.f1245a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    public /* synthetic */ double[] toArray() {
        return this.f1245a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g unordered() {
        return C3319G0.m236n0(this.f1245a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: w */
    public /* synthetic */ InterfaceC3112U mo210w(InterfaceC2960g interfaceC2960g) {
        return m212n0(this.f1245a.flatMap(C3310C.m246a(interfaceC2960g)));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: x */
    public /* synthetic */ InterfaceC3169e1 mo209x(InterfaceC2961h interfaceC2961h) {
        return C3331M0.m193n0(this.f1245a.mapToLong(C3322I.m233a(interfaceC2961h)));
    }

    @Override // p033j$.util.stream.InterfaceC3112U
    /* renamed from: y */
    public /* synthetic */ InterfaceC3112U mo208y(C3324J c3324j) {
        return m212n0(this.f1245a.map(AbstractC3326K.m224a(c3324j)));
    }
}
