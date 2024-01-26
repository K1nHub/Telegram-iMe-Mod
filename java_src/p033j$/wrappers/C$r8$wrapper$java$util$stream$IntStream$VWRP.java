package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2838k;
import p033j$.util.C2808e;
import p033j$.util.C2834g;
import p033j$.util.C2835h;
import p033j$.util.InterfaceC2841n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2819j;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2822m;
import p033j$.util.function.InterfaceC2830u;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC2964U;
import p033j$.util.stream.InterfaceC3021e1;
import p033j$.util.stream.InterfaceC3031g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1259a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1259a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1260a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: B */
    public /* synthetic */ boolean mo334B(C3187S c3187s) {
        return this.f1259a.allMatch(AbstractC3188T.m232a(c3187s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: E */
    public /* synthetic */ boolean mo333E(C3187S c3187s) {
        return this.f1259a.anyMatch(AbstractC3188T.m232a(c3187s));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: H */
    public /* synthetic */ void mo332H(InterfaceC2821l interfaceC2821l) {
        this.f1259a.forEachOrdered(C3184O.m237a(interfaceC2821l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ Stream mo331I(IntFunction intFunction) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.mapToObj(C3186Q.m235a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: M */
    public /* synthetic */ int mo330M(int i, InterfaceC2819j interfaceC2819j) {
        return this.f1259a.reduce(i, C3182M.m240a(interfaceC2819j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: O */
    public /* synthetic */ IntStream mo329O(IntFunction intFunction) {
        return convert(this.f1259a.flatMap(C3186Q.m235a(intFunction)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: T */
    public /* synthetic */ void mo328T(InterfaceC2821l interfaceC2821l) {
        this.f1259a.forEach(C3184O.m237a(interfaceC2821l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: Z */
    public /* synthetic */ C2835h mo327Z(InterfaceC2819j interfaceC2819j) {
        return AbstractC2838k.m598k(this.f1259a.reduce(C3182M.m240a(interfaceC2819j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2964U asDoubleStream() {
        return C3173H0.m269m0(this.f1259a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3021e1 asLongStream() {
        return C3177J0.m249m0(this.f1259a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2834g average() {
        return AbstractC2838k.m599j(this.f1259a.average());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: b0 */
    public /* synthetic */ IntStream mo326b0(InterfaceC2821l interfaceC2821l) {
        return convert(this.f1259a.peek(C3184O.m237a(interfaceC2821l)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1259a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1259a.close();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1259a.count();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1259a.distinct());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC3021e1 mo325f(InterfaceC2822m interfaceC2822m) {
        return C3177J0.m249m0(this.f1259a.mapToLong(C3192X.m228a(interfaceC2822m)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2835h findAny() {
        return AbstractC2838k.m598k(this.f1259a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2835h findFirst() {
        return AbstractC2838k.m598k(this.f1259a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo324h(C3187S c3187s) {
        return convert(this.f1259a.filter(AbstractC3188T.m232a(c3187s)));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ boolean isParallel() {
        return this.f1259a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC2841n.InterfaceC2842a iterator() {
        return C3199c.m219a(this.f1259a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Iterator iterator() {
        return this.f1259a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: j0 */
    public /* synthetic */ Object mo323j0(InterfaceC2833x interfaceC2833x, InterfaceC2830u interfaceC2830u, BiConsumer biConsumer) {
        return this.f1259a.collect(C3240w0.m165a(interfaceC2833x), C3230r0.m175a(interfaceC2830u), C3229r.m176a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1259a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2835h max() {
        return AbstractC2838k.m598k(this.f1259a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2835h min() {
        return AbstractC2838k.m598k(this.f1259a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g onClose(Runnable runnable) {
        return C3165D0.m292m0(this.f1259a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: p */
    public /* synthetic */ IntStream mo322p(C3193Y c3193y) {
        return convert(this.f1259a.map(AbstractC3194Z.m225a(c3193y)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g parallel() {
        return C3165D0.m292m0(this.f1259a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g sequential() {
        return C3165D0.m292m0(this.f1259a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1259a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1259a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator.InterfaceC2772b spliterator() {
        return C3215k.m197a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator spliterator() {
        return C3207g.m208a(this.f1259a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1259a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2808e summaryStatistics() {
        this.f1259a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1259a.toArray();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: u */
    public /* synthetic */ boolean mo321u(C3187S c3187s) {
        return this.f1259a.noneMatch(AbstractC3188T.m232a(c3187s));
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g unordered() {
        return C3165D0.m292m0(this.f1259a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: z */
    public /* synthetic */ InterfaceC2964U mo320z(C3189U c3189u) {
        return C3173H0.m269m0(this.f1259a.mapToDouble(c3189u == null ? null : c3189u.f1293a));
    }
}
