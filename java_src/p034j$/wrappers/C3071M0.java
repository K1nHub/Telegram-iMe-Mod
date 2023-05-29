package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2659a;
import p034j$.util.C2720h;
import p034j$.util.C2721i;
import p034j$.util.C2723k;
import p034j$.util.InterfaceC2730q;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2708o;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.InterfaceC2713t;
import p034j$.util.function.InterfaceC2716w;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2852U;
import p034j$.util.stream.InterfaceC2909e1;
import p034j$.util.stream.InterfaceC2919g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3071M0 implements InterfaceC2909e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1154a;

    private /* synthetic */ C3071M0(LongStream longStream) {
        this.f1154a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2909e1 m175n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3073N0 ? ((C3073N0) longStream).f1156a : new C3071M0(longStream);
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: D */
    public /* synthetic */ long mo186D(long j, InterfaceC2708o interfaceC2708o) {
        return this.f1154a.reduce(j, C3093d0.m144a(interfaceC2708o));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: L */
    public /* synthetic */ boolean mo185L(C3103i0 c3103i0) {
        return this.f1154a.allMatch(AbstractC3105j0.m127a(c3103i0));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2852U mo184O(C3107k0 c3107k0) {
        return C3067K0.m194n0(this.f1154a.mapToDouble(c3107k0 == null ? null : c3107k0.f1190a));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo183Q(InterfaceC2711r interfaceC2711r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1154a.mapToObj(C3101h0.m134a(interfaceC2711r)));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: S */
    public /* synthetic */ boolean mo182S(C3103i0 c3103i0) {
        return this.f1154a.noneMatch(AbstractC3105j0.m127a(c3103i0));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: Z */
    public /* synthetic */ void mo181Z(InterfaceC2710q interfaceC2710q) {
        this.f1154a.forEachOrdered(C3097f0.m138a(interfaceC2710q));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ InterfaceC2852U asDoubleStream() {
        return C3067K0.m194n0(this.f1154a.asDoubleStream());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ C2721i average() {
        return AbstractC2659a.m597n(this.f1154a.average());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1154a.boxed());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1154a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ long count() {
        return this.f1154a.count();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: d */
    public /* synthetic */ void mo180d(InterfaceC2710q interfaceC2710q) {
        this.f1154a.forEach(C3097f0.m138a(interfaceC2710q));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ InterfaceC2909e1 distinct() {
        return m175n0(this.f1154a.distinct());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo179e0(C3111m0 c3111m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1154a.mapToInt(c3111m0 == null ? null : c3111m0.f1194a));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo178f0(InterfaceC2718y interfaceC2718y, InterfaceC2716w interfaceC2716w, BiConsumer biConsumer) {
        return this.f1154a.collect(C3137z0.m86a(interfaceC2718y), C3129v0.m95a(interfaceC2716w), C3120r.m104a(biConsumer));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ C2723k findAny() {
        return AbstractC2659a.m595p(this.f1154a.findAny());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ C2723k findFirst() {
        return AbstractC2659a.m595p(this.f1154a.findFirst());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: g */
    public /* synthetic */ C2723k mo177g(InterfaceC2708o interfaceC2708o) {
        return AbstractC2659a.m595p(this.f1154a.reduce(C3093d0.m144a(interfaceC2708o)));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ boolean isParallel() {
        return this.f1154a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1, p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2730q iterator() {
        return C3094e.m143a(this.f1154a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ Iterator iterator() {
        return this.f1154a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: k */
    public /* synthetic */ boolean mo176k(C3103i0 c3103i0) {
        return this.f1154a.anyMatch(AbstractC3105j0.m127a(c3103i0));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ InterfaceC2909e1 limit(long j) {
        return m175n0(this.f1154a.limit(j));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ C2723k max() {
        return AbstractC2659a.m595p(this.f1154a.max());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ C2723k min() {
        return AbstractC2659a.m595p(this.f1154a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g onClose(Runnable runnable) {
        return C3059G0.m218n0(this.f1154a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2909e1 mo174p(InterfaceC2710q interfaceC2710q) {
        return m175n0(this.f1154a.peek(C3097f0.m138a(interfaceC2710q)));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2909e1 parallel() {
        return m175n0(this.f1154a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g parallel() {
        return C3059G0.m218n0(this.f1154a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2909e1 mo173s(InterfaceC2711r interfaceC2711r) {
        return m175n0(this.f1154a.flatMap(C3101h0.m134a(interfaceC2711r)));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2909e1 sequential() {
        return m175n0(this.f1154a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g sequential() {
        return C3059G0.m218n0(this.f1154a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ InterfaceC2909e1 skip(long j) {
        return m175n0(this.f1154a.skip(j));
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ InterfaceC2909e1 sorted() {
        return m175n0(this.f1154a.sorted());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1, p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s.InterfaceC2735c spliterator() {
        return C3110m.m120a(this.f1154a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s spliterator() {
        return C3098g.m137a(this.f1154a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ long sum() {
        return this.f1154a.sum();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public C2720h summaryStatistics() {
        this.f1154a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    public /* synthetic */ long[] toArray() {
        return this.f1154a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2909e1 mo172u(C3103i0 c3103i0) {
        return m175n0(this.f1154a.filter(AbstractC3105j0.m127a(c3103i0)));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g unordered() {
        return C3059G0.m218n0(this.f1154a.unordered());
    }

    @Override // p034j$.util.stream.InterfaceC2909e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2909e1 mo171z(InterfaceC2713t interfaceC2713t) {
        return m175n0(this.f1154a.map(C3117p0.m108a(interfaceC2713t)));
    }
}
