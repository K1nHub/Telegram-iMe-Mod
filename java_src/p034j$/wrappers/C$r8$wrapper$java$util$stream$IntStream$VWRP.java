package p034j$.wrappers;

import java.util.Iterator;
import p034j$.util.AbstractC2615a;
import p034j$.util.C2675g;
import p034j$.util.C2677i;
import p034j$.util.C2678j;
import p034j$.util.InterfaceC2683o;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2659j;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2663n;
import p034j$.util.function.InterfaceC2671v;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2808U;
import p034j$.util.stream.InterfaceC2865e1;
import p034j$.util.stream.InterfaceC2875g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1123a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1123a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1124a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2808U mo262A(C3038W c3038w) {
        return C3023K0.m189n0(this.f1123a.mapToDouble(c3038w == null ? null : c3038w.f1162a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo261C(C3036U c3036u) {
        return this.f1123a.allMatch(AbstractC3037V.m154a(c3036u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo260F(C3036U c3036u) {
        return this.f1123a.anyMatch(AbstractC3037V.m154a(c3036u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo259I(InterfaceC2661l interfaceC2661l) {
        this.f1123a.forEachOrdered(C3033Q.m159a(interfaceC2661l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo258J(InterfaceC2662m interfaceC2662m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1123a.mapToObj(C3035T.m157a(interfaceC2662m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo257N(int i, InterfaceC2659j interfaceC2659j) {
        return this.f1123a.reduce(i, C3030O.m163a(interfaceC2659j));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo256P(InterfaceC2662m interfaceC2662m) {
        return convert(this.f1123a.flatMap(C3035T.m157a(interfaceC2662m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo255U(InterfaceC2661l interfaceC2661l) {
        this.f1123a.forEach(C3033Q.m159a(interfaceC2661l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2678j mo254a0(InterfaceC2659j interfaceC2659j) {
        return AbstractC2615a.m592o(this.f1123a.reduce(C3030O.m163a(interfaceC2659j)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2808U asDoubleStream() {
        return C3023K0.m189n0(this.f1123a.asDoubleStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2865e1 asLongStream() {
        return C3027M0.m170n0(this.f1123a.asLongStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2677i average() {
        return AbstractC2615a.m593n(this.f1123a.average());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1123a.boxed());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo253c0(InterfaceC2661l interfaceC2661l) {
        return convert(this.f1123a.peek(C3033Q.m159a(interfaceC2661l)));
    }

    @Override // p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1123a.close();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1123a.count();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1123a.distinct());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC2865e1 mo252f(InterfaceC2663n interfaceC2663n) {
        return C3027M0.m170n0(this.f1123a.mapToLong(C3041Z.m150a(interfaceC2663n)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2678j findAny() {
        return AbstractC2615a.m592o(this.f1123a.findAny());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2678j findFirst() {
        return AbstractC2615a.m592o(this.f1123a.findFirst());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo251h(C3036U c3036u) {
        return convert(this.f1123a.filter(AbstractC3037V.m154a(c3036u)));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ boolean isParallel() {
        return this.f1123a.isParallel();
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2683o.InterfaceC2684a iterator() {
        return C3046c.m143a(this.f1123a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ Iterator iterator() {
        return this.f1123a.iterator();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo250k0(InterfaceC2674y interfaceC2674y, InterfaceC2671v interfaceC2671v, BiConsumer biConsumer) {
        return this.f1123a.collect(C3093z0.m81a(interfaceC2674y), C3081t0.m94a(interfaceC2671v), C3076r.m99a(biConsumer));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1123a.limit(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2678j max() {
        return AbstractC2615a.m592o(this.f1123a.max());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2678j min() {
        return AbstractC2615a.m592o(this.f1123a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g onClose(Runnable runnable) {
        return C3015G0.m213n0(this.f1123a.onClose(runnable));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1123a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g parallel() {
        return C3015G0.m213n0(this.f1123a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo249q(C3043a0 c3043a0) {
        return convert(this.f1123a.map(AbstractC3045b0.m144a(c3043a0)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1123a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g sequential() {
        return C3015G0.m213n0(this.f1123a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1123a.skip(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1123a.sorted());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s.InterfaceC2690b spliterator() {
        return C3062k.m121a(this.f1123a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s spliterator() {
        return C3054g.m132a(this.f1123a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1123a.sum();
    }

    @Override // p034j$.util.stream.IntStream
    public C2675g summaryStatistics() {
        this.f1123a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1123a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g unordered() {
        return C3015G0.m213n0(this.f1123a.unordered());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo248v(C3036U c3036u) {
        return this.f1123a.noneMatch(AbstractC3037V.m154a(c3036u));
    }
}
