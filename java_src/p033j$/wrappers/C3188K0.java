package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2780a;
import p033j$.util.C2814f;
import p033j$.util.C2842i;
import p033j$.util.InterfaceC2846m;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2973U;
import p033j$.util.stream.InterfaceC3030e1;
import p033j$.util.stream.InterfaceC3040g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3188K0 implements InterfaceC2973U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1235a;

    private /* synthetic */ C3188K0(DoubleStream doubleStream) {
        this.f1235a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2973U m212n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3190L0 ? ((C3190L0) doubleStream).f1237a : new C3188K0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: G */
    public /* synthetic */ C2842i mo223G(InterfaceC2818d interfaceC2818d) {
        return AbstractC2780a.m615n(this.f1235a.reduce(C3255y.m108a(interfaceC2818d)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: H */
    public /* synthetic */ Object mo222H(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer) {
        return this.f1235a.collect(C3258z0.m104a(interfaceC2839y), C3242r0.m121a(interfaceC2835u), C3241r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: K */
    public /* synthetic */ double mo221K(double d, InterfaceC2818d interfaceC2818d) {
        return this.f1235a.reduce(d, C3255y.m108a(interfaceC2818d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: M */
    public /* synthetic */ Stream mo220M(InterfaceC2821g interfaceC2821g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1235a.mapToObj(C3171C.m246a(interfaceC2821g)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: R */
    public /* synthetic */ IntStream mo219R(C3177F c3177f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1235a.mapToInt(c3177f == null ? null : c3177f.f1224a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: Y */
    public /* synthetic */ boolean mo218Y(C3173D c3173d) {
        return this.f1235a.allMatch(AbstractC3175E.m241a(c3173d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i average() {
        return AbstractC2780a.m615n(this.f1235a.average());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2973U mo217b(InterfaceC2820f interfaceC2820f) {
        return m212n0(this.f1235a.peek(C3167A.m250a(interfaceC2820f)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1235a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1235a.close();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ long count() {
        return this.f1235a.count();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U distinct() {
        return m212n0(this.f1235a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i findAny() {
        return AbstractC2780a.m615n(this.f1235a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i findFirst() {
        return AbstractC2780a.m615n(this.f1235a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo216h0(C3173D c3173d) {
        return this.f1235a.anyMatch(AbstractC3175E.m241a(c3173d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo215i0(C3173D c3173d) {
        return this.f1235a.noneMatch(AbstractC3175E.m241a(c3173d));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1235a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2846m iterator() {
        return C3207a.m172a(this.f1235a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1235a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: j */
    public /* synthetic */ void mo214j(InterfaceC2820f interfaceC2820f) {
        this.f1235a.forEach(C3167A.m250a(interfaceC2820f));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: l0 */
    public /* synthetic */ void mo213l0(InterfaceC2820f interfaceC2820f) {
        this.f1235a.forEachOrdered(C3167A.m250a(interfaceC2820f));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U limit(long j) {
        return m212n0(this.f1235a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i max() {
        return AbstractC2780a.m615n(this.f1235a.max());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i min() {
        return AbstractC2780a.m615n(this.f1235a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m236n0(this.f1235a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2973U parallel() {
        return m212n0(this.f1235a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m236n0(this.f1235a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2973U mo211r(C3173D c3173d) {
        return m212n0(this.f1235a.filter(AbstractC3175E.m241a(c3173d)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2973U sequential() {
        return m212n0(this.f1235a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m236n0(this.f1235a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U skip(long j) {
        return m212n0(this.f1235a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U sorted() {
        return m212n0(this.f1235a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s.InterfaceC2854a spliterator() {
        return C3223i.m151a(this.f1235a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m155a(this.f1235a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ double sum() {
        return this.f1235a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public C2814f summaryStatistics() {
        this.f1235a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ double[] toArray() {
        return this.f1235a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m236n0(this.f1235a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2973U mo210w(InterfaceC2821g interfaceC2821g) {
        return m212n0(this.f1235a.flatMap(C3171C.m246a(interfaceC2821g)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: x */
    public /* synthetic */ InterfaceC3030e1 mo209x(InterfaceC2822h interfaceC2822h) {
        return C3192M0.m193n0(this.f1235a.mapToLong(C3183I.m233a(interfaceC2822h)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2973U mo208y(C3185J c3185j) {
        return m212n0(this.f1235a.map(AbstractC3187K.m224a(c3185j)));
    }
}
