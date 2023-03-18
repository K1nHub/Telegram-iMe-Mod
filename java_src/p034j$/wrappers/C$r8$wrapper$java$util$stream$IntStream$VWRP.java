package p034j$.wrappers;

import java.util.Iterator;
import p034j$.util.AbstractC2538a;
import p034j$.util.C2598g;
import p034j$.util.C2600i;
import p034j$.util.C2601j;
import p034j$.util.InterfaceC2606o;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2582j;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2586n;
import p034j$.util.function.InterfaceC2594v;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2731U;
import p034j$.util.stream.InterfaceC2788e1;
import p034j$.util.stream.InterfaceC2798g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1122a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1122a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1123a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2731U mo282A(C2961W c2961w) {
        return C2946K0.m209n0(this.f1122a.mapToDouble(c2961w == null ? null : c2961w.f1161a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo281C(C2959U c2959u) {
        return this.f1122a.allMatch(AbstractC2960V.m174a(c2959u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo280F(C2959U c2959u) {
        return this.f1122a.anyMatch(AbstractC2960V.m174a(c2959u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo279I(InterfaceC2584l interfaceC2584l) {
        this.f1122a.forEachOrdered(C2956Q.m179a(interfaceC2584l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo278J(InterfaceC2585m interfaceC2585m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1122a.mapToObj(C2958T.m177a(interfaceC2585m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo277N(int i, InterfaceC2582j interfaceC2582j) {
        return this.f1122a.reduce(i, C2953O.m183a(interfaceC2582j));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo276P(InterfaceC2585m interfaceC2585m) {
        return convert(this.f1122a.flatMap(C2958T.m177a(interfaceC2585m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo275U(InterfaceC2584l interfaceC2584l) {
        this.f1122a.forEach(C2956Q.m179a(interfaceC2584l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2601j mo274a0(InterfaceC2582j interfaceC2582j) {
        return AbstractC2538a.m612o(this.f1122a.reduce(C2953O.m183a(interfaceC2582j)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2731U asDoubleStream() {
        return C2946K0.m209n0(this.f1122a.asDoubleStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2788e1 asLongStream() {
        return C2950M0.m190n0(this.f1122a.asLongStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2600i average() {
        return AbstractC2538a.m613n(this.f1122a.average());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1122a.boxed());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo273c0(InterfaceC2584l interfaceC2584l) {
        return convert(this.f1122a.peek(C2956Q.m179a(interfaceC2584l)));
    }

    @Override // p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1122a.close();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1122a.count();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1122a.distinct());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC2788e1 mo272f(InterfaceC2586n interfaceC2586n) {
        return C2950M0.m190n0(this.f1122a.mapToLong(C2964Z.m170a(interfaceC2586n)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2601j findAny() {
        return AbstractC2538a.m612o(this.f1122a.findAny());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2601j findFirst() {
        return AbstractC2538a.m612o(this.f1122a.findFirst());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo271h(C2959U c2959u) {
        return convert(this.f1122a.filter(AbstractC2960V.m174a(c2959u)));
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ boolean isParallel() {
        return this.f1122a.isParallel();
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2606o.InterfaceC2607a iterator() {
        return C2969c.m163a(this.f1122a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ Iterator iterator() {
        return this.f1122a.iterator();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo270k0(InterfaceC2597y interfaceC2597y, InterfaceC2594v interfaceC2594v, BiConsumer biConsumer) {
        return this.f1122a.collect(C3016z0.m101a(interfaceC2597y), C3004t0.m114a(interfaceC2594v), C2999r.m119a(biConsumer));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1122a.limit(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2601j max() {
        return AbstractC2538a.m612o(this.f1122a.max());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2601j min() {
        return AbstractC2538a.m612o(this.f1122a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g onClose(Runnable runnable) {
        return C2938G0.m233n0(this.f1122a.onClose(runnable));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1122a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g parallel() {
        return C2938G0.m233n0(this.f1122a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo269q(C2966a0 c2966a0) {
        return convert(this.f1122a.map(AbstractC2968b0.m164a(c2966a0)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1122a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g sequential() {
        return C2938G0.m233n0(this.f1122a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1122a.skip(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1122a.sorted());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s.InterfaceC2613b spliterator() {
        return C2985k.m141a(this.f1122a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s spliterator() {
        return C2977g.m152a(this.f1122a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1122a.sum();
    }

    @Override // p034j$.util.stream.IntStream
    public C2598g summaryStatistics() {
        this.f1122a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1122a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g unordered() {
        return C2938G0.m233n0(this.f1122a.unordered());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo268v(C2959U c2959u) {
        return this.f1122a.noneMatch(AbstractC2960V.m174a(c2959u));
    }
}
