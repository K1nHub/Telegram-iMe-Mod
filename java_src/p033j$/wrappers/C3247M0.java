package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2835a;
import p033j$.util.C2896h;
import p033j$.util.C2897i;
import p033j$.util.C2899k;
import p033j$.util.InterfaceC2906q;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2884o;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.InterfaceC2889t;
import p033j$.util.function.InterfaceC2892w;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3028U;
import p033j$.util.stream.InterfaceC3085e1;
import p033j$.util.stream.InterfaceC3095g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3247M0 implements InterfaceC3085e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1240a;

    private /* synthetic */ C3247M0(LongStream longStream) {
        this.f1240a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3085e1 m193n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3249N0 ? ((C3249N0) longStream).f1242a : new C3247M0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: D */
    public /* synthetic */ long mo204D(long j, InterfaceC2884o interfaceC2884o) {
        return this.f1240a.reduce(j, C3269d0.m162a(interfaceC2884o));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: L */
    public /* synthetic */ boolean mo203L(C3279i0 c3279i0) {
        return this.f1240a.allMatch(AbstractC3281j0.m145a(c3279i0));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC3028U mo202O(C3283k0 c3283k0) {
        return C3243K0.m212n0(this.f1240a.mapToDouble(c3283k0 == null ? null : c3283k0.f1276a));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo201Q(InterfaceC2887r interfaceC2887r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1240a.mapToObj(C3277h0.m152a(interfaceC2887r)));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: S */
    public /* synthetic */ boolean mo200S(C3279i0 c3279i0) {
        return this.f1240a.noneMatch(AbstractC3281j0.m145a(c3279i0));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: Z */
    public /* synthetic */ void mo199Z(InterfaceC2886q interfaceC2886q) {
        this.f1240a.forEachOrdered(C3273f0.m156a(interfaceC2886q));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ InterfaceC3028U asDoubleStream() {
        return C3243K0.m212n0(this.f1240a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ C2897i average() {
        return AbstractC2835a.m615n(this.f1240a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1240a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1240a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ long count() {
        return this.f1240a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: d */
    public /* synthetic */ void mo198d(InterfaceC2886q interfaceC2886q) {
        this.f1240a.forEach(C3273f0.m156a(interfaceC2886q));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ InterfaceC3085e1 distinct() {
        return m193n0(this.f1240a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo197e0(C3287m0 c3287m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1240a.mapToInt(c3287m0 == null ? null : c3287m0.f1280a));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo196f0(InterfaceC2894y interfaceC2894y, InterfaceC2892w interfaceC2892w, BiConsumer biConsumer) {
        return this.f1240a.collect(C3313z0.m104a(interfaceC2894y), C3305v0.m113a(interfaceC2892w), C3296r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ C2899k findAny() {
        return AbstractC2835a.m613p(this.f1240a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ C2899k findFirst() {
        return AbstractC2835a.m613p(this.f1240a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: g */
    public /* synthetic */ C2899k mo195g(InterfaceC2884o interfaceC2884o) {
        return AbstractC2835a.m613p(this.f1240a.reduce(C3269d0.m162a(interfaceC2884o)));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ boolean isParallel() {
        return this.f1240a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1, p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2906q iterator() {
        return C3270e.m161a(this.f1240a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ Iterator iterator() {
        return this.f1240a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: k */
    public /* synthetic */ boolean mo194k(C3279i0 c3279i0) {
        return this.f1240a.anyMatch(AbstractC3281j0.m145a(c3279i0));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ InterfaceC3085e1 limit(long j) {
        return m193n0(this.f1240a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ C2899k max() {
        return AbstractC2835a.m613p(this.f1240a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ C2899k min() {
        return AbstractC2835a.m613p(this.f1240a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g onClose(Runnable runnable) {
        return C3235G0.m236n0(this.f1240a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC3085e1 mo192p(InterfaceC2886q interfaceC2886q) {
        return m193n0(this.f1240a.peek(C3273f0.m156a(interfaceC2886q)));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3085e1 parallel() {
        return m193n0(this.f1240a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g parallel() {
        return C3235G0.m236n0(this.f1240a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC3085e1 mo191s(InterfaceC2887r interfaceC2887r) {
        return m193n0(this.f1240a.flatMap(C3277h0.m152a(interfaceC2887r)));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3085e1 sequential() {
        return m193n0(this.f1240a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g sequential() {
        return C3235G0.m236n0(this.f1240a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ InterfaceC3085e1 skip(long j) {
        return m193n0(this.f1240a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ InterfaceC3085e1 sorted() {
        return m193n0(this.f1240a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1, p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s.InterfaceC2911c spliterator() {
        return C3286m.m138a(this.f1240a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s spliterator() {
        return C3274g.m155a(this.f1240a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ long sum() {
        return this.f1240a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public C2896h summaryStatistics() {
        this.f1240a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    public /* synthetic */ long[] toArray() {
        return this.f1240a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC3085e1 mo190u(C3279i0 c3279i0) {
        return m193n0(this.f1240a.filter(AbstractC3281j0.m145a(c3279i0)));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g unordered() {
        return C3235G0.m236n0(this.f1240a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3085e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC3085e1 mo189z(InterfaceC2889t interfaceC2889t) {
        return m193n0(this.f1240a.map(C3293p0.m126a(interfaceC2889t)));
    }
}
