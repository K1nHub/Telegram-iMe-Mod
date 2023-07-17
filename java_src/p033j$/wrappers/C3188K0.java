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
    final /* synthetic */ DoubleStream f1232a;

    private /* synthetic */ C3188K0(DoubleStream doubleStream) {
        this.f1232a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2973U m194n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3190L0 ? ((C3190L0) doubleStream).f1234a : new C3188K0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: G */
    public /* synthetic */ C2842i mo205G(InterfaceC2818d interfaceC2818d) {
        return AbstractC2780a.m597n(this.f1232a.reduce(C3255y.m90a(interfaceC2818d)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: H */
    public /* synthetic */ Object mo204H(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer) {
        return this.f1232a.collect(C3258z0.m86a(interfaceC2839y), C3242r0.m103a(interfaceC2835u), C3241r.m104a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: K */
    public /* synthetic */ double mo203K(double d, InterfaceC2818d interfaceC2818d) {
        return this.f1232a.reduce(d, C3255y.m90a(interfaceC2818d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: M */
    public /* synthetic */ Stream mo202M(InterfaceC2821g interfaceC2821g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1232a.mapToObj(C3171C.m228a(interfaceC2821g)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: R */
    public /* synthetic */ IntStream mo201R(C3177F c3177f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1232a.mapToInt(c3177f == null ? null : c3177f.f1221a));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: Y */
    public /* synthetic */ boolean mo200Y(C3173D c3173d) {
        return this.f1232a.allMatch(AbstractC3175E.m223a(c3173d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i average() {
        return AbstractC2780a.m597n(this.f1232a.average());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2973U mo199b(InterfaceC2820f interfaceC2820f) {
        return m194n0(this.f1232a.peek(C3167A.m232a(interfaceC2820f)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1232a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1232a.close();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ long count() {
        return this.f1232a.count();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U distinct() {
        return m194n0(this.f1232a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i findAny() {
        return AbstractC2780a.m597n(this.f1232a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i findFirst() {
        return AbstractC2780a.m597n(this.f1232a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo198h0(C3173D c3173d) {
        return this.f1232a.anyMatch(AbstractC3175E.m223a(c3173d));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo197i0(C3173D c3173d) {
        return this.f1232a.noneMatch(AbstractC3175E.m223a(c3173d));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1232a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2846m iterator() {
        return C3207a.m154a(this.f1232a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1232a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: j */
    public /* synthetic */ void mo196j(InterfaceC2820f interfaceC2820f) {
        this.f1232a.forEach(C3167A.m232a(interfaceC2820f));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: l0 */
    public /* synthetic */ void mo195l0(InterfaceC2820f interfaceC2820f) {
        this.f1232a.forEachOrdered(C3167A.m232a(interfaceC2820f));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U limit(long j) {
        return m194n0(this.f1232a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i max() {
        return AbstractC2780a.m597n(this.f1232a.max());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ C2842i min() {
        return AbstractC2780a.m597n(this.f1232a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m218n0(this.f1232a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2973U parallel() {
        return m194n0(this.f1232a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m218n0(this.f1232a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2973U mo193r(C3173D c3173d) {
        return m194n0(this.f1232a.filter(AbstractC3175E.m223a(c3173d)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2973U sequential() {
        return m194n0(this.f1232a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m218n0(this.f1232a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U skip(long j) {
        return m194n0(this.f1232a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ InterfaceC2973U sorted() {
        return m194n0(this.f1232a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC2973U, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s.InterfaceC2854a spliterator() {
        return C3223i.m133a(this.f1232a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m137a(this.f1232a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ double sum() {
        return this.f1232a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public C2814f summaryStatistics() {
        this.f1232a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    public /* synthetic */ double[] toArray() {
        return this.f1232a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m218n0(this.f1232a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2973U mo192w(InterfaceC2821g interfaceC2821g) {
        return m194n0(this.f1232a.flatMap(C3171C.m228a(interfaceC2821g)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: x */
    public /* synthetic */ InterfaceC3030e1 mo191x(InterfaceC2822h interfaceC2822h) {
        return C3192M0.m175n0(this.f1232a.mapToLong(C3183I.m215a(interfaceC2822h)));
    }

    @Override // p033j$.util.stream.InterfaceC2973U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2973U mo190y(C3185J c3185j) {
        return m194n0(this.f1232a.map(AbstractC3187K.m206a(c3185j)));
    }
}
