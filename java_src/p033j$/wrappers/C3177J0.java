package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2838k;
import p033j$.util.C2809f;
import p033j$.util.C2834g;
import p033j$.util.C2836i;
import p033j$.util.InterfaceC2844p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2823n;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.InterfaceC2828s;
import p033j$.util.function.InterfaceC2831v;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2964U;
import p033j$.util.stream.InterfaceC3021e1;
import p033j$.util.stream.InterfaceC3031g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.J0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3177J0 implements InterfaceC3021e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1281a;

    private /* synthetic */ C3177J0(LongStream longStream) {
        this.f1281a = longStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3021e1 m249m0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3179K0 ? ((C3179K0) longStream).f1283a : new C3177J0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: C */
    public /* synthetic */ long mo260C(long j, InterfaceC2823n interfaceC2823n) {
        return this.f1281a.reduce(j, C3198b0.m220a(interfaceC2823n));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: K */
    public /* synthetic */ boolean mo259K(C3208g0 c3208g0) {
        return this.f1281a.allMatch(AbstractC3210h0.m204a(c3208g0));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: N */
    public /* synthetic */ InterfaceC2964U mo258N(C3212i0 c3212i0) {
        return C3173H0.m269m0(this.f1281a.mapToDouble(c3212i0 == null ? null : c3212i0.f1316a));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: P */
    public /* synthetic */ Stream mo257P(InterfaceC2826q interfaceC2826q) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.mapToObj(C3206f0.m209a(interfaceC2826q)));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: R */
    public /* synthetic */ boolean mo256R(C3208g0 c3208g0) {
        return this.f1281a.noneMatch(AbstractC3210h0.m204a(c3208g0));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: Y */
    public /* synthetic */ void mo255Y(InterfaceC2825p interfaceC2825p) {
        this.f1281a.forEachOrdered(C3202d0.m214a(interfaceC2825p));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ InterfaceC2964U asDoubleStream() {
        return C3173H0.m269m0(this.f1281a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ C2834g average() {
        return AbstractC2838k.m599j(this.f1281a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1281a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ long count() {
        return this.f1281a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: d */
    public /* synthetic */ void mo254d(InterfaceC2825p interfaceC2825p) {
        this.f1281a.forEach(C3202d0.m214a(interfaceC2825p));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: d0 */
    public /* synthetic */ IntStream mo253d0(C3216k0 c3216k0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1281a.mapToInt(c3216k0 == null ? null : c3216k0.f1320a));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ InterfaceC3021e1 distinct() {
        return m249m0(this.f1281a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: e0 */
    public /* synthetic */ Object mo252e0(InterfaceC2833x interfaceC2833x, InterfaceC2831v interfaceC2831v, BiConsumer biConsumer) {
        return this.f1281a.collect(C3240w0.m165a(interfaceC2833x), C3234t0.m171a(interfaceC2831v), C3229r.m176a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ C2836i findAny() {
        return AbstractC2838k.m597l(this.f1281a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ C2836i findFirst() {
        return AbstractC2838k.m597l(this.f1281a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: g */
    public /* synthetic */ C2836i mo251g(InterfaceC2823n interfaceC2823n) {
        return AbstractC2838k.m597l(this.f1281a.reduce(C3198b0.m220a(interfaceC2823n)));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ boolean isParallel() {
        return this.f1281a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1, p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC2844p iterator() {
        return C3203e.m213a(this.f1281a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Iterator iterator() {
        return this.f1281a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: k */
    public /* synthetic */ boolean mo250k(C3208g0 c3208g0) {
        return this.f1281a.anyMatch(AbstractC3210h0.m204a(c3208g0));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ InterfaceC3021e1 limit(long j) {
        return m249m0(this.f1281a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ C2836i max() {
        return AbstractC2838k.m597l(this.f1281a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ C2836i min() {
        return AbstractC2838k.m597l(this.f1281a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: o */
    public /* synthetic */ InterfaceC3021e1 mo248o(InterfaceC2825p interfaceC2825p) {
        return m249m0(this.f1281a.peek(C3202d0.m214a(interfaceC2825p)));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g onClose(Runnable runnable) {
        return C3165D0.m292m0(this.f1281a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3021e1 parallel() {
        return m249m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g parallel() {
        return C3165D0.m292m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: r */
    public /* synthetic */ InterfaceC3021e1 mo247r(InterfaceC2826q interfaceC2826q) {
        return m249m0(this.f1281a.flatMap(C3206f0.m209a(interfaceC2826q)));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3021e1 sequential() {
        return m249m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g sequential() {
        return C3165D0.m292m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ InterfaceC3021e1 skip(long j) {
        return m249m0(this.f1281a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ InterfaceC3021e1 sorted() {
        return m249m0(this.f1281a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1, p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator.InterfaceC2773c spliterator() {
        return C3219m.m191a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator spliterator() {
        return C3207g.m208a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ long sum() {
        return this.f1281a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public C2809f summaryStatistics() {
        this.f1281a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: t */
    public /* synthetic */ InterfaceC3021e1 mo246t(C3208g0 c3208g0) {
        return m249m0(this.f1281a.filter(AbstractC3210h0.m204a(c3208g0)));
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    public /* synthetic */ long[] toArray() {
        return this.f1281a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g unordered() {
        return C3165D0.m292m0(this.f1281a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3021e1
    /* renamed from: y */
    public /* synthetic */ InterfaceC3021e1 mo245y(InterfaceC2828s interfaceC2828s) {
        return m249m0(this.f1281a.map(C3222n0.m184a(interfaceC2828s)));
    }
}
