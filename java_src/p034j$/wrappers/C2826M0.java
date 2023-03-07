package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2414a;
import p034j$.util.C2475h;
import p034j$.util.C2476i;
import p034j$.util.C2478k;
import p034j$.util.InterfaceC2485q;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2463o;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2466r;
import p034j$.util.function.InterfaceC2468t;
import p034j$.util.function.InterfaceC2471w;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2607U;
import p034j$.util.stream.InterfaceC2664e1;
import p034j$.util.stream.InterfaceC2674g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2826M0 implements InterfaceC2664e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1145a;

    private /* synthetic */ C2826M0(LongStream longStream) {
        this.f1145a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2664e1 m190n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C2828N0 ? ((C2828N0) longStream).f1147a : new C2826M0(longStream);
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: D */
    public /* synthetic */ long mo201D(long j, InterfaceC2463o interfaceC2463o) {
        return this.f1145a.reduce(j, C2848d0.m159a(interfaceC2463o));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: L */
    public /* synthetic */ boolean mo200L(C2858i0 c2858i0) {
        return this.f1145a.allMatch(AbstractC2860j0.m142a(c2858i0));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2607U mo199O(C2862k0 c2862k0) {
        return C2822K0.m209n0(this.f1145a.mapToDouble(c2862k0 == null ? null : c2862k0.f1181a));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo198Q(InterfaceC2466r interfaceC2466r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1145a.mapToObj(C2856h0.m149a(interfaceC2466r)));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: S */
    public /* synthetic */ boolean mo197S(C2858i0 c2858i0) {
        return this.f1145a.noneMatch(AbstractC2860j0.m142a(c2858i0));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: Z */
    public /* synthetic */ void mo196Z(InterfaceC2465q interfaceC2465q) {
        this.f1145a.forEachOrdered(C2852f0.m153a(interfaceC2465q));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ InterfaceC2607U asDoubleStream() {
        return C2822K0.m209n0(this.f1145a.asDoubleStream());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ C2476i average() {
        return AbstractC2414a.m613n(this.f1145a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1145a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2674g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1145a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ long count() {
        return this.f1145a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: d */
    public /* synthetic */ void mo195d(InterfaceC2465q interfaceC2465q) {
        this.f1145a.forEach(C2852f0.m153a(interfaceC2465q));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ InterfaceC2664e1 distinct() {
        return m190n0(this.f1145a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo194e0(C2866m0 c2866m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1145a.mapToInt(c2866m0 == null ? null : c2866m0.f1185a));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo193f0(InterfaceC2473y interfaceC2473y, InterfaceC2471w interfaceC2471w, BiConsumer biConsumer) {
        return this.f1145a.collect(C2892z0.m101a(interfaceC2473y), C2884v0.m110a(interfaceC2471w), C2875r.m119a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ C2478k findAny() {
        return AbstractC2414a.m611p(this.f1145a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ C2478k findFirst() {
        return AbstractC2414a.m611p(this.f1145a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: g */
    public /* synthetic */ C2478k mo192g(InterfaceC2463o interfaceC2463o) {
        return AbstractC2414a.m611p(this.f1145a.reduce(C2848d0.m159a(interfaceC2463o)));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ boolean isParallel() {
        return this.f1145a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2485q iterator() {
        return C2849e.m158a(this.f1145a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ Iterator iterator() {
        return this.f1145a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: k */
    public /* synthetic */ boolean mo191k(C2858i0 c2858i0) {
        return this.f1145a.anyMatch(AbstractC2860j0.m142a(c2858i0));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ InterfaceC2664e1 limit(long j) {
        return m190n0(this.f1145a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ C2478k max() {
        return AbstractC2414a.m611p(this.f1145a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ C2478k min() {
        return AbstractC2414a.m611p(this.f1145a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g onClose(Runnable runnable) {
        return C2814G0.m233n0(this.f1145a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2664e1 mo189p(InterfaceC2465q interfaceC2465q) {
        return m190n0(this.f1145a.peek(C2852f0.m153a(interfaceC2465q)));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2664e1 parallel() {
        return m190n0(this.f1145a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g parallel() {
        return C2814G0.m233n0(this.f1145a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2664e1 mo188s(InterfaceC2466r interfaceC2466r) {
        return m190n0(this.f1145a.flatMap(C2856h0.m149a(interfaceC2466r)));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2664e1 sequential() {
        return m190n0(this.f1145a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g sequential() {
        return C2814G0.m233n0(this.f1145a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ InterfaceC2664e1 skip(long j) {
        return m190n0(this.f1145a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ InterfaceC2664e1 sorted() {
        return m190n0(this.f1145a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s.InterfaceC2490c spliterator() {
        return C2865m.m135a(this.f1145a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s spliterator() {
        return C2853g.m152a(this.f1145a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ long sum() {
        return this.f1145a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public C2475h summaryStatistics() {
        this.f1145a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    public /* synthetic */ long[] toArray() {
        return this.f1145a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2664e1 mo187u(C2858i0 c2858i0) {
        return m190n0(this.f1145a.filter(AbstractC2860j0.m142a(c2858i0)));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g unordered() {
        return C2814G0.m233n0(this.f1145a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2664e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2664e1 mo186z(InterfaceC2468t interfaceC2468t) {
        return m190n0(this.f1145a.map(C2872p0.m123a(interfaceC2468t)));
    }
}
