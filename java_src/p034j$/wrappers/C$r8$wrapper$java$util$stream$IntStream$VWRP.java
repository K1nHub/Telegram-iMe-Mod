package p034j$.wrappers;

import java.util.Iterator;
import p034j$.util.AbstractC2654a;
import p034j$.util.C2714g;
import p034j$.util.C2716i;
import p034j$.util.C2717j;
import p034j$.util.InterfaceC2722o;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2698j;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2702n;
import p034j$.util.function.InterfaceC2710v;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2847U;
import p034j$.util.stream.InterfaceC2904e1;
import p034j$.util.stream.InterfaceC2914g;
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
    public /* synthetic */ InterfaceC2847U mo267A(C3077W c3077w) {
        return C3062K0.m194n0(this.f1126a.mapToDouble(c3077w == null ? null : c3077w.f1165a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo266C(C3075U c3075u) {
        return this.f1126a.allMatch(AbstractC3076V.m159a(c3075u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo265F(C3075U c3075u) {
        return this.f1126a.anyMatch(AbstractC3076V.m159a(c3075u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo264I(InterfaceC2700l interfaceC2700l) {
        this.f1126a.forEachOrdered(C3072Q.m164a(interfaceC2700l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo263J(InterfaceC2701m interfaceC2701m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1126a.mapToObj(C3074T.m162a(interfaceC2701m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo262N(int i, InterfaceC2698j interfaceC2698j) {
        return this.f1126a.reduce(i, C3069O.m168a(interfaceC2698j));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo261P(InterfaceC2701m interfaceC2701m) {
        return convert(this.f1126a.flatMap(C3074T.m162a(interfaceC2701m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo260U(InterfaceC2700l interfaceC2700l) {
        this.f1126a.forEach(C3072Q.m164a(interfaceC2700l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2717j mo259a0(InterfaceC2698j interfaceC2698j) {
        return AbstractC2654a.m596o(this.f1126a.reduce(C3069O.m168a(interfaceC2698j)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2847U asDoubleStream() {
        return C3062K0.m194n0(this.f1126a.asDoubleStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2904e1 asLongStream() {
        return C3066M0.m175n0(this.f1126a.asLongStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2716i average() {
        return AbstractC2654a.m597n(this.f1126a.average());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1126a.boxed());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo258c0(InterfaceC2700l interfaceC2700l) {
        return convert(this.f1126a.peek(C3072Q.m164a(interfaceC2700l)));
    }

    @Override // p034j$.util.stream.InterfaceC2914g, java.lang.AutoCloseable
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
    public /* synthetic */ InterfaceC2904e1 mo257f(InterfaceC2702n interfaceC2702n) {
        return C3066M0.m175n0(this.f1126a.mapToLong(C3080Z.m155a(interfaceC2702n)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2717j findAny() {
        return AbstractC2654a.m596o(this.f1126a.findAny());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2717j findFirst() {
        return AbstractC2654a.m596o(this.f1126a.findFirst());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo256h(C3075U c3075u) {
        return convert(this.f1126a.filter(AbstractC3076V.m159a(c3075u)));
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ boolean isParallel() {
        return this.f1126a.isParallel();
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2722o.InterfaceC2723a iterator() {
        return C3085c.m148a(this.f1126a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ Iterator iterator() {
        return this.f1126a.iterator();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo255k0(InterfaceC2713y interfaceC2713y, InterfaceC2710v interfaceC2710v, BiConsumer biConsumer) {
        return this.f1126a.collect(C3132z0.m86a(interfaceC2713y), C3120t0.m99a(interfaceC2710v), C3115r.m104a(biConsumer));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1126a.limit(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2717j max() {
        return AbstractC2654a.m596o(this.f1126a.max());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2717j min() {
        return AbstractC2654a.m596o(this.f1126a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g onClose(Runnable runnable) {
        return C3054G0.m218n0(this.f1126a.onClose(runnable));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1126a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g parallel() {
        return C3054G0.m218n0(this.f1126a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo254q(C3082a0 c3082a0) {
        return convert(this.f1126a.map(AbstractC3084b0.m149a(c3082a0)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1126a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g sequential() {
        return C3054G0.m218n0(this.f1126a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1126a.skip(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1126a.sorted());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s.InterfaceC2729b spliterator() {
        return C3101k.m126a(this.f1126a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s spliterator() {
        return C3093g.m137a(this.f1126a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1126a.sum();
    }

    @Override // p034j$.util.stream.IntStream
    public C2714g summaryStatistics() {
        this.f1126a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1126a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g unordered() {
        return C3054G0.m218n0(this.f1126a.unordered());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo253v(C3075U c3075u) {
        return this.f1126a.noneMatch(AbstractC3076V.m159a(c3075u));
    }
}
