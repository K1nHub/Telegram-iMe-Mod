package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2615a;
import p034j$.util.C2676h;
import p034j$.util.C2677i;
import p034j$.util.C2679k;
import p034j$.util.InterfaceC2686q;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2664o;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.InterfaceC2669t;
import p034j$.util.function.InterfaceC2672w;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2808U;
import p034j$.util.stream.InterfaceC2865e1;
import p034j$.util.stream.InterfaceC2875g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3027M0 implements InterfaceC2865e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1151a;

    private /* synthetic */ C3027M0(LongStream longStream) {
        this.f1151a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2865e1 m170n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3029N0 ? ((C3029N0) longStream).f1153a : new C3027M0(longStream);
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: D */
    public /* synthetic */ long mo181D(long j, InterfaceC2664o interfaceC2664o) {
        return this.f1151a.reduce(j, C3049d0.m139a(interfaceC2664o));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: L */
    public /* synthetic */ boolean mo180L(C3059i0 c3059i0) {
        return this.f1151a.allMatch(AbstractC3061j0.m122a(c3059i0));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2808U mo179O(C3063k0 c3063k0) {
        return C3023K0.m189n0(this.f1151a.mapToDouble(c3063k0 == null ? null : c3063k0.f1187a));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo178Q(InterfaceC2667r interfaceC2667r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1151a.mapToObj(C3057h0.m129a(interfaceC2667r)));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: S */
    public /* synthetic */ boolean mo177S(C3059i0 c3059i0) {
        return this.f1151a.noneMatch(AbstractC3061j0.m122a(c3059i0));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: Z */
    public /* synthetic */ void mo176Z(InterfaceC2666q interfaceC2666q) {
        this.f1151a.forEachOrdered(C3053f0.m133a(interfaceC2666q));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ InterfaceC2808U asDoubleStream() {
        return C3023K0.m189n0(this.f1151a.asDoubleStream());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ C2677i average() {
        return AbstractC2615a.m593n(this.f1151a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1151a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1151a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ long count() {
        return this.f1151a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: d */
    public /* synthetic */ void mo175d(InterfaceC2666q interfaceC2666q) {
        this.f1151a.forEach(C3053f0.m133a(interfaceC2666q));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ InterfaceC2865e1 distinct() {
        return m170n0(this.f1151a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo174e0(C3067m0 c3067m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1151a.mapToInt(c3067m0 == null ? null : c3067m0.f1191a));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo173f0(InterfaceC2674y interfaceC2674y, InterfaceC2672w interfaceC2672w, BiConsumer biConsumer) {
        return this.f1151a.collect(C3093z0.m81a(interfaceC2674y), C3085v0.m90a(interfaceC2672w), C3076r.m99a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ C2679k findAny() {
        return AbstractC2615a.m591p(this.f1151a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ C2679k findFirst() {
        return AbstractC2615a.m591p(this.f1151a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: g */
    public /* synthetic */ C2679k mo172g(InterfaceC2664o interfaceC2664o) {
        return AbstractC2615a.m591p(this.f1151a.reduce(C3049d0.m139a(interfaceC2664o)));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ boolean isParallel() {
        return this.f1151a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1, p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2686q iterator() {
        return C3050e.m138a(this.f1151a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ Iterator iterator() {
        return this.f1151a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: k */
    public /* synthetic */ boolean mo171k(C3059i0 c3059i0) {
        return this.f1151a.anyMatch(AbstractC3061j0.m122a(c3059i0));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ InterfaceC2865e1 limit(long j) {
        return m170n0(this.f1151a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ C2679k max() {
        return AbstractC2615a.m591p(this.f1151a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ C2679k min() {
        return AbstractC2615a.m591p(this.f1151a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g onClose(Runnable runnable) {
        return C3015G0.m213n0(this.f1151a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2865e1 mo169p(InterfaceC2666q interfaceC2666q) {
        return m170n0(this.f1151a.peek(C3053f0.m133a(interfaceC2666q)));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2865e1 parallel() {
        return m170n0(this.f1151a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g parallel() {
        return C3015G0.m213n0(this.f1151a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2865e1 mo168s(InterfaceC2667r interfaceC2667r) {
        return m170n0(this.f1151a.flatMap(C3057h0.m129a(interfaceC2667r)));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2865e1 sequential() {
        return m170n0(this.f1151a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g sequential() {
        return C3015G0.m213n0(this.f1151a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ InterfaceC2865e1 skip(long j) {
        return m170n0(this.f1151a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ InterfaceC2865e1 sorted() {
        return m170n0(this.f1151a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1, p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s.InterfaceC2691c spliterator() {
        return C3066m.m115a(this.f1151a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s spliterator() {
        return C3054g.m132a(this.f1151a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ long sum() {
        return this.f1151a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public C2676h summaryStatistics() {
        this.f1151a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    public /* synthetic */ long[] toArray() {
        return this.f1151a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2865e1 mo167u(C3059i0 c3059i0) {
        return m170n0(this.f1151a.filter(AbstractC3061j0.m122a(c3059i0)));
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g unordered() {
        return C3015G0.m213n0(this.f1151a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2865e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2865e1 mo166z(InterfaceC2669t interfaceC2669t) {
        return m170n0(this.f1151a.map(C3073p0.m103a(interfaceC2669t)));
    }
}
