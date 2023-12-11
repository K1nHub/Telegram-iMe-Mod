package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2840k;
import p033j$.util.C2810e;
import p033j$.util.C2836g;
import p033j$.util.C2837h;
import p033j$.util.InterfaceC2843n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821j;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2824m;
import p033j$.util.function.InterfaceC2832u;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2966U;
import p033j$.util.stream.InterfaceC3023e1;
import p033j$.util.stream.InterfaceC3033g;
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
    public /* synthetic */ boolean mo331B(C3189S c3189s) {
        return this.f1259a.allMatch(AbstractC3190T.m229a(c3189s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public /* synthetic */ boolean mo330E(C3189S c3189s) {
        return this.f1259a.anyMatch(AbstractC3190T.m229a(c3189s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: H */
    public /* synthetic */ void mo329H(InterfaceC2823l interfaceC2823l) {
        this.f1259a.forEachOrdered(C3186O.m234a(interfaceC2823l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ Stream mo328I(IntFunction intFunction) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.mapToObj(C3188Q.m232a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public /* synthetic */ int mo327M(int i, InterfaceC2821j interfaceC2821j) {
        return this.f1259a.reduce(i, C3184M.m237a(interfaceC2821j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public /* synthetic */ IntStream mo326O(IntFunction intFunction) {
        return convert(this.f1259a.flatMap(C3188Q.m232a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: T */
    public /* synthetic */ void mo325T(InterfaceC2823l interfaceC2823l) {
        this.f1259a.forEach(C3186O.m234a(interfaceC2823l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public /* synthetic */ C2837h mo324Z(InterfaceC2821j interfaceC2821j) {
        return AbstractC2840k.m595k(this.f1259a.reduce(C3184M.m237a(interfaceC2821j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2966U asDoubleStream() {
        return C3175H0.m266m0(this.f1259a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3023e1 asLongStream() {
        return C3179J0.m246m0(this.f1259a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2836g average() {
        return AbstractC2840k.m596j(this.f1259a.average());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public /* synthetic */ IntStream mo323b0(InterfaceC2823l interfaceC2823l) {
        return convert(this.f1259a.peek(C3186O.m234a(interfaceC2823l)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, java.lang.AutoCloseable
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
    public /* synthetic */ InterfaceC3023e1 mo322f(InterfaceC2824m interfaceC2824m) {
        return C3179J0.m246m0(this.f1259a.mapToLong(C3194X.m225a(interfaceC2824m)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2837h findAny() {
        return AbstractC2840k.m595k(this.f1259a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2837h findFirst() {
        return AbstractC2840k.m595k(this.f1259a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo321h(C3189S c3189s) {
        return convert(this.f1259a.filter(AbstractC3190T.m229a(c3189s)));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ boolean isParallel() {
        return this.f1259a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC2843n.InterfaceC2844a iterator() {
        return C3201c.m216a(this.f1259a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Iterator iterator() {
        return this.f1259a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public /* synthetic */ Object mo320j0(InterfaceC2835x interfaceC2835x, InterfaceC2832u interfaceC2832u, BiConsumer biConsumer) {
        return this.f1259a.collect(C3242w0.m162a(interfaceC2835x), C3232r0.m172a(interfaceC2832u), C3231r.m173a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1259a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2837h max() {
        return AbstractC2840k.m595k(this.f1259a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2837h min() {
        return AbstractC2840k.m595k(this.f1259a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g onClose(Runnable runnable) {
        return C3167D0.m289m0(this.f1259a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public /* synthetic */ IntStream mo319p(C3195Y c3195y) {
        return convert(this.f1259a.map(AbstractC3196Z.m222a(c3195y)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g parallel() {
        return C3167D0.m289m0(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g sequential() {
        return C3167D0.m289m0(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1259a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1259a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator.InterfaceC2774b spliterator() {
        return C3217k.m194a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator spliterator() {
        return C3209g.m205a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1259a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2810e summaryStatistics() {
        this.f1259a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1259a.toArray();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public /* synthetic */ boolean mo318u(C3189S c3189s) {
        return this.f1259a.noneMatch(AbstractC3190T.m229a(c3189s));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g unordered() {
        return C3167D0.m289m0(this.f1259a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public /* synthetic */ InterfaceC2966U mo317z(C3191U c3191u) {
        return C3175H0.m266m0(this.f1259a.mapToDouble(c3191u == null ? null : c3191u.f1293a));
    }
}
