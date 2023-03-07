package p034j$.wrappers;

import java.util.Iterator;
import p034j$.util.AbstractC2414a;
import p034j$.util.C2474g;
import p034j$.util.C2476i;
import p034j$.util.C2477j;
import p034j$.util.InterfaceC2482o;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2458j;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2462n;
import p034j$.util.function.InterfaceC2470v;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2607U;
import p034j$.util.stream.InterfaceC2664e1;
import p034j$.util.stream.InterfaceC2674g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1117a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1117a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1118a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2607U mo282A(C2837W c2837w) {
        return C2822K0.m209n0(this.f1117a.mapToDouble(c2837w == null ? null : c2837w.f1156a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo281C(C2835U c2835u) {
        return this.f1117a.allMatch(AbstractC2836V.m174a(c2835u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo280F(C2835U c2835u) {
        return this.f1117a.anyMatch(AbstractC2836V.m174a(c2835u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo279I(InterfaceC2460l interfaceC2460l) {
        this.f1117a.forEachOrdered(C2832Q.m179a(interfaceC2460l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo278J(InterfaceC2461m interfaceC2461m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1117a.mapToObj(C2834T.m177a(interfaceC2461m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo277N(int i, InterfaceC2458j interfaceC2458j) {
        return this.f1117a.reduce(i, C2829O.m183a(interfaceC2458j));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo276P(InterfaceC2461m interfaceC2461m) {
        return convert(this.f1117a.flatMap(C2834T.m177a(interfaceC2461m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo275U(InterfaceC2460l interfaceC2460l) {
        this.f1117a.forEach(C2832Q.m179a(interfaceC2460l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2477j mo274a0(InterfaceC2458j interfaceC2458j) {
        return AbstractC2414a.m612o(this.f1117a.reduce(C2829O.m183a(interfaceC2458j)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2607U asDoubleStream() {
        return C2822K0.m209n0(this.f1117a.asDoubleStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2664e1 asLongStream() {
        return C2826M0.m190n0(this.f1117a.asLongStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2476i average() {
        return AbstractC2414a.m613n(this.f1117a.average());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1117a.boxed());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo273c0(InterfaceC2460l interfaceC2460l) {
        return convert(this.f1117a.peek(C2832Q.m179a(interfaceC2460l)));
    }

    @Override // p034j$.util.stream.InterfaceC2674g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1117a.close();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1117a.count();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1117a.distinct());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC2664e1 mo272f(InterfaceC2462n interfaceC2462n) {
        return C2826M0.m190n0(this.f1117a.mapToLong(C2840Z.m170a(interfaceC2462n)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2477j findAny() {
        return AbstractC2414a.m612o(this.f1117a.findAny());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2477j findFirst() {
        return AbstractC2414a.m612o(this.f1117a.findFirst());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo271h(C2835U c2835u) {
        return convert(this.f1117a.filter(AbstractC2836V.m174a(c2835u)));
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ boolean isParallel() {
        return this.f1117a.isParallel();
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2482o.InterfaceC2483a iterator() {
        return C2845c.m163a(this.f1117a.iterator());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ Iterator iterator() {
        return this.f1117a.iterator();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo270k0(InterfaceC2473y interfaceC2473y, InterfaceC2470v interfaceC2470v, BiConsumer biConsumer) {
        return this.f1117a.collect(C2892z0.m101a(interfaceC2473y), C2880t0.m114a(interfaceC2470v), C2875r.m119a(biConsumer));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1117a.limit(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2477j max() {
        return AbstractC2414a.m612o(this.f1117a.max());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2477j min() {
        return AbstractC2414a.m612o(this.f1117a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g onClose(Runnable runnable) {
        return C2814G0.m233n0(this.f1117a.onClose(runnable));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1117a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g parallel() {
        return C2814G0.m233n0(this.f1117a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo269q(C2842a0 c2842a0) {
        return convert(this.f1117a.map(AbstractC2844b0.m164a(c2842a0)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1117a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g sequential() {
        return C2814G0.m233n0(this.f1117a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1117a.skip(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1117a.sorted());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s.InterfaceC2489b spliterator() {
        return C2861k.m141a(this.f1117a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s spliterator() {
        return C2853g.m152a(this.f1117a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1117a.sum();
    }

    @Override // p034j$.util.stream.IntStream
    public C2474g summaryStatistics() {
        this.f1117a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1117a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g unordered() {
        return C2814G0.m233n0(this.f1117a.unordered());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo268v(C2835U c2835u) {
        return this.f1117a.noneMatch(AbstractC2836V.m174a(c2835u));
    }
}
