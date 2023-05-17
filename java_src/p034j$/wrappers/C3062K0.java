package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p034j$.util.AbstractC2654a;
import p034j$.util.C2688f;
import p034j$.util.C2716i;
import p034j$.util.InterfaceC2720m;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2692d;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2695g;
import p034j$.util.function.InterfaceC2696h;
import p034j$.util.function.InterfaceC2709u;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2847U;
import p034j$.util.stream.InterfaceC2904e1;
import p034j$.util.stream.InterfaceC2914g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3062K0 implements InterfaceC2847U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1150a;

    private /* synthetic */ C3062K0(DoubleStream doubleStream) {
        this.f1150a = doubleStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2847U m194n0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3064L0 ? ((C3064L0) doubleStream).f1152a : new C3062K0(doubleStream);
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: G */
    public /* synthetic */ C2716i mo205G(InterfaceC2692d interfaceC2692d) {
        return AbstractC2654a.m597n(this.f1150a.reduce(C3129y.m90a(interfaceC2692d)));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: H */
    public /* synthetic */ Object mo204H(InterfaceC2713y interfaceC2713y, InterfaceC2709u interfaceC2709u, BiConsumer biConsumer) {
        return this.f1150a.collect(C3132z0.m86a(interfaceC2713y), C3116r0.m103a(interfaceC2709u), C3115r.m104a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: K */
    public /* synthetic */ double mo203K(double d, InterfaceC2692d interfaceC2692d) {
        return this.f1150a.reduce(d, C3129y.m90a(interfaceC2692d));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: M */
    public /* synthetic */ Stream mo202M(InterfaceC2695g interfaceC2695g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1150a.mapToObj(C3045C.m228a(interfaceC2695g)));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: R */
    public /* synthetic */ IntStream mo201R(C3051F c3051f) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1150a.mapToInt(c3051f == null ? null : c3051f.f1139a));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: Y */
    public /* synthetic */ boolean mo200Y(C3047D c3047d) {
        return this.f1150a.allMatch(AbstractC3049E.m223a(c3047d));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ C2716i average() {
        return AbstractC2654a.m597n(this.f1150a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2847U mo199b(InterfaceC2694f interfaceC2694f) {
        return m194n0(this.f1150a.peek(C3041A.m232a(interfaceC2694f)));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1150a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1150a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ long count() {
        return this.f1150a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ InterfaceC2847U distinct() {
        return m194n0(this.f1150a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ C2716i findAny() {
        return AbstractC2654a.m597n(this.f1150a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ C2716i findFirst() {
        return AbstractC2654a.m597n(this.f1150a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo198h0(C3047D c3047d) {
        return this.f1150a.anyMatch(AbstractC3049E.m223a(c3047d));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: i0 */
    public /* synthetic */ boolean mo197i0(C3047D c3047d) {
        return this.f1150a.noneMatch(AbstractC3049E.m223a(c3047d));
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ boolean isParallel() {
        return this.f1150a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2847U, p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2720m iterator() {
        return C3081a.m154a(this.f1150a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ Iterator iterator() {
        return this.f1150a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: j */
    public /* synthetic */ void mo196j(InterfaceC2694f interfaceC2694f) {
        this.f1150a.forEach(C3041A.m232a(interfaceC2694f));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: l0 */
    public /* synthetic */ void mo195l0(InterfaceC2694f interfaceC2694f) {
        this.f1150a.forEachOrdered(C3041A.m232a(interfaceC2694f));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ InterfaceC2847U limit(long j) {
        return m194n0(this.f1150a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ C2716i max() {
        return AbstractC2654a.m597n(this.f1150a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ C2716i min() {
        return AbstractC2654a.m597n(this.f1150a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g onClose(Runnable runnable) {
        return C3054G0.m218n0(this.f1150a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2847U, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2847U parallel() {
        return m194n0(this.f1150a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g parallel() {
        return C3054G0.m218n0(this.f1150a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: r */
    public /* synthetic */ InterfaceC2847U mo193r(C3047D c3047d) {
        return m194n0(this.f1150a.filter(AbstractC3049E.m223a(c3047d)));
    }

    @Override // p034j$.util.stream.InterfaceC2847U, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2847U sequential() {
        return m194n0(this.f1150a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g sequential() {
        return C3054G0.m218n0(this.f1150a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ InterfaceC2847U skip(long j) {
        return m194n0(this.f1150a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ InterfaceC2847U sorted() {
        return m194n0(this.f1150a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2847U, p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s.InterfaceC2728a spliterator() {
        return C3097i.m133a(this.f1150a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s spliterator() {
        return C3093g.m137a(this.f1150a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ double sum() {
        return this.f1150a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public C2688f summaryStatistics() {
        this.f1150a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    public /* synthetic */ double[] toArray() {
        return this.f1150a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g unordered() {
        return C3054G0.m218n0(this.f1150a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: w */
    public /* synthetic */ InterfaceC2847U mo192w(InterfaceC2695g interfaceC2695g) {
        return m194n0(this.f1150a.flatMap(C3045C.m228a(interfaceC2695g)));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2904e1 mo191x(InterfaceC2696h interfaceC2696h) {
        return C3066M0.m175n0(this.f1150a.mapToLong(C3057I.m215a(interfaceC2696h)));
    }

    @Override // p034j$.util.stream.InterfaceC2847U
    /* renamed from: y */
    public /* synthetic */ InterfaceC2847U mo190y(C3059J c3059j) {
        return m194n0(this.f1150a.map(AbstractC3061K.m206a(c3059j)));
    }
}
