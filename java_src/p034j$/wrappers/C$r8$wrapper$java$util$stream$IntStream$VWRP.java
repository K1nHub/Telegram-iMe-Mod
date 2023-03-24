package p034j$.wrappers;

import java.util.Iterator;
import p034j$.util.AbstractC2552a;
import p034j$.util.C2612g;
import p034j$.util.C2614i;
import p034j$.util.C2615j;
import p034j$.util.InterfaceC2620o;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2596j;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2600n;
import p034j$.util.function.InterfaceC2608v;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.stream.IntStream;
import p034j$.util.stream.InterfaceC2745U;
import p034j$.util.stream.InterfaceC2802e1;
import p034j$.util.stream.InterfaceC2812g;
import p034j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$VWRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.IntStream f1123a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$VWRP(java.util.stream.IntStream intStream) {
        this.f1123a = intStream;
    }

    public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$WRP ? ((C$r8$wrapper$java$util$stream$IntStream$WRP) intStream).f1124a : new C$r8$wrapper$java$util$stream$IntStream$VWRP(intStream);
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: A */
    public /* synthetic */ InterfaceC2745U mo281A(C2975W c2975w) {
        return C2960K0.m208n0(this.f1123a.mapToDouble(c2975w == null ? null : c2975w.f1162a));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: C */
    public /* synthetic */ boolean mo280C(C2973U c2973u) {
        return this.f1123a.allMatch(AbstractC2974V.m173a(c2973u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: F */
    public /* synthetic */ boolean mo279F(C2973U c2973u) {
        return this.f1123a.anyMatch(AbstractC2974V.m173a(c2973u));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: I */
    public /* synthetic */ void mo278I(InterfaceC2598l interfaceC2598l) {
        this.f1123a.forEachOrdered(C2970Q.m178a(interfaceC2598l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: J */
    public /* synthetic */ Stream mo277J(InterfaceC2599m interfaceC2599m) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1123a.mapToObj(C2972T.m176a(interfaceC2599m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: N */
    public /* synthetic */ int mo276N(int i, InterfaceC2596j interfaceC2596j) {
        return this.f1123a.reduce(i, C2967O.m182a(interfaceC2596j));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: P */
    public /* synthetic */ IntStream mo275P(InterfaceC2599m interfaceC2599m) {
        return convert(this.f1123a.flatMap(C2972T.m176a(interfaceC2599m)));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: U */
    public /* synthetic */ void mo274U(InterfaceC2598l interfaceC2598l) {
        this.f1123a.forEach(C2970Q.m178a(interfaceC2598l));
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: a0 */
    public /* synthetic */ C2615j mo273a0(InterfaceC2596j interfaceC2596j) {
        return AbstractC2552a.m611o(this.f1123a.reduce(C2967O.m182a(interfaceC2596j)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2745U asDoubleStream() {
        return C2960K0.m208n0(this.f1123a.asDoubleStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2802e1 asLongStream() {
        return C2964M0.m189n0(this.f1123a.asLongStream());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2614i average() {
        return AbstractC2552a.m612n(this.f1123a.average());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1123a.boxed());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: c0 */
    public /* synthetic */ IntStream mo272c0(InterfaceC2598l interfaceC2598l) {
        return convert(this.f1123a.peek(C2970Q.m178a(interfaceC2598l)));
    }

    @Override // p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1123a.close();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1123a.count();
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1123a.distinct());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: f */
    public /* synthetic */ InterfaceC2802e1 mo271f(InterfaceC2600n interfaceC2600n) {
        return C2964M0.m189n0(this.f1123a.mapToLong(C2978Z.m169a(interfaceC2600n)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2615j findAny() {
        return AbstractC2552a.m611o(this.f1123a.findAny());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2615j findFirst() {
        return AbstractC2552a.m611o(this.f1123a.findFirst());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: h */
    public /* synthetic */ IntStream mo270h(C2973U c2973u) {
        return convert(this.f1123a.filter(AbstractC2974V.m173a(c2973u)));
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ boolean isParallel() {
        return this.f1123a.isParallel();
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2620o.InterfaceC2621a iterator() {
        return C2983c.m162a(this.f1123a.iterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ Iterator iterator() {
        return this.f1123a.iterator();
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: k0 */
    public /* synthetic */ Object mo269k0(InterfaceC2611y interfaceC2611y, InterfaceC2608v interfaceC2608v, BiConsumer biConsumer) {
        return this.f1123a.collect(C3030z0.m100a(interfaceC2611y), C3018t0.m113a(interfaceC2608v), C3013r.m118a(biConsumer));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1123a.limit(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2615j max() {
        return AbstractC2552a.m611o(this.f1123a.max());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ C2615j min() {
        return AbstractC2552a.m611o(this.f1123a.min());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g onClose(Runnable runnable) {
        return C2952G0.m232n0(this.f1123a.onClose(runnable));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream parallel() {
        return convert(this.f1123a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g parallel() {
        return C2952G0.m232n0(this.f1123a.parallel());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: q */
    public /* synthetic */ IntStream mo268q(C2980a0 c2980a0) {
        return convert(this.f1123a.map(AbstractC2982b0.m163a(c2980a0)));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sequential() {
        return convert(this.f1123a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g sequential() {
        return C2952G0.m232n0(this.f1123a.sequential());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1123a.skip(j));
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1123a.sorted());
    }

    @Override // p034j$.util.stream.IntStream, p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s.InterfaceC2627b spliterator() {
        return C2999k.m140a(this.f1123a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s spliterator() {
        return C2991g.m151a(this.f1123a.spliterator());
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1123a.sum();
    }

    @Override // p034j$.util.stream.IntStream
    public C2612g summaryStatistics() {
        this.f1123a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
    }

    @Override // p034j$.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1123a.toArray();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g unordered() {
        return C2952G0.m232n0(this.f1123a.unordered());
    }

    @Override // p034j$.util.stream.IntStream
    /* renamed from: v */
    public /* synthetic */ boolean mo267v(C2973U c2973u) {
        return this.f1123a.noneMatch(AbstractC2974V.m173a(c2973u));
    }
}
