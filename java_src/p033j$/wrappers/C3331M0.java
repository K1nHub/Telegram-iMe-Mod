package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p033j$.util.AbstractC2919a;
import p033j$.util.C2980h;
import p033j$.util.C2981i;
import p033j$.util.C2983k;
import p033j$.util.InterfaceC2990q;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2968o;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.InterfaceC2973t;
import p033j$.util.function.InterfaceC2976w;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3112U;
import p033j$.util.stream.InterfaceC3169e1;
import p033j$.util.stream.InterfaceC3179g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3331M0 implements InterfaceC3169e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1249a;

    private /* synthetic */ C3331M0(LongStream longStream) {
        this.f1249a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3169e1 m193n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3333N0 ? ((C3333N0) longStream).f1251a : new C3331M0(longStream);
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: D */
    public /* synthetic */ long mo204D(long j, InterfaceC2968o interfaceC2968o) {
        return this.f1249a.reduce(j, C3353d0.m162a(interfaceC2968o));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: L */
    public /* synthetic */ boolean mo203L(C3363i0 c3363i0) {
        return this.f1249a.allMatch(AbstractC3365j0.m145a(c3363i0));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC3112U mo202O(C3367k0 c3367k0) {
        return C3327K0.m212n0(this.f1249a.mapToDouble(c3367k0 == null ? null : c3367k0.f1285a));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo201Q(InterfaceC2971r interfaceC2971r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1249a.mapToObj(C3361h0.m152a(interfaceC2971r)));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: S */
    public /* synthetic */ boolean mo200S(C3363i0 c3363i0) {
        return this.f1249a.noneMatch(AbstractC3365j0.m145a(c3363i0));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: Z */
    public /* synthetic */ void mo199Z(InterfaceC2970q interfaceC2970q) {
        this.f1249a.forEachOrdered(C3357f0.m156a(interfaceC2970q));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ InterfaceC3112U asDoubleStream() {
        return C3327K0.m212n0(this.f1249a.asDoubleStream());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ C2981i average() {
        return AbstractC2919a.m615n(this.f1249a.average());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1249a.boxed());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1249a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ long count() {
        return this.f1249a.count();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: d */
    public /* synthetic */ void mo198d(InterfaceC2970q interfaceC2970q) {
        this.f1249a.forEach(C3357f0.m156a(interfaceC2970q));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ InterfaceC3169e1 distinct() {
        return m193n0(this.f1249a.distinct());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo197e0(C3371m0 c3371m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1249a.mapToInt(c3371m0 == null ? null : c3371m0.f1289a));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo196f0(InterfaceC2978y interfaceC2978y, InterfaceC2976w interfaceC2976w, BiConsumer biConsumer) {
        return this.f1249a.collect(C3397z0.m104a(interfaceC2978y), C3389v0.m113a(interfaceC2976w), C3380r.m122a(biConsumer));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ C2983k findAny() {
        return AbstractC2919a.m613p(this.f1249a.findAny());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ C2983k findFirst() {
        return AbstractC2919a.m613p(this.f1249a.findFirst());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: g */
    public /* synthetic */ C2983k mo195g(InterfaceC2968o interfaceC2968o) {
        return AbstractC2919a.m613p(this.f1249a.reduce(C3353d0.m162a(interfaceC2968o)));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ boolean isParallel() {
        return this.f1249a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1, p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2990q iterator() {
        return C3354e.m161a(this.f1249a.iterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ Iterator iterator() {
        return this.f1249a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: k */
    public /* synthetic */ boolean mo194k(C3363i0 c3363i0) {
        return this.f1249a.anyMatch(AbstractC3365j0.m145a(c3363i0));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ InterfaceC3169e1 limit(long j) {
        return m193n0(this.f1249a.limit(j));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ C2983k max() {
        return AbstractC2919a.m613p(this.f1249a.max());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ C2983k min() {
        return AbstractC2919a.m613p(this.f1249a.min());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g onClose(Runnable runnable) {
        return C3319G0.m236n0(this.f1249a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC3169e1 mo192p(InterfaceC2970q interfaceC2970q) {
        return m193n0(this.f1249a.peek(C3357f0.m156a(interfaceC2970q)));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3169e1 parallel() {
        return m193n0(this.f1249a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g parallel() {
        return C3319G0.m236n0(this.f1249a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC3169e1 mo191s(InterfaceC2971r interfaceC2971r) {
        return m193n0(this.f1249a.flatMap(C3361h0.m152a(interfaceC2971r)));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3169e1 sequential() {
        return m193n0(this.f1249a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g sequential() {
        return C3319G0.m236n0(this.f1249a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ InterfaceC3169e1 skip(long j) {
        return m193n0(this.f1249a.skip(j));
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ InterfaceC3169e1 sorted() {
        return m193n0(this.f1249a.sorted());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1, p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s.InterfaceC2995c spliterator() {
        return C3370m.m138a(this.f1249a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s spliterator() {
        return C3358g.m155a(this.f1249a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ long sum() {
        return this.f1249a.sum();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public C2980h summaryStatistics() {
        this.f1249a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    public /* synthetic */ long[] toArray() {
        return this.f1249a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC3169e1 mo190u(C3363i0 c3363i0) {
        return m193n0(this.f1249a.filter(AbstractC3365j0.m145a(c3363i0)));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g unordered() {
        return C3319G0.m236n0(this.f1249a.unordered());
    }

    @Override // p033j$.util.stream.InterfaceC3169e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC3169e1 mo189z(InterfaceC2973t interfaceC2973t) {
        return m193n0(this.f1249a.map(C3377p0.m126a(interfaceC2973t)));
    }
}
