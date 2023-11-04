package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2843k;
import p033j$.util.C2812d;
import p033j$.util.C2839g;
import p033j$.util.InterfaceC2844l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2969U;
import p033j$.util.stream.InterfaceC3026e1;
import p033j$.util.stream.InterfaceC3036g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3178H0 implements InterfaceC2969U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1277a;

    private /* synthetic */ C3178H0(DoubleStream doubleStream) {
        this.f1277a = doubleStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC2969U m266m0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3180I0 ? ((C3180I0) doubleStream).f1279a : new C3178H0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: F */
    public /* synthetic */ C2839g mo277F(InterfaceC2818d interfaceC2818d) {
        return AbstractC2843k.m596j(this.f1277a.reduce(C3246x.m161a(interfaceC2818d)));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: G */
    public /* synthetic */ Object mo276G(InterfaceC2838x interfaceC2838x, InterfaceC2834t interfaceC2834t, BiConsumer biConsumer) {
        return this.f1277a.collect(C3245w0.m162a(interfaceC2838x), C3231p0.m176a(interfaceC2834t), C3234r.m173a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: J */
    public /* synthetic */ double mo275J(double d, InterfaceC2818d interfaceC2818d) {
        return this.f1277a.reduce(d, C3246x.m161a(interfaceC2818d));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: L */
    public /* synthetic */ Stream mo274L(InterfaceC2821g interfaceC2821g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.mapToObj(C3165B.m295a(interfaceC2821g)));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: Q */
    public /* synthetic */ IntStream mo273Q(C3171E c3171e) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1277a.mapToInt(c3171e == null ? null : c3171e.f1270a));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: X */
    public /* synthetic */ boolean mo272X(C3167C c3167c) {
        return this.f1277a.allMatch(AbstractC3169D.m290a(c3167c));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ C2839g average() {
        return AbstractC2843k.m596j(this.f1277a.average());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2969U mo271b(InterfaceC2820f interfaceC2820f) {
        return m266m0(this.f1277a.peek(C3250z.m156a(interfaceC2820f)));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1277a.close();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ long count() {
        return this.f1277a.count();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ InterfaceC2969U distinct() {
        return m266m0(this.f1277a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ C2839g findAny() {
        return AbstractC2843k.m596j(this.f1277a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ C2839g findFirst() {
        return AbstractC2843k.m596j(this.f1277a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: g0 */
    public /* synthetic */ boolean mo270g0(C3167C c3167c) {
        return this.f1277a.anyMatch(AbstractC3169D.m290a(c3167c));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo269h0(C3167C c3167c) {
        return this.f1277a.noneMatch(AbstractC3169D.m290a(c3167c));
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ boolean isParallel() {
        return this.f1277a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC2969U, p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC2844l iterator() {
        return C3200a.m221a(this.f1277a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Iterator iterator() {
        return this.f1277a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: j */
    public /* synthetic */ void mo268j(InterfaceC2820f interfaceC2820f) {
        this.f1277a.forEach(C3250z.m156a(interfaceC2820f));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: k0 */
    public /* synthetic */ void mo267k0(InterfaceC2820f interfaceC2820f) {
        this.f1277a.forEachOrdered(C3250z.m156a(interfaceC2820f));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ InterfaceC2969U limit(long j) {
        return m266m0(this.f1277a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ C2839g max() {
        return AbstractC2843k.m596j(this.f1277a.max());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ C2839g min() {
        return AbstractC2843k.m596j(this.f1277a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g onClose(Runnable runnable) {
        return C3170D0.m289m0(this.f1277a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC2969U, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2969U parallel() {
        return m266m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g parallel() {
        return C3170D0.m289m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: q */
    public /* synthetic */ InterfaceC2969U mo265q(C3167C c3167c) {
        return m266m0(this.f1277a.filter(AbstractC3169D.m290a(c3167c)));
    }

    @Override // p033j$.util.stream.InterfaceC2969U, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2969U sequential() {
        return m266m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g sequential() {
        return C3170D0.m289m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ InterfaceC2969U skip(long j) {
        return m266m0(this.f1277a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ InterfaceC2969U sorted() {
        return m266m0(this.f1277a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC2969U, p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator.InterfaceC2776a spliterator() {
        return C3216i.m200a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator spliterator() {
        return C3212g.m205a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ double sum() {
        return this.f1277a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public C2812d summaryStatistics() {
        this.f1277a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    public /* synthetic */ double[] toArray() {
        return this.f1277a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g unordered() {
        return C3170D0.m289m0(this.f1277a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: v */
    public /* synthetic */ InterfaceC2969U mo264v(InterfaceC2821g interfaceC2821g) {
        return m266m0(this.f1277a.flatMap(C3165B.m295a(interfaceC2821g)));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: w */
    public /* synthetic */ InterfaceC3026e1 mo263w(InterfaceC2822h interfaceC2822h) {
        return C3182J0.m246m0(this.f1277a.mapToLong(C3177H.m278a(interfaceC2822h)));
    }

    @Override // p033j$.util.stream.InterfaceC2969U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2969U mo262x(C3179I c3179i) {
        return m266m0(this.f1277a.map(AbstractC3181J.m258a(c3179i)));
    }
}
