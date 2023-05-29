package p034j$.wrappers;

import java.util.Iterator;
import p034j$.util.AbstractC2659a;
import p034j$.util.C2719g;
import p034j$.util.C2721i;
import p034j$.util.C2722j;
import p034j$.util.InterfaceC2727o;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2703j;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2707n;
import p034j$.util.function.InterfaceC2715v;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2852U;
import p034j$.util.stream.InterfaceC2909e1;
import p034j$.util.stream.InterfaceC2919g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1126a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1126a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1127a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2852U mo267A(C3082W c3082w) {
        return C3067K0.m194n0(this.f1126a.mapToDouble(c3082w == null ? null : c3082w.f1165a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo266C(C3080U c3080u) {
        return this.f1126a.allMatch(AbstractC3081V.m159a(c3080u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo265F(C3080U c3080u) {
        return this.f1126a.anyMatch(AbstractC3081V.m159a(c3080u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo264I(InterfaceC2705l interfaceC2705l) {
        this.f1126a.forEachOrdered(C3077Q.m164a(interfaceC2705l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo263J(InterfaceC2706m interfaceC2706m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1126a.mapToObj(C3079T.m162a(interfaceC2706m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo262N(int i, InterfaceC2703j interfaceC2703j) {
        return this.f1126a.reduce(i, C3074O.m168a(interfaceC2703j));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo261P(InterfaceC2706m interfaceC2706m) {
        return convert(this.f1126a.flatMap(C3079T.m162a(interfaceC2706m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo260U(InterfaceC2705l interfaceC2705l) {
        this.f1126a.forEach(C3077Q.m164a(interfaceC2705l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2722j mo259a0(InterfaceC2703j interfaceC2703j) {
        return AbstractC2659a.m596o(this.f1126a.reduce(C3074O.m168a(interfaceC2703j)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2852U asDoubleStream() {
        return C3067K0.m194n0(this.f1126a.asDoubleStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2909e1 asLongStream() {
        return C3071M0.m175n0(this.f1126a.asLongStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2721i average() {
        return AbstractC2659a.m597n(this.f1126a.average());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1126a.boxed());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo258c0(InterfaceC2705l interfaceC2705l) {
        return convert(this.f1126a.peek(C3077Q.m164a(interfaceC2705l)));
    }

    @Override // p034j$.util.stream.InterfaceC2919g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1126a.close();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1126a.count();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1126a.distinct());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC2909e1 mo257f(InterfaceC2707n interfaceC2707n) {
        return C3071M0.m175n0(this.f1126a.mapToLong(C3085Z.m155a(interfaceC2707n)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2722j findAny() {
        return AbstractC2659a.m596o(this.f1126a.findAny());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2722j findFirst() {
        return AbstractC2659a.m596o(this.f1126a.findFirst());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo256h(C3080U c3080u) {
        return convert(this.f1126a.filter(AbstractC3081V.m159a(c3080u)));
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ boolean isParallel() {
        return this.f1126a.isParallel();
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2727o.InterfaceC2728a iterator() {
        return C3090c.m148a(this.f1126a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ Iterator iterator() {
        return this.f1126a.iterator();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo255k0(InterfaceC2718y interfaceC2718y, InterfaceC2715v interfaceC2715v, BiConsumer biConsumer) {
        return this.f1126a.collect(C3137z0.m86a(interfaceC2718y), C3125t0.m99a(interfaceC2715v), C3120r.m104a(biConsumer));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1126a.limit(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2722j max() {
        return AbstractC2659a.m596o(this.f1126a.max());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2722j min() {
        return AbstractC2659a.m596o(this.f1126a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g onClose(Runnable runnable) {
        return C3059G0.m218n0(this.f1126a.onClose(runnable));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1126a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g parallel() {
        return C3059G0.m218n0(this.f1126a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo254q(C3087a0 c3087a0) {
        return convert(this.f1126a.map(AbstractC3089b0.m149a(c3087a0)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1126a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g sequential() {
        return C3059G0.m218n0(this.f1126a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1126a.skip(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1126a.sorted());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s.InterfaceC2734b spliterator() {
        return C3106k.m126a(this.f1126a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s spliterator() {
        return C3098g.m137a(this.f1126a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1126a.sum();
    }

    @Override // p034j$.util.stream.IntStream
    public C2719g summaryStatistics() {
        this.f1126a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1126a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g unordered() {
        return C3059G0.m218n0(this.f1126a.unordered());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo253v(C3080U c3080u) {
        return this.f1126a.noneMatch(AbstractC3081V.m159a(c3080u));
    }
}
