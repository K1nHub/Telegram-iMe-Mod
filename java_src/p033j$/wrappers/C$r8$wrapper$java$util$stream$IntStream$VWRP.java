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
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1208a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1208a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1209a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2973U mo267A(C3203W c3203w) {
        return C3188K0.m194n0(this.f1208a.mapToDouble(c3203w == null ? null : c3203w.f1247a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo266C(C3201U c3201u) {
        return this.f1208a.allMatch(AbstractC3202V.m159a(c3201u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo265F(C3201U c3201u) {
        return this.f1208a.anyMatch(AbstractC3202V.m159a(c3201u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo264I(InterfaceC2826l interfaceC2826l) {
        this.f1208a.forEachOrdered(C3198Q.m164a(interfaceC2826l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo263J(InterfaceC2827m interfaceC2827m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1208a.mapToObj(C3200T.m162a(interfaceC2827m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo262N(int i, InterfaceC2824j interfaceC2824j) {
        return this.f1208a.reduce(i, C3195O.m168a(interfaceC2824j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo261P(InterfaceC2827m interfaceC2827m) {
        return convert(this.f1208a.flatMap(C3200T.m162a(interfaceC2827m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo260U(InterfaceC2826l interfaceC2826l) {
        this.f1208a.forEach(C3198Q.m164a(interfaceC2826l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2843j mo259a0(InterfaceC2824j interfaceC2824j) {
        return AbstractC2780a.m596o(this.f1208a.reduce(C3195O.m168a(interfaceC2824j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2973U asDoubleStream() {
        return C3188K0.m194n0(this.f1208a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3030e1 asLongStream() {
        return C3192M0.m175n0(this.f1208a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2842i average() {
        return AbstractC2780a.m597n(this.f1208a.average());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1208a.boxed());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo258c0(InterfaceC2826l interfaceC2826l) {
        return convert(this.f1208a.peek(C3198Q.m164a(interfaceC2826l)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1208a.close();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1208a.count();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1208a.distinct());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC3030e1 mo257f(InterfaceC2828n interfaceC2828n) {
        return C3192M0.m175n0(this.f1208a.mapToLong(C3206Z.m155a(interfaceC2828n)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j findAny() {
        return AbstractC2780a.m596o(this.f1208a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j findFirst() {
        return AbstractC2780a.m596o(this.f1208a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo256h(C3201U c3201u) {
        return convert(this.f1208a.filter(AbstractC3202V.m159a(c3201u)));
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1208a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2848o.InterfaceC2849a iterator() {
        return C3211c.m148a(this.f1208a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1208a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo255k0(InterfaceC2839y interfaceC2839y, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer) {
        return this.f1208a.collect(C3258z0.m86a(interfaceC2839y), C3246t0.m99a(interfaceC2836v), C3241r.m104a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1208a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j max() {
        return AbstractC2780a.m596o(this.f1208a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2843j min() {
        return AbstractC2780a.m596o(this.f1208a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return C3180G0.m218n0(this.f1208a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1208a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return C3180G0.m218n0(this.f1208a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo254q(C3208a0 c3208a0) {
        return convert(this.f1208a.map(AbstractC3210b0.m149a(c3208a0)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1208a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return C3180G0.m218n0(this.f1208a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1208a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1208a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s.InterfaceC2855b spliterator() {
        return C3227k.m126a(this.f1208a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m137a(this.f1208a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1208a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2840g summaryStatistics() {
        this.f1208a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1208a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return C3180G0.m218n0(this.f1208a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo253v(C3201U c3201u) {
        return this.f1208a.noneMatch(AbstractC3202V.m159a(c3201u));
    }
}
