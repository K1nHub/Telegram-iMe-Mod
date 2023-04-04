package p035j$.wrappers;

import java.util.Iterator;
import p035j$.util.AbstractC2628a;
import p035j$.util.C2688g;
import p035j$.util.C2690i;
import p035j$.util.C2691j;
import p035j$.util.InterfaceC2696o;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2672j;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2676n;
import p035j$.util.function.InterfaceC2684v;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.stream.IntStream;
import p035j$.util.stream.InterfaceC2821U;
import p035j$.util.stream.InterfaceC2878e1;
import p035j$.util.stream.InterfaceC2888g;
import p035j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1128a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1128a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1129a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2821U mo276A(C3051W c3051w) {
        return C3036K0.m203n0(this.f1128a.mapToDouble(c3051w == null ? null : c3051w.f1167a));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo275C(C3049U c3049u) {
        return this.f1128a.allMatch(AbstractC3050V.m168a(c3049u));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo274F(C3049U c3049u) {
        return this.f1128a.anyMatch(AbstractC3050V.m168a(c3049u));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo273I(InterfaceC2674l interfaceC2674l) {
        this.f1128a.forEachOrdered(C3046Q.m173a(interfaceC2674l));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo272J(InterfaceC2675m interfaceC2675m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1128a.mapToObj(C3048T.m171a(interfaceC2675m)));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo271N(int i, InterfaceC2672j interfaceC2672j) {
        return this.f1128a.reduce(i, C3043O.m177a(interfaceC2672j));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo270P(InterfaceC2675m interfaceC2675m) {
        return convert(this.f1128a.flatMap(C3048T.m171a(interfaceC2675m)));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo269U(InterfaceC2674l interfaceC2674l) {
        this.f1128a.forEach(C3046Q.m173a(interfaceC2674l));
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2691j mo268a0(InterfaceC2672j interfaceC2672j) {
        return AbstractC2628a.m606o(this.f1128a.reduce(C3043O.m177a(interfaceC2672j)));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2821U asDoubleStream() {
        return C3036K0.m203n0(this.f1128a.asDoubleStream());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2878e1 asLongStream() {
        return C3040M0.m184n0(this.f1128a.asLongStream());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ C2690i average() {
        return AbstractC2628a.m607n(this.f1128a.average());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1128a.boxed());
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo267c0(InterfaceC2674l interfaceC2674l) {
        return convert(this.f1128a.peek(C3046Q.m173a(interfaceC2674l)));
    }

    @Override // p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1128a.close();
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1128a.count();
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1128a.distinct());
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC2878e1 mo266f(InterfaceC2676n interfaceC2676n) {
        return C3040M0.m184n0(this.f1128a.mapToLong(C3054Z.m164a(interfaceC2676n)));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ C2691j findAny() {
        return AbstractC2628a.m606o(this.f1128a.findAny());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ C2691j findFirst() {
        return AbstractC2628a.m606o(this.f1128a.findFirst());
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo265h(C3049U c3049u) {
        return convert(this.f1128a.filter(AbstractC3050V.m168a(c3049u)));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ boolean isParallel() {
        return this.f1128a.isParallel();
    }

    @Override // p035j$.util.stream.IntStream, p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2696o.InterfaceC2697a iterator() {
        return C3059c.m157a(this.f1128a.iterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ Iterator iterator() {
        return this.f1128a.iterator();
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo264k0(InterfaceC2687y interfaceC2687y, InterfaceC2684v interfaceC2684v, BiConsumer biConsumer) {
        return this.f1128a.collect(C3106z0.m95a(interfaceC2687y), C3094t0.m108a(interfaceC2684v), C3089r.m113a(biConsumer));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1128a.limit(j));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ C2691j max() {
        return AbstractC2628a.m606o(this.f1128a.max());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ C2691j min() {
        return AbstractC2628a.m606o(this.f1128a.min());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g onClose(Runnable runnable) {
        return C3028G0.m227n0(this.f1128a.onClose(runnable));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1128a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g parallel() {
        return C3028G0.m227n0(this.f1128a.parallel());
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo263q(C3056a0 c3056a0) {
        return convert(this.f1128a.map(AbstractC3058b0.m158a(c3056a0)));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1128a.sequential());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g sequential() {
        return C3028G0.m227n0(this.f1128a.sequential());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1128a.skip(j));
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1128a.sorted());
    }

    @Override // p035j$.util.stream.IntStream, p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s.InterfaceC2703b spliterator() {
        return C3075k.m135a(this.f1128a.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s spliterator() {
        return C3067g.m146a(this.f1128a.spliterator());
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1128a.sum();
    }

    @Override // p035j$.util.stream.IntStream
    public C2688g summaryStatistics() {
        this.f1128a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p035j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1128a.toArray();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g unordered() {
        return C3028G0.m227n0(this.f1128a.unordered());
    }

    @Override // p035j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo262v(C3049U c3049u) {
        return this.f1128a.noneMatch(AbstractC3050V.m168a(c3049u));
    }
}
