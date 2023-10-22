package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2839k;
import p033j$.util.C2810f;
import p033j$.util.C2835g;
import p033j$.util.C2837i;
import p033j$.util.InterfaceC2845p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2824n;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.InterfaceC2829s;
import p033j$.util.function.InterfaceC2832v;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2965U;
import p033j$.util.stream.InterfaceC3022e1;
import p033j$.util.stream.InterfaceC3032g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.J0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3178J0 implements InterfaceC3022e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1281a;

    private /* synthetic */ C3178J0(LongStream longStream) {
        this.f1281a = longStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3022e1 m245m0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3180K0 ? ((C3180K0) longStream).f1283a : new C3178J0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: C */
    public /* synthetic */ long mo256C(long j, InterfaceC2824n interfaceC2824n) {
        return this.f1281a.reduce(j, C3199b0.m216a(interfaceC2824n));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: K */
    public /* synthetic */ boolean mo255K(C3209g0 c3209g0) {
        return this.f1281a.allMatch(AbstractC3211h0.m200a(c3209g0));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: N */
    public /* synthetic */ InterfaceC2965U mo254N(C3213i0 c3213i0) {
        return C3174H0.m265m0(this.f1281a.mapToDouble(c3213i0 == null ? null : c3213i0.f1316a));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: P */
    public /* synthetic */ Stream mo253P(InterfaceC2827q interfaceC2827q) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.mapToObj(C3207f0.m205a(interfaceC2827q)));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: R */
    public /* synthetic */ boolean mo252R(C3209g0 c3209g0) {
        return this.f1281a.noneMatch(AbstractC3211h0.m200a(c3209g0));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: Y */
    public /* synthetic */ void mo251Y(InterfaceC2826p interfaceC2826p) {
        this.f1281a.forEachOrdered(C3203d0.m210a(interfaceC2826p));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ InterfaceC2965U asDoubleStream() {
        return C3174H0.m265m0(this.f1281a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ C2835g average() {
        return AbstractC2839k.m595j(this.f1281a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1281a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1281a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ long count() {
        return this.f1281a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: d */
    public /* synthetic */ void mo250d(InterfaceC2826p interfaceC2826p) {
        this.f1281a.forEach(C3203d0.m210a(interfaceC2826p));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: d0 */
    public /* synthetic */ IntStream mo249d0(C3217k0 c3217k0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1281a.mapToInt(c3217k0 == null ? null : c3217k0.f1320a));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ InterfaceC3022e1 distinct() {
        return m245m0(this.f1281a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: e0 */
    public /* synthetic */ Object mo248e0(InterfaceC2834x interfaceC2834x, InterfaceC2832v interfaceC2832v, BiConsumer biConsumer) {
        return this.f1281a.collect(C3241w0.m160a(interfaceC2834x), C3235t0.m166a(interfaceC2832v), C3230r.m171a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ C2837i findAny() {
        return AbstractC2839k.m593l(this.f1281a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ C2837i findFirst() {
        return AbstractC2839k.m593l(this.f1281a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: g */
    public /* synthetic */ C2837i mo247g(InterfaceC2824n interfaceC2824n) {
        return AbstractC2839k.m593l(this.f1281a.reduce(C3199b0.m216a(interfaceC2824n)));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ boolean isParallel() {
        return this.f1281a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1, p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC2845p iterator() {
        return C3204e.m209a(this.f1281a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Iterator iterator() {
        return this.f1281a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: k */
    public /* synthetic */ boolean mo246k(C3209g0 c3209g0) {
        return this.f1281a.anyMatch(AbstractC3211h0.m200a(c3209g0));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ InterfaceC3022e1 limit(long j) {
        return m245m0(this.f1281a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ C2837i max() {
        return AbstractC2839k.m593l(this.f1281a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ C2837i min() {
        return AbstractC2839k.m593l(this.f1281a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: o */
    public /* synthetic */ InterfaceC3022e1 mo244o(InterfaceC2826p interfaceC2826p) {
        return m245m0(this.f1281a.peek(C3203d0.m210a(interfaceC2826p)));
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g onClose(Runnable runnable) {
        return C3166D0.m288m0(this.f1281a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3022e1 parallel() {
        return m245m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g parallel() {
        return C3166D0.m288m0(this.f1281a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: r */
    public /* synthetic */ InterfaceC3022e1 mo243r(InterfaceC2827q interfaceC2827q) {
        return m245m0(this.f1281a.flatMap(C3207f0.m205a(interfaceC2827q)));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3022e1 sequential() {
        return m245m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g sequential() {
        return C3166D0.m288m0(this.f1281a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ InterfaceC3022e1 skip(long j) {
        return m245m0(this.f1281a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ InterfaceC3022e1 sorted() {
        return m245m0(this.f1281a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1, p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator.InterfaceC2774c spliterator() {
        return C3220m.m187a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator spliterator() {
        return C3208g.m204a(this.f1281a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ long sum() {
        return this.f1281a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public C2810f summaryStatistics() {
        this.f1281a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: t */
    public /* synthetic */ InterfaceC3022e1 mo242t(C3209g0 c3209g0) {
        return m245m0(this.f1281a.filter(AbstractC3211h0.m200a(c3209g0)));
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    public /* synthetic */ long[] toArray() {
        return this.f1281a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g unordered() {
        return C3166D0.m288m0(this.f1281a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3022e1
    /* renamed from: y */
    public /* synthetic */ InterfaceC3022e1 mo241y(InterfaceC2829s interfaceC2829s) {
        return m245m0(this.f1281a.map(C3223n0.m180a(interfaceC2829s)));
    }
}
