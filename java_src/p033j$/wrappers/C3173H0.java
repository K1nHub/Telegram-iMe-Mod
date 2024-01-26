package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.DoubleStream;
import p033j$.util.AbstractC2838k;
import p033j$.util.C2807d;
import p033j$.util.C2834g;
import p033j$.util.InterfaceC2839l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2813d;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2816g;
import p033j$.util.function.InterfaceC2817h;
import p033j$.util.function.InterfaceC2829t;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2964U;
import p033j$.util.stream.InterfaceC3021e1;
import p033j$.util.stream.InterfaceC3031g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3173H0 implements InterfaceC2964U {

    /* renamed from: a */
    final /* synthetic */ DoubleStream f1277a;

    private /* synthetic */ C3173H0(DoubleStream doubleStream) {
        this.f1277a = doubleStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC2964U m269m0(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C3175I0 ? ((C3175I0) doubleStream).f1279a : new C3173H0(doubleStream);
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: F */
    public /* synthetic */ C2834g mo280F(InterfaceC2813d interfaceC2813d) {
        return AbstractC2838k.m599j(this.f1277a.reduce(C3241x.m164a(interfaceC2813d)));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: G */
    public /* synthetic */ Object mo279G(InterfaceC2833x interfaceC2833x, InterfaceC2829t interfaceC2829t, BiConsumer biConsumer) {
        return this.f1277a.collect(C3240w0.m165a(interfaceC2833x), C3226p0.m179a(interfaceC2829t), C3229r.m176a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: J */
    public /* synthetic */ double mo278J(double d, InterfaceC2813d interfaceC2813d) {
        return this.f1277a.reduce(d, C3241x.m164a(interfaceC2813d));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: L */
    public /* synthetic */ Stream mo277L(InterfaceC2816g interfaceC2816g) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.mapToObj(C3160B.m298a(interfaceC2816g)));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: Q */
    public /* synthetic */ IntStream mo276Q(C3166E c3166e) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1277a.mapToInt(c3166e == null ? null : c3166e.f1270a));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: X */
    public /* synthetic */ boolean mo275X(C3162C c3162c) {
        return this.f1277a.allMatch(AbstractC3164D.m293a(c3162c));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ C2834g average() {
        return AbstractC2838k.m599j(this.f1277a.average());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: b */
    public /* synthetic */ InterfaceC2964U mo274b(InterfaceC2815f interfaceC2815f) {
        return m269m0(this.f1277a.peek(C3245z.m159a(interfaceC2815f)));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1277a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1277a.close();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ long count() {
        return this.f1277a.count();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ InterfaceC2964U distinct() {
        return m269m0(this.f1277a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ C2834g findAny() {
        return AbstractC2838k.m599j(this.f1277a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ C2834g findFirst() {
        return AbstractC2838k.m599j(this.f1277a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: g0 */
    public /* synthetic */ boolean mo273g0(C3162C c3162c) {
        return this.f1277a.anyMatch(AbstractC3164D.m293a(c3162c));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: h0 */
    public /* synthetic */ boolean mo272h0(C3162C c3162c) {
        return this.f1277a.noneMatch(AbstractC3164D.m293a(c3162c));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ boolean isParallel() {
        return this.f1277a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC2964U, p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC2839l iterator() {
        return C3195a.m224a(this.f1277a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Iterator iterator() {
        return this.f1277a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: j */
    public /* synthetic */ void mo271j(InterfaceC2815f interfaceC2815f) {
        this.f1277a.forEach(C3245z.m159a(interfaceC2815f));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: k0 */
    public /* synthetic */ void mo270k0(InterfaceC2815f interfaceC2815f) {
        this.f1277a.forEachOrdered(C3245z.m159a(interfaceC2815f));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ InterfaceC2964U limit(long j) {
        return m269m0(this.f1277a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ C2834g max() {
        return AbstractC2838k.m599j(this.f1277a.max());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ C2834g min() {
        return AbstractC2838k.m599j(this.f1277a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g onClose(Runnable runnable) {
        return C3165D0.m292m0(this.f1277a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC2964U, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2964U parallel() {
        return m269m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g parallel() {
        return C3165D0.m292m0(this.f1277a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: q */
    public /* synthetic */ InterfaceC2964U mo268q(C3162C c3162c) {
        return m269m0(this.f1277a.filter(AbstractC3164D.m293a(c3162c)));
    }

    @Override // p033j$.util.stream.InterfaceC2964U, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2964U sequential() {
        return m269m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g sequential() {
        return C3165D0.m292m0(this.f1277a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ InterfaceC2964U skip(long j) {
        return m269m0(this.f1277a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ InterfaceC2964U sorted() {
        return m269m0(this.f1277a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC2964U, p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator.InterfaceC2771a spliterator() {
        return C3211i.m203a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator spliterator() {
        return C3207g.m208a(this.f1277a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ double sum() {
        return this.f1277a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public C2807d summaryStatistics() {
        this.f1277a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    public /* synthetic */ double[] toArray() {
        return this.f1277a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g unordered() {
        return C3165D0.m292m0(this.f1277a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: v */
    public /* synthetic */ InterfaceC2964U mo267v(InterfaceC2816g interfaceC2816g) {
        return m269m0(this.f1277a.flatMap(C3160B.m298a(interfaceC2816g)));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: w */
    public /* synthetic */ InterfaceC3021e1 mo266w(InterfaceC2817h interfaceC2817h) {
        return C3177J0.m249m0(this.f1277a.mapToLong(C3172H.m281a(interfaceC2817h)));
    }

    @Override // p033j$.util.stream.InterfaceC2964U
    /* renamed from: x */
    public /* synthetic */ InterfaceC2964U mo265x(C3174I c3174i) {
        return m269m0(this.f1277a.map(AbstractC3176J.m261a(c3174i)));
    }
}
