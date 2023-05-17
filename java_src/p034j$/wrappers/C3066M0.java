package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2654a;
import p034j$.util.C2715h;
import p034j$.util.C2716i;
import p034j$.util.C2718k;
import p034j$.util.InterfaceC2725q;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2703o;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.InterfaceC2708t;
import p034j$.util.function.InterfaceC2711w;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2847U;
import p034j$.util.stream.InterfaceC2904e1;
import p034j$.util.stream.InterfaceC2914g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3066M0 implements InterfaceC2904e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1154a;

    private /* synthetic */ C3066M0(LongStream longStream) {
        this.f1154a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2904e1 m175n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3068N0 ? ((C3068N0) longStream).f1156a : new C3066M0(longStream);
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: D */
    public /* synthetic */ long mo186D(long j, InterfaceC2703o interfaceC2703o) {
        return this.f1154a.reduce(j, C3088d0.m144a(interfaceC2703o));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: L */
    public /* synthetic */ boolean mo185L(C3098i0 c3098i0) {
        return this.f1154a.allMatch(AbstractC3100j0.m127a(c3098i0));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2847U mo184O(C3102k0 c3102k0) {
        return C3062K0.m194n0(this.f1154a.mapToDouble(c3102k0 == null ? null : c3102k0.f1190a));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo183Q(InterfaceC2706r interfaceC2706r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1154a.mapToObj(C3096h0.m134a(interfaceC2706r)));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: S */
    public /* synthetic */ boolean mo182S(C3098i0 c3098i0) {
        return this.f1154a.noneMatch(AbstractC3100j0.m127a(c3098i0));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: Z */
    public /* synthetic */ void mo181Z(InterfaceC2705q interfaceC2705q) {
        this.f1154a.forEachOrdered(C3092f0.m138a(interfaceC2705q));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ InterfaceC2847U asDoubleStream() {
        return C3062K0.m194n0(this.f1154a.asDoubleStream());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ C2716i average() {
        return AbstractC2654a.m597n(this.f1154a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1154a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1154a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ long count() {
        return this.f1154a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: d */
    public /* synthetic */ void mo180d(InterfaceC2705q interfaceC2705q) {
        this.f1154a.forEach(C3092f0.m138a(interfaceC2705q));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ InterfaceC2904e1 distinct() {
        return m175n0(this.f1154a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo179e0(C3106m0 c3106m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1154a.mapToInt(c3106m0 == null ? null : c3106m0.f1194a));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo178f0(InterfaceC2713y interfaceC2713y, InterfaceC2711w interfaceC2711w, BiConsumer biConsumer) {
        return this.f1154a.collect(C3132z0.m86a(interfaceC2713y), C3124v0.m95a(interfaceC2711w), C3115r.m104a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ C2718k findAny() {
        return AbstractC2654a.m595p(this.f1154a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ C2718k findFirst() {
        return AbstractC2654a.m595p(this.f1154a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: g */
    public /* synthetic */ C2718k mo177g(InterfaceC2703o interfaceC2703o) {
        return AbstractC2654a.m595p(this.f1154a.reduce(C3088d0.m144a(interfaceC2703o)));
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ boolean isParallel() {
        return this.f1154a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1, p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2725q iterator() {
        return C3089e.m143a(this.f1154a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ Iterator iterator() {
        return this.f1154a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: k */
    public /* synthetic */ boolean mo176k(C3098i0 c3098i0) {
        return this.f1154a.anyMatch(AbstractC3100j0.m127a(c3098i0));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ InterfaceC2904e1 limit(long j) {
        return m175n0(this.f1154a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ C2718k max() {
        return AbstractC2654a.m595p(this.f1154a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ C2718k min() {
        return AbstractC2654a.m595p(this.f1154a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g onClose(Runnable runnable) {
        return C3054G0.m218n0(this.f1154a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2904e1 mo174p(InterfaceC2705q interfaceC2705q) {
        return m175n0(this.f1154a.peek(C3092f0.m138a(interfaceC2705q)));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2904e1 parallel() {
        return m175n0(this.f1154a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g parallel() {
        return C3054G0.m218n0(this.f1154a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2904e1 mo173s(InterfaceC2706r interfaceC2706r) {
        return m175n0(this.f1154a.flatMap(C3096h0.m134a(interfaceC2706r)));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2904e1 sequential() {
        return m175n0(this.f1154a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g sequential() {
        return C3054G0.m218n0(this.f1154a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ InterfaceC2904e1 skip(long j) {
        return m175n0(this.f1154a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ InterfaceC2904e1 sorted() {
        return m175n0(this.f1154a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1, p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s.InterfaceC2730c spliterator() {
        return C3105m.m120a(this.f1154a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s spliterator() {
        return C3093g.m137a(this.f1154a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ long sum() {
        return this.f1154a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public C2715h summaryStatistics() {
        this.f1154a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    public /* synthetic */ long[] toArray() {
        return this.f1154a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2904e1 mo172u(C3098i0 c3098i0) {
        return m175n0(this.f1154a.filter(AbstractC3100j0.m127a(c3098i0)));
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g unordered() {
        return C3054G0.m218n0(this.f1154a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2904e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2904e1 mo171z(InterfaceC2708t interfaceC2708t) {
        return m175n0(this.f1154a.map(C3112p0.m108a(interfaceC2708t)));
    }
}
