package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2835a;
import p033j$.util.C2895g;
import p033j$.util.C2897i;
import p033j$.util.C2898j;
import p033j$.util.InterfaceC2903o;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2879j;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2883n;
import p033j$.util.function.InterfaceC2891v;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3028U;
import p033j$.util.stream.InterfaceC3085e1;
import p033j$.util.stream.InterfaceC3095g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1212a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1212a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1213a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC3028U mo285A(C3258W c3258w) {
        return C3243K0.m212n0(this.f1212a.mapToDouble(c3258w == null ? null : c3258w.f1251a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo284C(C3256U c3256u) {
        return this.f1212a.allMatch(AbstractC3257V.m177a(c3256u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo283F(C3256U c3256u) {
        return this.f1212a.anyMatch(AbstractC3257V.m177a(c3256u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo282I(InterfaceC2881l interfaceC2881l) {
        this.f1212a.forEachOrdered(C3253Q.m182a(interfaceC2881l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo281J(InterfaceC2882m interfaceC2882m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1212a.mapToObj(C3255T.m180a(interfaceC2882m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo280N(int i, InterfaceC2879j interfaceC2879j) {
        return this.f1212a.reduce(i, C3250O.m186a(interfaceC2879j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo279P(InterfaceC2882m interfaceC2882m) {
        return convert(this.f1212a.flatMap(C3255T.m180a(interfaceC2882m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo278U(InterfaceC2881l interfaceC2881l) {
        this.f1212a.forEach(C3253Q.m182a(interfaceC2881l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2898j mo277a0(InterfaceC2879j interfaceC2879j) {
        return AbstractC2835a.m614o(this.f1212a.reduce(C3250O.m186a(interfaceC2879j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3028U asDoubleStream() {
        return C3243K0.m212n0(this.f1212a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3085e1 asLongStream() {
        return C3247M0.m193n0(this.f1212a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2897i average() {
        return AbstractC2835a.m615n(this.f1212a.average());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1212a.boxed());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo276c0(InterfaceC2881l interfaceC2881l) {
        return convert(this.f1212a.peek(C3253Q.m182a(interfaceC2881l)));
    }

    @Override // p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1212a.close();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1212a.count();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1212a.distinct());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC3085e1 mo275f(InterfaceC2883n interfaceC2883n) {
        return C3247M0.m193n0(this.f1212a.mapToLong(C3261Z.m173a(interfaceC2883n)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2898j findAny() {
        return AbstractC2835a.m614o(this.f1212a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2898j findFirst() {
        return AbstractC2835a.m614o(this.f1212a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo274h(C3256U c3256u) {
        return convert(this.f1212a.filter(AbstractC3257V.m177a(c3256u)));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ boolean isParallel() {
        return this.f1212a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2903o.InterfaceC2904a iterator() {
        return C3266c.m166a(this.f1212a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ Iterator iterator() {
        return this.f1212a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo273k0(InterfaceC2894y interfaceC2894y, InterfaceC2891v interfaceC2891v, BiConsumer biConsumer) {
        return this.f1212a.collect(C3313z0.m104a(interfaceC2894y), C3301t0.m117a(interfaceC2891v), C3296r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1212a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2898j max() {
        return AbstractC2835a.m614o(this.f1212a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2898j min() {
        return AbstractC2835a.m614o(this.f1212a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g onClose(Runnable runnable) {
        return C3235G0.m236n0(this.f1212a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1212a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g parallel() {
        return C3235G0.m236n0(this.f1212a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo272q(C3263a0 c3263a0) {
        return convert(this.f1212a.map(AbstractC3265b0.m167a(c3263a0)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1212a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g sequential() {
        return C3235G0.m236n0(this.f1212a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1212a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1212a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s.InterfaceC2910b spliterator() {
        return C3282k.m144a(this.f1212a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s spliterator() {
        return C3274g.m155a(this.f1212a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1212a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2895g summaryStatistics() {
        this.f1212a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1212a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g unordered() {
        return C3235G0.m236n0(this.f1212a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo271v(C3256U c3256u) {
        return this.f1212a.noneMatch(AbstractC3257V.m177a(c3256u));
    }
}
