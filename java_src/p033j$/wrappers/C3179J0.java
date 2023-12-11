package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2840k;
import p033j$.util.C2811f;
import p033j$.util.C2836g;
import p033j$.util.C2838i;
import p033j$.util.InterfaceC2846p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2825n;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.InterfaceC2830s;
import p033j$.util.function.InterfaceC2833v;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2966U;
import p033j$.util.stream.InterfaceC3023e1;
import p033j$.util.stream.InterfaceC3033g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.J0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3179J0 implements InterfaceC3023e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1281a;

    private /* synthetic */ C3179J0(LongStream longStream) {
        this.f1281a = longStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3023e1 m246m0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3181K0 ? ((C3181K0) longStream).f1283a : new C3179J0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: C */
    public /* synthetic */ long mo257C(long j, InterfaceC2825n interfaceC2825n) {
        return this.f1281a.reduce(j, C3200b0.m217a(interfaceC2825n));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: K */
    public /* synthetic */ boolean mo256K(C3210g0 c3210g0) {
        return this.f1281a.allMatch(AbstractC3212h0.m201a(c3210g0));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: N */
    public /* synthetic */ InterfaceC2966U mo255N(C3214i0 c3214i0) {
        return C3175H0.m266m0(this.f1281a.mapToDouble(c3214i0 == null ? null : c3214i0.f1316a));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: P */
    public /* synthetic */ Stream mo254P(InterfaceC2828q interfaceC2828q) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.mapToObj(C3208f0.m206a(interfaceC2828q)));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: R */
    public /* synthetic */ boolean mo253R(C3210g0 c3210g0) {
        return this.f1281a.noneMatch(AbstractC3212h0.m201a(c3210g0));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: Y */
    public /* synthetic */ void mo252Y(InterfaceC2827p interfaceC2827p) {
        this.f1281a.forEachOrdered(C3204d0.m211a(interfaceC2827p));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ InterfaceC2966U asDoubleStream() {
        return C3175H0.m266m0(this.f1281a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ C2836g average() {
        return AbstractC2840k.m596j(this.f1281a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1281a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ long count() {
        return this.f1281a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: d */
    public /* synthetic */ void mo251d(InterfaceC2827p interfaceC2827p) {
        this.f1281a.forEach(C3204d0.m211a(interfaceC2827p));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: d0 */
    public /* synthetic */ IntStream mo250d0(C3218k0 c3218k0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1281a.mapToInt(c3218k0 == null ? null : c3218k0.f1320a));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ InterfaceC3023e1 distinct() {
        return m246m0(this.f1281a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: e0 */
    public /* synthetic */ Object mo249e0(InterfaceC2835x interfaceC2835x, InterfaceC2833v interfaceC2833v, BiConsumer biConsumer) {
        return this.f1281a.collect(C3242w0.m162a(interfaceC2835x), C3236t0.m168a(interfaceC2833v), C3231r.m173a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ C2838i findAny() {
        return AbstractC2840k.m594l(this.f1281a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ C2838i findFirst() {
        return AbstractC2840k.m594l(this.f1281a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: g */
    public /* synthetic */ C2838i mo248g(InterfaceC2825n interfaceC2825n) {
        return AbstractC2840k.m594l(this.f1281a.reduce(C3200b0.m217a(interfaceC2825n)));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ boolean isParallel() {
        return this.f1281a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1, p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC2846p iterator() {
        return C3205e.m210a(this.f1281a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Iterator iterator() {
        return this.f1281a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: k */
    public /* synthetic */ boolean mo247k(C3210g0 c3210g0) {
        return this.f1281a.anyMatch(AbstractC3212h0.m201a(c3210g0));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ InterfaceC3023e1 limit(long j) {
        return m246m0(this.f1281a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ C2838i max() {
        return AbstractC2840k.m594l(this.f1281a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ C2838i min() {
        return AbstractC2840k.m594l(this.f1281a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: o */
    public /* synthetic */ InterfaceC3023e1 mo245o(InterfaceC2827p interfaceC2827p) {
        return m246m0(this.f1281a.peek(C3204d0.m211a(interfaceC2827p)));
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g onClose(Runnable runnable) {
        return C3167D0.m289m0(this.f1281a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3023e1 parallel() {
        return m246m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g parallel() {
        return C3167D0.m289m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: r */
    public /* synthetic */ InterfaceC3023e1 mo244r(InterfaceC2828q interfaceC2828q) {
        return m246m0(this.f1281a.flatMap(C3208f0.m206a(interfaceC2828q)));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3023e1 sequential() {
        return m246m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3033g sequential() {
        return C3167D0.m289m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ InterfaceC3023e1 skip(long j) {
        return m246m0(this.f1281a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ InterfaceC3023e1 sorted() {
        return m246m0(this.f1281a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1, p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator.InterfaceC2775c spliterator() {
        return C3221m.m188a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ Spliterator spliterator() {
        return C3209g.m205a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ long sum() {
        return this.f1281a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public C2811f summaryStatistics() {
        this.f1281a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: t */
    public /* synthetic */ InterfaceC3023e1 mo243t(C3210g0 c3210g0) {
        return m246m0(this.f1281a.filter(AbstractC3212h0.m201a(c3210g0)));
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    public /* synthetic */ long[] toArray() {
        return this.f1281a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public /* synthetic */ InterfaceC3033g unordered() {
        return C3167D0.m289m0(this.f1281a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3023e1
    /* renamed from: y */
    public /* synthetic */ InterfaceC3023e1 mo242y(InterfaceC2830s interfaceC2830s) {
        return m246m0(this.f1281a.map(C3224n0.m181a(interfaceC2830s)));
    }
}
