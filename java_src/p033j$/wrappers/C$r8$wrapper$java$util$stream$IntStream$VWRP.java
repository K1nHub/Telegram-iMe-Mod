package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2780a;
import p033j$.util.C2840g;
import p033j$.util.C2842i;
import p033j$.util.C2843j;
import p033j$.util.InterfaceC2848o;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2973U;
import p033j$.util.stream.InterfaceC3030e1;
import p033j$.util.stream.InterfaceC3040g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1211a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1211a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1212a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2973U mo285A(C3203W c3203w) {
        return C3188K0.m212n0(this.f1211a.mapToDouble(c3203w == null ? null : c3203w.f1250a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo284C(C3201U c3201u) {
        return this.f1211a.allMatch(AbstractC3202V.m177a(c3201u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo283F(C3201U c3201u) {
        return this.f1211a.anyMatch(AbstractC3202V.m177a(c3201u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo282I(InterfaceC2826l interfaceC2826l) {
        this.f1211a.forEachOrdered(C3198Q.m182a(interfaceC2826l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo281J(InterfaceC2827m interfaceC2827m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1211a.mapToObj(C3200T.m180a(interfaceC2827m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo280N(int i, InterfaceC2824j interfaceC2824j) {
        return this.f1211a.reduce(i, C3195O.m186a(interfaceC2824j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo279P(InterfaceC2827m interfaceC2827m) {
        return convert(this.f1211a.flatMap(C3200T.m180a(interfaceC2827m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo278U(InterfaceC2826l interfaceC2826l) {
        this.f1211a.forEach(C3198Q.m182a(interfaceC2826l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2843j mo277a0(InterfaceC2824j interfaceC2824j) {
        return AbstractC2780a.m614o(this.f1211a.reduce(C3195O.m186a(interfaceC2824j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2973U asDoubleStream() {
        return C3188K0.m212n0(this.f1211a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3030e1 asLongStream() {
        return C3192M0.m193n0(this.f1211a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2842i average() {
        return AbstractC2780a.m615n(this.f1211a.average());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1211a.boxed());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo276c0(InterfaceC2826l interfaceC2826l) {
        return convert(this.f1211a.peek(C3198Q.m182a(interfaceC2826l)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1211a.close();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1211a.count();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1211a.distinct());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC3030e1 mo275f(InterfaceC2828n interfaceC2828n) {
        return C3192M0.m193n0(this.f1211a.mapToLong(C3206Z.m173a(interfaceC2828n)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j findAny() {
        return AbstractC2780a.m614o(this.f1211a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j findFirst() {
        return AbstractC2780a.m614o(this.f1211a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo274h(C3201U c3201u) {
        return convert(this.f1211a.filter(AbstractC3202V.m177a(c3201u)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1211a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2848o.InterfaceC2849a iterator() {
        return C3211c.m166a(this.f1211a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1211a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo273k0(InterfaceC2839y interfaceC2839y, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer) {
        return this.f1211a.collect(C3258z0.m104a(interfaceC2839y), C3246t0.m117a(interfaceC2836v), C3241r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1211a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j max() {
        return AbstractC2780a.m614o(this.f1211a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j min() {
        return AbstractC2780a.m614o(this.f1211a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m236n0(this.f1211a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1211a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m236n0(this.f1211a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo272q(C3208a0 c3208a0) {
        return convert(this.f1211a.map(AbstractC3210b0.m167a(c3208a0)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1211a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m236n0(this.f1211a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1211a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1211a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s.InterfaceC2855b spliterator() {
        return C3227k.m144a(this.f1211a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m155a(this.f1211a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1211a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2840g summaryStatistics() {
        this.f1211a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1211a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m236n0(this.f1211a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo271v(C3201U c3201u) {
        return this.f1211a.noneMatch(AbstractC3202V.m177a(c3201u));
    }
}
