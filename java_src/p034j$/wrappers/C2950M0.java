package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2538a;
import p034j$.util.C2599h;
import p034j$.util.C2600i;
import p034j$.util.C2602k;
import p034j$.util.InterfaceC2609q;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2587o;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.InterfaceC2592t;
import p034j$.util.function.InterfaceC2595w;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2731U;
import p034j$.util.stream.InterfaceC2788e1;
import p034j$.util.stream.InterfaceC2798g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2950M0 implements InterfaceC2788e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1150a;

    private /* synthetic */ C2950M0(LongStream longStream) {
        this.f1150a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2788e1 m190n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C2952N0 ? ((C2952N0) longStream).f1152a : new C2950M0(longStream);
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: D */
    public /* synthetic */ long mo201D(long j, InterfaceC2587o interfaceC2587o) {
        return this.f1150a.reduce(j, C2972d0.m159a(interfaceC2587o));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: L */
    public /* synthetic */ boolean mo200L(C2982i0 c2982i0) {
        return this.f1150a.allMatch(AbstractC2984j0.m142a(c2982i0));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2731U mo199O(C2986k0 c2986k0) {
        return C2946K0.m209n0(this.f1150a.mapToDouble(c2986k0 == null ? null : c2986k0.f1186a));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo198Q(InterfaceC2590r interfaceC2590r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1150a.mapToObj(C2980h0.m149a(interfaceC2590r)));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: S */
    public /* synthetic */ boolean mo197S(C2982i0 c2982i0) {
        return this.f1150a.noneMatch(AbstractC2984j0.m142a(c2982i0));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: Z */
    public /* synthetic */ void mo196Z(InterfaceC2589q interfaceC2589q) {
        this.f1150a.forEachOrdered(C2976f0.m153a(interfaceC2589q));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ InterfaceC2731U asDoubleStream() {
        return C2946K0.m209n0(this.f1150a.asDoubleStream());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ C2600i average() {
        return AbstractC2538a.m613n(this.f1150a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1150a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1150a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ long count() {
        return this.f1150a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: d */
    public /* synthetic */ void mo195d(InterfaceC2589q interfaceC2589q) {
        this.f1150a.forEach(C2976f0.m153a(interfaceC2589q));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ InterfaceC2788e1 distinct() {
        return m190n0(this.f1150a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo194e0(C2990m0 c2990m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1150a.mapToInt(c2990m0 == null ? null : c2990m0.f1190a));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo193f0(InterfaceC2597y interfaceC2597y, InterfaceC2595w interfaceC2595w, BiConsumer biConsumer) {
        return this.f1150a.collect(C3016z0.m101a(interfaceC2597y), C3008v0.m110a(interfaceC2595w), C2999r.m119a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ C2602k findAny() {
        return AbstractC2538a.m611p(this.f1150a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ C2602k findFirst() {
        return AbstractC2538a.m611p(this.f1150a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: g */
    public /* synthetic */ C2602k mo192g(InterfaceC2587o interfaceC2587o) {
        return AbstractC2538a.m611p(this.f1150a.reduce(C2972d0.m159a(interfaceC2587o)));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ boolean isParallel() {
        return this.f1150a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1, p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2609q iterator() {
        return C2973e.m158a(this.f1150a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ Iterator iterator() {
        return this.f1150a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: k */
    public /* synthetic */ boolean mo191k(C2982i0 c2982i0) {
        return this.f1150a.anyMatch(AbstractC2984j0.m142a(c2982i0));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ InterfaceC2788e1 limit(long j) {
        return m190n0(this.f1150a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ C2602k max() {
        return AbstractC2538a.m611p(this.f1150a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ C2602k min() {
        return AbstractC2538a.m611p(this.f1150a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g onClose(Runnable runnable) {
        return C2938G0.m233n0(this.f1150a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2788e1 mo189p(InterfaceC2589q interfaceC2589q) {
        return m190n0(this.f1150a.peek(C2976f0.m153a(interfaceC2589q)));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2788e1 parallel() {
        return m190n0(this.f1150a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g parallel() {
        return C2938G0.m233n0(this.f1150a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2788e1 mo188s(InterfaceC2590r interfaceC2590r) {
        return m190n0(this.f1150a.flatMap(C2980h0.m149a(interfaceC2590r)));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2788e1 sequential() {
        return m190n0(this.f1150a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g sequential() {
        return C2938G0.m233n0(this.f1150a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ InterfaceC2788e1 skip(long j) {
        return m190n0(this.f1150a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ InterfaceC2788e1 sorted() {
        return m190n0(this.f1150a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1, p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s.InterfaceC2614c spliterator() {
        return C2989m.m135a(this.f1150a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s spliterator() {
        return C2977g.m152a(this.f1150a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ long sum() {
        return this.f1150a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public C2599h summaryStatistics() {
        this.f1150a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    public /* synthetic */ long[] toArray() {
        return this.f1150a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2788e1 mo187u(C2982i0 c2982i0) {
        return m190n0(this.f1150a.filter(AbstractC2984j0.m142a(c2982i0)));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g unordered() {
        return C2938G0.m233n0(this.f1150a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2788e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2788e1 mo186z(InterfaceC2592t interfaceC2592t) {
        return m190n0(this.f1150a.map(C2996p0.m123a(interfaceC2592t)));
    }
}
