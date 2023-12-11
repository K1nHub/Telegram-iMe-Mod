package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2840k;
import p033j$.util.C2809d;
import p033j$.util.C2836g;
import p033j$.util.InterfaceC2841l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2815d;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2818g;
import p033j$.util.function.InterfaceC2819h;
import p033j$.util.function.InterfaceC2831t;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2966U;
import p033j$.util.stream.InterfaceC3023e1;
import p033j$.util.stream.InterfaceC3033g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3175H0 implements InterfaceC2966U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1277a;

    private /* synthetic */ C3175H0(DoubleStream doubleStream) {
        this.f1277a = doubleStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC2966U m266m0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3177I0 ? ((C3177I0) doubleStream).f1279a : new C3175H0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: F */
    public /* synthetic */ C2836g mo277F(InterfaceC2815d interfaceC2815d) {
        return AbstractC2840k.m596j(this.f1277a.reduce(C3243x.m161a(interfaceC2815d)));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: G */
    public /* synthetic */ Object mo276G(InterfaceC2835x interfaceC2835x, InterfaceC2831t interfaceC2831t, BiConsumer biConsumer) {
        return this.f1277a.collect(C3242w0.m162a(interfaceC2835x), C3228p0.m176a(interfaceC2831t), C3231r.m173a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: J */
    public /* synthetic */ double mo275J(double d, InterfaceC2815d interfaceC2815d) {
        return this.f1277a.reduce(d, C3243x.m161a(interfaceC2815d));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: L */
    public /* synthetic */ Stream mo274L(InterfaceC2818g interfaceC2818g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.mapToObj(C3162B.m295a(interfaceC2818g)));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: Q */
    public /* synthetic */ IntStream mo273Q(C3168E c3168e) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1277a.mapToInt(c3168e == null ? null : c3168e.f1270a));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: X */
    public /* synthetic */ boolean mo272X(C3164C c3164c) {
        return this.f1277a.allMatch(AbstractC3166D.m290a(c3164c));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ C2836g average() {
        return AbstractC2840k.m596j(this.f1277a.average());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2966U mo271b(InterfaceC2817f interfaceC2817f) {
        return m266m0(this.f1277a.peek(C3247z.m156a(interfaceC2817f)));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1277a.close();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ long count() {
        return this.f1277a.count();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ InterfaceC2966U distinct() {
        return m266m0(this.f1277a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ C2836g findAny() {
        return AbstractC2840k.m596j(this.f1277a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ C2836g findFirst() {
        return AbstractC2840k.m596j(this.f1277a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: g0 */
    public /* synthetic */ boolean mo270g0(C3164C c3164c) {
        return this.f1277a.anyMatch(AbstractC3166D.m290a(c3164c));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo269h0(C3164C c3164c) {
        return this.f1277a.noneMatch(AbstractC3166D.m290a(c3164c));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ boolean isParallel() {
        return this.f1277a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC2966U, p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC2841l iterator() {
        return C3197a.m221a(this.f1277a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Iterator iterator() {
        return this.f1277a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: j */
    public /* synthetic */ void mo268j(InterfaceC2817f interfaceC2817f) {
        this.f1277a.forEach(C3247z.m156a(interfaceC2817f));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: k0 */
    public /* synthetic */ void mo267k0(InterfaceC2817f interfaceC2817f) {
        this.f1277a.forEachOrdered(C3247z.m156a(interfaceC2817f));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ InterfaceC2966U limit(long j) {
        return m266m0(this.f1277a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ C2836g max() {
        return AbstractC2840k.m596j(this.f1277a.max());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ C2836g min() {
        return AbstractC2840k.m596j(this.f1277a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g onClose(Runnable runnable) {
        return C3167D0.m289m0(this.f1277a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC2966U, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2966U parallel() {
        return m266m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g parallel() {
        return C3167D0.m289m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: q */
    public /* synthetic */ InterfaceC2966U mo265q(C3164C c3164c) {
        return m266m0(this.f1277a.filter(AbstractC3166D.m290a(c3164c)));
    }

    @Override // p033j$.util.stream.InterfaceC2966U, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2966U sequential() {
        return m266m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g sequential() {
        return C3167D0.m289m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ InterfaceC2966U skip(long j) {
        return m266m0(this.f1277a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ InterfaceC2966U sorted() {
        return m266m0(this.f1277a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC2966U, p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator.InterfaceC2773a spliterator() {
        return C3213i.m200a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator spliterator() {
        return C3209g.m205a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ double sum() {
        return this.f1277a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public C2809d summaryStatistics() {
        this.f1277a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    public /* synthetic */ double[] toArray() {
        return this.f1277a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g unordered() {
        return C3167D0.m289m0(this.f1277a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: v */
    public /* synthetic */ InterfaceC2966U mo264v(InterfaceC2818g interfaceC2818g) {
        return m266m0(this.f1277a.flatMap(C3162B.m295a(interfaceC2818g)));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: w */
    public /* synthetic */ InterfaceC3023e1 mo263w(InterfaceC2819h interfaceC2819h) {
        return C3179J0.m246m0(this.f1277a.mapToLong(C3174H.m278a(interfaceC2819h)));
    }

    @Override // p033j$.util.stream.InterfaceC2966U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2966U mo262x(C3176I c3176i) {
        return m266m0(this.f1277a.map(AbstractC3178J.m258a(c3176i)));
    }
}
