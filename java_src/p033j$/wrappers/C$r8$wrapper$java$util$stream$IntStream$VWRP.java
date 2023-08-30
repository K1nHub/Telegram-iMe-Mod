package p033j$.wrappers;

import java.util.Iterator;
import p033j$.util.AbstractC2919a;
import p033j$.util.C2979g;
import p033j$.util.C2981i;
import p033j$.util.C2982j;
import p033j$.util.InterfaceC2987o;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2963j;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2967n;
import p033j$.util.function.InterfaceC2975v;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3112U;
import p033j$.util.stream.InterfaceC3169e1;
import p033j$.util.stream.InterfaceC3179g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1221a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1221a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1222a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC3112U mo285A(C3342W c3342w) {
        return C3327K0.m212n0(this.f1221a.mapToDouble(c3342w == null ? null : c3342w.f1260a));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo284C(C3340U c3340u) {
        return this.f1221a.allMatch(AbstractC3341V.m177a(c3340u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo283F(C3340U c3340u) {
        return this.f1221a.anyMatch(AbstractC3341V.m177a(c3340u));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo282I(InterfaceC2965l interfaceC2965l) {
        this.f1221a.forEachOrdered(C3337Q.m182a(interfaceC2965l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo281J(InterfaceC2966m interfaceC2966m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1221a.mapToObj(C3339T.m180a(interfaceC2966m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo280N(int i, InterfaceC2963j interfaceC2963j) {
        return this.f1221a.reduce(i, C3334O.m186a(interfaceC2963j));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo279P(InterfaceC2966m interfaceC2966m) {
        return convert(this.f1221a.flatMap(C3339T.m180a(interfaceC2966m)));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo278U(InterfaceC2965l interfaceC2965l) {
        this.f1221a.forEach(C3337Q.m182a(interfaceC2965l));
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2982j mo277a0(InterfaceC2963j interfaceC2963j) {
        return AbstractC2919a.m614o(this.f1221a.reduce(C3334O.m186a(interfaceC2963j)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3112U asDoubleStream() {
        return C3327K0.m212n0(this.f1221a.asDoubleStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3169e1 asLongStream() {
        return C3331M0.m193n0(this.f1221a.asLongStream());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2981i average() {
        return AbstractC2919a.m615n(this.f1221a.average());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1221a.boxed());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo276c0(InterfaceC2965l interfaceC2965l) {
        return convert(this.f1221a.peek(C3337Q.m182a(interfaceC2965l)));
    }

    @Override // p033j$.util.stream.InterfaceC3179g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1221a.close();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1221a.count();
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1221a.distinct());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC3169e1 mo275f(InterfaceC2967n interfaceC2967n) {
        return C3331M0.m193n0(this.f1221a.mapToLong(C3345Z.m173a(interfaceC2967n)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2982j findAny() {
        return AbstractC2919a.m614o(this.f1221a.findAny());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2982j findFirst() {
        return AbstractC2919a.m614o(this.f1221a.findFirst());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo274h(C3340U c3340u) {
        return convert(this.f1221a.filter(AbstractC3341V.m177a(c3340u)));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ boolean isParallel() {
        return this.f1221a.isParallel();
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2987o.InterfaceC2988a iterator() {
        return C3350c.m166a(this.f1221a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ Iterator iterator() {
        return this.f1221a.iterator();
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo273k0(InterfaceC2978y interfaceC2978y, InterfaceC2975v interfaceC2975v, BiConsumer biConsumer) {
        return this.f1221a.collect(C3397z0.m104a(interfaceC2978y), C3385t0.m117a(interfaceC2975v), C3380r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1221a.limit(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2982j max() {
        return AbstractC2919a.m614o(this.f1221a.max());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ C2982j min() {
        return AbstractC2919a.m614o(this.f1221a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g onClose(Runnable runnable) {
        return C3319G0.m236n0(this.f1221a.onClose(runnable));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1221a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g parallel() {
        return C3319G0.m236n0(this.f1221a.parallel());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo272q(C3347a0 c3347a0) {
        return convert(this.f1221a.map(AbstractC3349b0.m167a(c3347a0)));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1221a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g sequential() {
        return C3319G0.m236n0(this.f1221a.sequential());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1221a.skip(j));
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1221a.sorted());
    }

    @Override // p033j$.util.stream.IntStream, p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s.InterfaceC2994b spliterator() {
        return C3366k.m144a(this.f1221a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s spliterator() {
        return C3358g.m155a(this.f1221a.spliterator());
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1221a.sum();
    }

    @Override // p033j$.util.stream.IntStream
    public C2979g summaryStatistics() {
        this.f1221a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p033j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1221a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g unordered() {
        return C3319G0.m236n0(this.f1221a.unordered());
    }

    @Override // p033j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo271v(C3340U c3340u) {
        return this.f1221a.noneMatch(AbstractC3341V.m177a(c3340u));
    }
}
