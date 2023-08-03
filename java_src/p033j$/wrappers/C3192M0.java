package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2780a;
import p033j$.util.C2841h;
import p033j$.util.C2842i;
import p033j$.util.C2844k;
import p033j$.util.InterfaceC2851q;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2829o;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2837w;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2973U;
import p033j$.util.stream.InterfaceC3030e1;
import p033j$.util.stream.InterfaceC3040g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3192M0 implements InterfaceC3030e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1239a;

    private /* synthetic */ C3192M0(LongStream longStream) {
        this.f1239a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3030e1 m193n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3194N0 ? ((C3194N0) longStream).f1241a : new C3192M0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: D */
    public /* synthetic */ long mo204D(long j, InterfaceC2829o interfaceC2829o) {
        return this.f1239a.reduce(j, C3214d0.m162a(interfaceC2829o));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: L */
    public /* synthetic */ boolean mo203L(C3224i0 c3224i0) {
        return this.f1239a.allMatch(AbstractC3226j0.m145a(c3224i0));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2973U mo202O(C3228k0 c3228k0) {
        return C3188K0.m212n0(this.f1239a.mapToDouble(c3228k0 == null ? null : c3228k0.f1275a));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo201Q(InterfaceC2832r interfaceC2832r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1239a.mapToObj(C3222h0.m152a(interfaceC2832r)));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: S */
    public /* synthetic */ boolean mo200S(C3224i0 c3224i0) {
        return this.f1239a.noneMatch(AbstractC3226j0.m145a(c3224i0));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: Z */
    public /* synthetic */ void mo199Z(InterfaceC2831q interfaceC2831q) {
        this.f1239a.forEachOrdered(C3218f0.m156a(interfaceC2831q));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ InterfaceC2973U asDoubleStream() {
        return C3188K0.m212n0(this.f1239a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ C2842i average() {
        return AbstractC2780a.m615n(this.f1239a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1239a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1239a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ long count() {
        return this.f1239a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: d */
    public /* synthetic */ void mo198d(InterfaceC2831q interfaceC2831q) {
        this.f1239a.forEach(C3218f0.m156a(interfaceC2831q));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ InterfaceC3030e1 distinct() {
        return m193n0(this.f1239a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo197e0(C3232m0 c3232m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1239a.mapToInt(c3232m0 == null ? null : c3232m0.f1279a));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo196f0(InterfaceC2839y interfaceC2839y, InterfaceC2837w interfaceC2837w, BiConsumer biConsumer) {
        return this.f1239a.collect(C3258z0.m104a(interfaceC2839y), C3250v0.m113a(interfaceC2837w), C3241r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ C2844k findAny() {
        return AbstractC2780a.m613p(this.f1239a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ C2844k findFirst() {
        return AbstractC2780a.m613p(this.f1239a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: g */
    public /* synthetic */ C2844k mo195g(InterfaceC2829o interfaceC2829o) {
        return AbstractC2780a.m613p(this.f1239a.reduce(C3214d0.m162a(interfaceC2829o)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1239a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2851q iterator() {
        return C3215e.m161a(this.f1239a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1239a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: k */
    public /* synthetic */ boolean mo194k(C3224i0 c3224i0) {
        return this.f1239a.anyMatch(AbstractC3226j0.m145a(c3224i0));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ InterfaceC3030e1 limit(long j) {
        return m193n0(this.f1239a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ C2844k max() {
        return AbstractC2780a.m613p(this.f1239a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ C2844k min() {
        return AbstractC2780a.m613p(this.f1239a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m236n0(this.f1239a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC3030e1 mo192p(InterfaceC2831q interfaceC2831q) {
        return m193n0(this.f1239a.peek(C3218f0.m156a(interfaceC2831q)));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3030e1 parallel() {
        return m193n0(this.f1239a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m236n0(this.f1239a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC3030e1 mo191s(InterfaceC2832r interfaceC2832r) {
        return m193n0(this.f1239a.flatMap(C3222h0.m152a(interfaceC2832r)));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3030e1 sequential() {
        return m193n0(this.f1239a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m236n0(this.f1239a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ InterfaceC3030e1 skip(long j) {
        return m193n0(this.f1239a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ InterfaceC3030e1 sorted() {
        return m193n0(this.f1239a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s.InterfaceC2856c spliterator() {
        return C3231m.m138a(this.f1239a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m155a(this.f1239a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ long sum() {
        return this.f1239a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public C2841h summaryStatistics() {
        this.f1239a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    public /* synthetic */ long[] toArray() {
        return this.f1239a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC3030e1 mo190u(C3224i0 c3224i0) {
        return m193n0(this.f1239a.filter(AbstractC3226j0.m145a(c3224i0)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m236n0(this.f1239a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3030e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC3030e1 mo189z(InterfaceC2834t interfaceC2834t) {
        return m193n0(this.f1239a.map(C3238p0.m126a(interfaceC2834t)));
    }
}
