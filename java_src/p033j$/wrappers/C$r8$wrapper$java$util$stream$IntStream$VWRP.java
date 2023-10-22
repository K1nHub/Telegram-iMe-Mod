package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2839k;
import p033j$.util.C2809e;
import p033j$.util.C2835g;
import p033j$.util.C2836h;
import p033j$.util.InterfaceC2842n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2820j;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2823m;
import p033j$.util.function.InterfaceC2831u;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2965U;
import p033j$.util.stream.InterfaceC3022e1;
import p033j$.util.stream.InterfaceC3032g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1259a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1259a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1260a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: B */
    public /* synthetic */ boolean mo330B(C3188S c3188s) {
        return this.f1259a.allMatch(AbstractC3189T.m228a(c3188s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public /* synthetic */ boolean mo329E(C3188S c3188s) {
        return this.f1259a.anyMatch(AbstractC3189T.m228a(c3188s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: H */
    public /* synthetic */ void mo328H(InterfaceC2822l interfaceC2822l) {
        this.f1259a.forEachOrdered(C3185O.m233a(interfaceC2822l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ Stream mo327I(IntFunction intFunction) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.mapToObj(C3187Q.m231a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public /* synthetic */ int mo326M(int i, InterfaceC2820j interfaceC2820j) {
        return this.f1259a.reduce(i, C3183M.m236a(interfaceC2820j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public /* synthetic */ IntStream mo325O(IntFunction intFunction) {
        return convert(this.f1259a.flatMap(C3187Q.m231a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: T */
    public /* synthetic */ void mo324T(InterfaceC2822l interfaceC2822l) {
        this.f1259a.forEach(C3185O.m233a(interfaceC2822l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public /* synthetic */ C2836h mo323Z(InterfaceC2820j interfaceC2820j) {
        return AbstractC2839k.m594k(this.f1259a.reduce(C3183M.m236a(interfaceC2820j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2965U asDoubleStream() {
        return C3174H0.m265m0(this.f1259a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3022e1 asLongStream() {
        return C3178J0.m245m0(this.f1259a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2835g average() {
        return AbstractC2839k.m595j(this.f1259a.average());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public /* synthetic */ IntStream mo322b0(InterfaceC2822l interfaceC2822l) {
        return convert(this.f1259a.peek(C3185O.m233a(interfaceC2822l)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1259a.close();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1259a.count();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1259a.distinct());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC3022e1 mo321f(InterfaceC2823m interfaceC2823m) {
        return C3178J0.m245m0(this.f1259a.mapToLong(C3193X.m224a(interfaceC2823m)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2836h findAny() {
        return AbstractC2839k.m594k(this.f1259a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2836h findFirst() {
        return AbstractC2839k.m594k(this.f1259a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo320h(C3188S c3188s) {
        return convert(this.f1259a.filter(AbstractC3189T.m228a(c3188s)));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ boolean isParallel() {
        return this.f1259a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC2842n.InterfaceC2843a iterator() {
        return C3200c.m215a(this.f1259a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Iterator iterator() {
        return this.f1259a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public /* synthetic */ Object mo319j0(InterfaceC2834x interfaceC2834x, InterfaceC2831u interfaceC2831u, BiConsumer biConsumer) {
        return this.f1259a.collect(C3241w0.m160a(interfaceC2834x), C3231r0.m170a(interfaceC2831u), C3230r.m171a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1259a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2836h max() {
        return AbstractC2839k.m594k(this.f1259a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2836h min() {
        return AbstractC2839k.m594k(this.f1259a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g onClose(Runnable runnable) {
        return C3166D0.m288m0(this.f1259a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public /* synthetic */ IntStream mo318p(C3194Y c3194y) {
        return convert(this.f1259a.map(AbstractC3195Z.m221a(c3194y)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g parallel() {
        return C3166D0.m288m0(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g sequential() {
        return C3166D0.m288m0(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1259a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1259a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator.InterfaceC2773b spliterator() {
        return C3216k.m193a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator spliterator() {
        return C3208g.m204a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1259a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2809e summaryStatistics() {
        this.f1259a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1259a.toArray();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public /* synthetic */ boolean mo317u(C3188S c3188s) {
        return this.f1259a.noneMatch(AbstractC3189T.m228a(c3188s));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g unordered() {
        return C3166D0.m288m0(this.f1259a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public /* synthetic */ InterfaceC2965U mo316z(C3190U c3190u) {
        return C3174H0.m265m0(this.f1259a.mapToDouble(c3190u == null ? null : c3190u.f1293a));
    }
}
