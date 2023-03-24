package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2552a;
import p034j$.util.C2613h;
import p034j$.util.C2614i;
import p034j$.util.C2616k;
import p034j$.util.InterfaceC2623q;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2601o;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.InterfaceC2606t;
import p034j$.util.function.InterfaceC2609w;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2745U;
import p034j$.util.stream.InterfaceC2802e1;
import p034j$.util.stream.InterfaceC2812g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2964M0 implements InterfaceC2802e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1151a;

    private /* synthetic */ C2964M0(LongStream longStream) {
        this.f1151a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2802e1 m189n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C2966N0 ? ((C2966N0) longStream).f1153a : new C2964M0(longStream);
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: D */
    public /* synthetic */ long mo200D(long j, InterfaceC2601o interfaceC2601o) {
        return this.f1151a.reduce(j, C2986d0.m158a(interfaceC2601o));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: L */
    public /* synthetic */ boolean mo199L(C2996i0 c2996i0) {
        return this.f1151a.allMatch(AbstractC2998j0.m141a(c2996i0));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2745U mo198O(C3000k0 c3000k0) {
        return C2960K0.m208n0(this.f1151a.mapToDouble(c3000k0 == null ? null : c3000k0.f1187a));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo197Q(InterfaceC2604r interfaceC2604r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1151a.mapToObj(C2994h0.m148a(interfaceC2604r)));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: S */
    public /* synthetic */ boolean mo196S(C2996i0 c2996i0) {
        return this.f1151a.noneMatch(AbstractC2998j0.m141a(c2996i0));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: Z */
    public /* synthetic */ void mo195Z(InterfaceC2603q interfaceC2603q) {
        this.f1151a.forEachOrdered(C2990f0.m152a(interfaceC2603q));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ InterfaceC2745U asDoubleStream() {
        return C2960K0.m208n0(this.f1151a.asDoubleStream());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ C2614i average() {
        return AbstractC2552a.m612n(this.f1151a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1151a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1151a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ long count() {
        return this.f1151a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: d */
    public /* synthetic */ void mo194d(InterfaceC2603q interfaceC2603q) {
        this.f1151a.forEach(C2990f0.m152a(interfaceC2603q));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ InterfaceC2802e1 distinct() {
        return m189n0(this.f1151a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo193e0(C3004m0 c3004m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1151a.mapToInt(c3004m0 == null ? null : c3004m0.f1191a));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo192f0(InterfaceC2611y interfaceC2611y, InterfaceC2609w interfaceC2609w, BiConsumer biConsumer) {
        return this.f1151a.collect(C3030z0.m100a(interfaceC2611y), C3022v0.m109a(interfaceC2609w), C3013r.m118a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ C2616k findAny() {
        return AbstractC2552a.m610p(this.f1151a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ C2616k findFirst() {
        return AbstractC2552a.m610p(this.f1151a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: g */
    public /* synthetic */ C2616k mo191g(InterfaceC2601o interfaceC2601o) {
        return AbstractC2552a.m610p(this.f1151a.reduce(C2986d0.m158a(interfaceC2601o)));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ boolean isParallel() {
        return this.f1151a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1, p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2623q iterator() {
        return C2987e.m157a(this.f1151a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ Iterator iterator() {
        return this.f1151a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: k */
    public /* synthetic */ boolean mo190k(C2996i0 c2996i0) {
        return this.f1151a.anyMatch(AbstractC2998j0.m141a(c2996i0));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ InterfaceC2802e1 limit(long j) {
        return m189n0(this.f1151a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ C2616k max() {
        return AbstractC2552a.m610p(this.f1151a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ C2616k min() {
        return AbstractC2552a.m610p(this.f1151a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g onClose(Runnable runnable) {
        return C2952G0.m232n0(this.f1151a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2802e1 mo188p(InterfaceC2603q interfaceC2603q) {
        return m189n0(this.f1151a.peek(C2990f0.m152a(interfaceC2603q)));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2802e1 parallel() {
        return m189n0(this.f1151a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g parallel() {
        return C2952G0.m232n0(this.f1151a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2802e1 mo187s(InterfaceC2604r interfaceC2604r) {
        return m189n0(this.f1151a.flatMap(C2994h0.m148a(interfaceC2604r)));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2802e1 sequential() {
        return m189n0(this.f1151a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g sequential() {
        return C2952G0.m232n0(this.f1151a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ InterfaceC2802e1 skip(long j) {
        return m189n0(this.f1151a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ InterfaceC2802e1 sorted() {
        return m189n0(this.f1151a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1, p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s.InterfaceC2628c spliterator() {
        return C3003m.m134a(this.f1151a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s spliterator() {
        return C2991g.m151a(this.f1151a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ long sum() {
        return this.f1151a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public C2613h summaryStatistics() {
        this.f1151a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    public /* synthetic */ long[] toArray() {
        return this.f1151a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2802e1 mo186u(C2996i0 c2996i0) {
        return m189n0(this.f1151a.filter(AbstractC2998j0.m141a(c2996i0)));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g unordered() {
        return C2952G0.m232n0(this.f1151a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2802e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2802e1 mo185z(InterfaceC2606t interfaceC2606t) {
        return m189n0(this.f1151a.map(C3010p0.m122a(interfaceC2606t)));
    }
}
