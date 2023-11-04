package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2843k;
import p033j$.util.C2814f;
import p033j$.util.C2839g;
import p033j$.util.C2841i;
import p033j$.util.InterfaceC2849p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2833s;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2969U;
import p033j$.util.stream.InterfaceC3026e1;
import p033j$.util.stream.InterfaceC3036g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.J0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3182J0 implements InterfaceC3026e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1281a;

    private /* synthetic */ C3182J0(LongStream longStream) {
        this.f1281a = longStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3026e1 m246m0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3184K0 ? ((C3184K0) longStream).f1283a : new C3182J0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: C */
    public /* synthetic */ long mo257C(long j, InterfaceC2828n interfaceC2828n) {
        return this.f1281a.reduce(j, C3203b0.m217a(interfaceC2828n));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: K */
    public /* synthetic */ boolean mo256K(C3213g0 c3213g0) {
        return this.f1281a.allMatch(AbstractC3215h0.m201a(c3213g0));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: N */
    public /* synthetic */ InterfaceC2969U mo255N(C3217i0 c3217i0) {
        return C3178H0.m266m0(this.f1281a.mapToDouble(c3217i0 == null ? null : c3217i0.f1316a));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: P */
    public /* synthetic */ Stream mo254P(InterfaceC2831q interfaceC2831q) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.mapToObj(C3211f0.m206a(interfaceC2831q)));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: R */
    public /* synthetic */ boolean mo253R(C3213g0 c3213g0) {
        return this.f1281a.noneMatch(AbstractC3215h0.m201a(c3213g0));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: Y */
    public /* synthetic */ void mo252Y(InterfaceC2830p interfaceC2830p) {
        this.f1281a.forEachOrdered(C3207d0.m211a(interfaceC2830p));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ InterfaceC2969U asDoubleStream() {
        return C3178H0.m266m0(this.f1281a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ C2839g average() {
        return AbstractC2843k.m596j(this.f1281a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1281a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ long count() {
        return this.f1281a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: d */
    public /* synthetic */ void mo251d(InterfaceC2830p interfaceC2830p) {
        this.f1281a.forEach(C3207d0.m211a(interfaceC2830p));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: d0 */
    public /* synthetic */ IntStream mo250d0(C3221k0 c3221k0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1281a.mapToInt(c3221k0 == null ? null : c3221k0.f1320a));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ InterfaceC3026e1 distinct() {
        return m246m0(this.f1281a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: e0 */
    public /* synthetic */ Object mo249e0(InterfaceC2838x interfaceC2838x, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer) {
        return this.f1281a.collect(C3245w0.m162a(interfaceC2838x), C3239t0.m168a(interfaceC2836v), C3234r.m173a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ C2841i findAny() {
        return AbstractC2843k.m594l(this.f1281a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ C2841i findFirst() {
        return AbstractC2843k.m594l(this.f1281a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: g */
    public /* synthetic */ C2841i mo248g(InterfaceC2828n interfaceC2828n) {
        return AbstractC2843k.m594l(this.f1281a.reduce(C3203b0.m217a(interfaceC2828n)));
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ boolean isParallel() {
        return this.f1281a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1, p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC2849p iterator() {
        return C3208e.m210a(this.f1281a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Iterator iterator() {
        return this.f1281a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: k */
    public /* synthetic */ boolean mo247k(C3213g0 c3213g0) {
        return this.f1281a.anyMatch(AbstractC3215h0.m201a(c3213g0));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ InterfaceC3026e1 limit(long j) {
        return m246m0(this.f1281a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ C2841i max() {
        return AbstractC2843k.m594l(this.f1281a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ C2841i min() {
        return AbstractC2843k.m594l(this.f1281a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: o */
    public /* synthetic */ InterfaceC3026e1 mo245o(InterfaceC2830p interfaceC2830p) {
        return m246m0(this.f1281a.peek(C3207d0.m211a(interfaceC2830p)));
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g onClose(Runnable runnable) {
        return C3170D0.m289m0(this.f1281a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3026e1 parallel() {
        return m246m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g parallel() {
        return C3170D0.m289m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: r */
    public /* synthetic */ InterfaceC3026e1 mo244r(InterfaceC2831q interfaceC2831q) {
        return m246m0(this.f1281a.flatMap(C3211f0.m206a(interfaceC2831q)));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3026e1 sequential() {
        return m246m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g sequential() {
        return C3170D0.m289m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ InterfaceC3026e1 skip(long j) {
        return m246m0(this.f1281a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ InterfaceC3026e1 sorted() {
        return m246m0(this.f1281a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1, p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator.InterfaceC2778c spliterator() {
        return C3224m.m188a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator spliterator() {
        return C3212g.m205a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ long sum() {
        return this.f1281a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public C2814f summaryStatistics() {
        this.f1281a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: t */
    public /* synthetic */ InterfaceC3026e1 mo243t(C3213g0 c3213g0) {
        return m246m0(this.f1281a.filter(AbstractC3215h0.m201a(c3213g0)));
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    public /* synthetic */ long[] toArray() {
        return this.f1281a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g unordered() {
        return C3170D0.m289m0(this.f1281a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3026e1
    /* renamed from: y */
    public /* synthetic */ InterfaceC3026e1 mo242y(InterfaceC2833s interfaceC2833s) {
        return m246m0(this.f1281a.map(C3227n0.m181a(interfaceC2833s)));
    }
}
