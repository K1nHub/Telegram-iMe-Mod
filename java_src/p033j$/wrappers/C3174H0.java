package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2839k;
import p033j$.util.C2808d;
import p033j$.util.C2835g;
import p033j$.util.InterfaceC2840l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2814d;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2817g;
import p033j$.util.function.InterfaceC2818h;
import p033j$.util.function.InterfaceC2830t;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2965U;
import p033j$.util.stream.InterfaceC3022e1;
import p033j$.util.stream.InterfaceC3032g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3174H0 implements InterfaceC2965U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1277a;

    private /* synthetic */ C3174H0(DoubleStream doubleStream) {
        this.f1277a = doubleStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC2965U m265m0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3176I0 ? ((C3176I0) doubleStream).f1279a : new C3174H0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: F */
    public /* synthetic */ C2835g mo276F(InterfaceC2814d interfaceC2814d) {
        return AbstractC2839k.m595j(this.f1277a.reduce(C3242x.m159a(interfaceC2814d)));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: G */
    public /* synthetic */ Object mo275G(InterfaceC2834x interfaceC2834x, InterfaceC2830t interfaceC2830t, BiConsumer biConsumer) {
        return this.f1277a.collect(C3241w0.m160a(interfaceC2834x), C3227p0.m175a(interfaceC2830t), C3230r.m171a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: J */
    public /* synthetic */ double mo274J(double d, InterfaceC2814d interfaceC2814d) {
        return this.f1277a.reduce(d, C3242x.m159a(interfaceC2814d));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: L */
    public /* synthetic */ Stream mo273L(InterfaceC2817g interfaceC2817g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.mapToObj(C3161B.m294a(interfaceC2817g)));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: Q */
    public /* synthetic */ IntStream mo272Q(C3167E c3167e) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1277a.mapToInt(c3167e == null ? null : c3167e.f1270a));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: X */
    public /* synthetic */ boolean mo271X(C3163C c3163c) {
        return this.f1277a.allMatch(AbstractC3165D.m289a(c3163c));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ C2835g average() {
        return AbstractC2839k.m595j(this.f1277a.average());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2965U mo270b(InterfaceC2816f interfaceC2816f) {
        return m265m0(this.f1277a.peek(C3246z.m154a(interfaceC2816f)));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1277a.close();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ long count() {
        return this.f1277a.count();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ InterfaceC2965U distinct() {
        return m265m0(this.f1277a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ C2835g findAny() {
        return AbstractC2839k.m595j(this.f1277a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ C2835g findFirst() {
        return AbstractC2839k.m595j(this.f1277a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: g0 */
    public /* synthetic */ boolean mo269g0(C3163C c3163c) {
        return this.f1277a.anyMatch(AbstractC3165D.m289a(c3163c));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo268h0(C3163C c3163c) {
        return this.f1277a.noneMatch(AbstractC3165D.m289a(c3163c));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ boolean isParallel() {
        return this.f1277a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC2965U, p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC2840l iterator() {
        return C3196a.m220a(this.f1277a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Iterator iterator() {
        return this.f1277a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: j */
    public /* synthetic */ void mo267j(InterfaceC2816f interfaceC2816f) {
        this.f1277a.forEach(C3246z.m154a(interfaceC2816f));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: k0 */
    public /* synthetic */ void mo266k0(InterfaceC2816f interfaceC2816f) {
        this.f1277a.forEachOrdered(C3246z.m154a(interfaceC2816f));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ InterfaceC2965U limit(long j) {
        return m265m0(this.f1277a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ C2835g max() {
        return AbstractC2839k.m595j(this.f1277a.max());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ C2835g min() {
        return AbstractC2839k.m595j(this.f1277a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g onClose(Runnable runnable) {
        return C3166D0.m288m0(this.f1277a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC2965U, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2965U parallel() {
        return m265m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g parallel() {
        return C3166D0.m288m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: q */
    public /* synthetic */ InterfaceC2965U mo264q(C3163C c3163c) {
        return m265m0(this.f1277a.filter(AbstractC3165D.m289a(c3163c)));
    }

    @Override // p033j$.util.stream.InterfaceC2965U, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2965U sequential() {
        return m265m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g sequential() {
        return C3166D0.m288m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ InterfaceC2965U skip(long j) {
        return m265m0(this.f1277a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ InterfaceC2965U sorted() {
        return m265m0(this.f1277a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC2965U, p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator.InterfaceC2772a spliterator() {
        return C3212i.m199a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator spliterator() {
        return C3208g.m204a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ double sum() {
        return this.f1277a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public C2808d summaryStatistics() {
        this.f1277a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    public /* synthetic */ double[] toArray() {
        return this.f1277a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g unordered() {
        return C3166D0.m288m0(this.f1277a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: v */
    public /* synthetic */ InterfaceC2965U mo263v(InterfaceC2817g interfaceC2817g) {
        return m265m0(this.f1277a.flatMap(C3161B.m294a(interfaceC2817g)));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: w */
    public /* synthetic */ InterfaceC3022e1 mo262w(InterfaceC2818h interfaceC2818h) {
        return C3178J0.m245m0(this.f1277a.mapToLong(C3173H.m277a(interfaceC2818h)));
    }

    @Override // p033j$.util.stream.InterfaceC2965U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2965U mo261x(C3175I c3175i) {
        return m265m0(this.f1277a.map(AbstractC3177J.m257a(c3175i)));
    }
}
