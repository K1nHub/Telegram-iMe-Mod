package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2843k;
import p033j$.util.C2813e;
import p033j$.util.C2839g;
import p033j$.util.C2840h;
import p033j$.util.InterfaceC2846n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2969U;
import p033j$.util.stream.InterfaceC3026e1;
import p033j$.util.stream.InterfaceC3036g;
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
    public /* synthetic */ boolean mo331B(C3192S c3192s) {
        return this.f1259a.allMatch(AbstractC3193T.m229a(c3192s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public /* synthetic */ boolean mo330E(C3192S c3192s) {
        return this.f1259a.anyMatch(AbstractC3193T.m229a(c3192s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: H */
    public /* synthetic */ void mo329H(InterfaceC2826l interfaceC2826l) {
        this.f1259a.forEachOrdered(C3189O.m234a(interfaceC2826l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ Stream mo328I(IntFunction intFunction) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.mapToObj(C3191Q.m232a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public /* synthetic */ int mo327M(int i, InterfaceC2824j interfaceC2824j) {
        return this.f1259a.reduce(i, C3187M.m237a(interfaceC2824j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public /* synthetic */ IntStream mo326O(IntFunction intFunction) {
        return convert(this.f1259a.flatMap(C3191Q.m232a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: T */
    public /* synthetic */ void mo325T(InterfaceC2826l interfaceC2826l) {
        this.f1259a.forEach(C3189O.m234a(interfaceC2826l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public /* synthetic */ C2840h mo324Z(InterfaceC2824j interfaceC2824j) {
        return AbstractC2843k.m595k(this.f1259a.reduce(C3187M.m237a(interfaceC2824j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2969U asDoubleStream() {
        return C3178H0.m266m0(this.f1259a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3026e1 asLongStream() {
        return C3182J0.m246m0(this.f1259a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2839g average() {
        return AbstractC2843k.m596j(this.f1259a.average());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public /* synthetic */ IntStream mo323b0(InterfaceC2826l interfaceC2826l) {
        return convert(this.f1259a.peek(C3189O.m234a(interfaceC2826l)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, java.lang.AutoCloseable
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
    public /* synthetic */ InterfaceC3026e1 mo322f(InterfaceC2827m interfaceC2827m) {
        return C3182J0.m246m0(this.f1259a.mapToLong(C3197X.m225a(interfaceC2827m)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2840h findAny() {
        return AbstractC2843k.m595k(this.f1259a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2840h findFirst() {
        return AbstractC2843k.m595k(this.f1259a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo321h(C3192S c3192s) {
        return convert(this.f1259a.filter(AbstractC3193T.m229a(c3192s)));
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ boolean isParallel() {
        return this.f1259a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC2846n.InterfaceC2847a iterator() {
        return C3204c.m216a(this.f1259a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Iterator iterator() {
        return this.f1259a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public /* synthetic */ Object mo320j0(InterfaceC2838x interfaceC2838x, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer) {
        return this.f1259a.collect(C3245w0.m162a(interfaceC2838x), C3235r0.m172a(interfaceC2835u), C3234r.m173a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1259a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2840h max() {
        return AbstractC2843k.m595k(this.f1259a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2840h min() {
        return AbstractC2843k.m595k(this.f1259a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g onClose(Runnable runnable) {
        return C3170D0.m289m0(this.f1259a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public /* synthetic */ IntStream mo319p(C3198Y c3198y) {
        return convert(this.f1259a.map(AbstractC3199Z.m222a(c3198y)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g parallel() {
        return C3170D0.m289m0(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g sequential() {
        return C3170D0.m289m0(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1259a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1259a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator.InterfaceC2777b spliterator() {
        return C3220k.m194a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator spliterator() {
        return C3212g.m205a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1259a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2813e summaryStatistics() {
        this.f1259a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1259a.toArray();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public /* synthetic */ boolean mo318u(C3192S c3192s) {
        return this.f1259a.noneMatch(AbstractC3193T.m229a(c3192s));
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g unordered() {
        return C3170D0.m289m0(this.f1259a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public /* synthetic */ InterfaceC2969U mo317z(C3194U c3194u) {
        return C3178H0.m266m0(this.f1259a.mapToDouble(c3194u == null ? null : c3194u.f1293a));
    }
}
