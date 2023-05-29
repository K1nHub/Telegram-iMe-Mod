package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p034j$.util.AbstractC2659a;
import p034j$.util.C2693f;
import p034j$.util.C2721i;
import p034j$.util.InterfaceC2725m;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2697d;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2700g;
import p034j$.util.function.InterfaceC2701h;
import p034j$.util.function.InterfaceC2714u;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2852U;
import p034j$.util.stream.InterfaceC2909e1;
import p034j$.util.stream.InterfaceC2919g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3067K0 implements InterfaceC2852U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1150a;

    private /* synthetic */ C3067K0(DoubleStream doubleStream) {
        this.f1150a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2852U m194n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3069L0 ? ((C3069L0) doubleStream).f1152a : new C3067K0(doubleStream);
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: G */
    public /* synthetic */ C2721i mo205G(InterfaceC2697d interfaceC2697d) {
        return AbstractC2659a.m597n(this.f1150a.reduce(C3134y.m90a(interfaceC2697d)));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: H */
    public /* synthetic */ Object mo204H(InterfaceC2718y interfaceC2718y, InterfaceC2714u interfaceC2714u, BiConsumer biConsumer) {
        return this.f1150a.collect(C3137z0.m86a(interfaceC2718y), C3121r0.m103a(interfaceC2714u), C3120r.m104a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: K */
    public /* synthetic */ double mo203K(double d, InterfaceC2697d interfaceC2697d) {
        return this.f1150a.reduce(d, C3134y.m90a(interfaceC2697d));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: M */
    public /* synthetic */ Stream mo202M(InterfaceC2700g interfaceC2700g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1150a.mapToObj(C3050C.m228a(interfaceC2700g)));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: R */
    public /* synthetic */ IntStream mo201R(C3056F c3056f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1150a.mapToInt(c3056f == null ? null : c3056f.f1139a));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: Y */
    public /* synthetic */ boolean mo200Y(C3052D c3052d) {
        return this.f1150a.allMatch(AbstractC3054E.m223a(c3052d));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ C2721i average() {
        return AbstractC2659a.m597n(this.f1150a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2852U mo199b(InterfaceC2699f interfaceC2699f) {
        return m194n0(this.f1150a.peek(C3046A.m232a(interfaceC2699f)));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1150a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1150a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ long count() {
        return this.f1150a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ InterfaceC2852U distinct() {
        return m194n0(this.f1150a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ C2721i findAny() {
        return AbstractC2659a.m597n(this.f1150a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ C2721i findFirst() {
        return AbstractC2659a.m597n(this.f1150a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo198h0(C3052D c3052d) {
        return this.f1150a.anyMatch(AbstractC3054E.m223a(c3052d));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo197i0(C3052D c3052d) {
        return this.f1150a.noneMatch(AbstractC3054E.m223a(c3052d));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ boolean isParallel() {
        return this.f1150a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2852U, p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2725m iterator() {
        return C3086a.m154a(this.f1150a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ Iterator iterator() {
        return this.f1150a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: j */
    public /* synthetic */ void mo196j(InterfaceC2699f interfaceC2699f) {
        this.f1150a.forEach(C3046A.m232a(interfaceC2699f));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: l0 */
    public /* synthetic */ void mo195l0(InterfaceC2699f interfaceC2699f) {
        this.f1150a.forEachOrdered(C3046A.m232a(interfaceC2699f));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ InterfaceC2852U limit(long j) {
        return m194n0(this.f1150a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ C2721i max() {
        return AbstractC2659a.m597n(this.f1150a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ C2721i min() {
        return AbstractC2659a.m597n(this.f1150a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g onClose(Runnable runnable) {
        return C3059G0.m218n0(this.f1150a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2852U, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2852U parallel() {
        return m194n0(this.f1150a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g parallel() {
        return C3059G0.m218n0(this.f1150a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2852U mo193r(C3052D c3052d) {
        return m194n0(this.f1150a.filter(AbstractC3054E.m223a(c3052d)));
    }

    @Override // p034j$.util.stream.InterfaceC2852U, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2852U sequential() {
        return m194n0(this.f1150a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g sequential() {
        return C3059G0.m218n0(this.f1150a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ InterfaceC2852U skip(long j) {
        return m194n0(this.f1150a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ InterfaceC2852U sorted() {
        return m194n0(this.f1150a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2852U, p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s.InterfaceC2733a spliterator() {
        return C3102i.m133a(this.f1150a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s spliterator() {
        return C3098g.m137a(this.f1150a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ double sum() {
        return this.f1150a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public C2693f summaryStatistics() {
        this.f1150a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    public /* synthetic */ double[] toArray() {
        return this.f1150a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g unordered() {
        return C3059G0.m218n0(this.f1150a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2852U mo192w(InterfaceC2700g interfaceC2700g) {
        return m194n0(this.f1150a.flatMap(C3050C.m228a(interfaceC2700g)));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2909e1 mo191x(InterfaceC2701h interfaceC2701h) {
        return C3071M0.m175n0(this.f1150a.mapToLong(C3062I.m215a(interfaceC2701h)));
    }

    @Override // p034j$.util.stream.InterfaceC2852U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2852U mo190y(C3064J c3064j) {
        return m194n0(this.f1150a.map(AbstractC3066K.m206a(c3064j)));
    }
}
