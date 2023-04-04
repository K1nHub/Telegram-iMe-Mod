package p035j$.wrappers;

import java.util.Iterator;
import java.util.stream.LongStream;
import p035j$.util.AbstractC2628a;
import p035j$.util.C2689h;
import p035j$.util.C2690i;
import p035j$.util.C2692k;
import p035j$.util.InterfaceC2699q;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2677o;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.InterfaceC2682t;
import p035j$.util.function.InterfaceC2685w;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.stream.IntStream;
import p035j$.util.stream.InterfaceC2821U;
import p035j$.util.stream.InterfaceC2878e1;
import p035j$.util.stream.InterfaceC2888g;
import p035j$.util.stream.Stream;
/* renamed from: j$.wrappers.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3040M0 implements InterfaceC2878e1 {

    /* renamed from: a */
    final /* synthetic */ LongStream f1156a;

    private /* synthetic */ C3040M0(LongStream longStream) {
        this.f1156a = longStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2878e1 m184n0(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3042N0 ? ((C3042N0) longStream).f1158a : new C3040M0(longStream);
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: D */
    public /* synthetic */ long mo195D(long j, InterfaceC2677o interfaceC2677o) {
        return this.f1156a.reduce(j, C3062d0.m153a(interfaceC2677o));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: L */
    public /* synthetic */ boolean mo194L(C3072i0 c3072i0) {
        return this.f1156a.allMatch(AbstractC3074j0.m136a(c3072i0));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: O */
    public /* synthetic */ InterfaceC2821U mo193O(C3076k0 c3076k0) {
        return C3036K0.m203n0(this.f1156a.mapToDouble(c3076k0 == null ? null : c3076k0.f1192a));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: Q */
    public /* synthetic */ Stream mo192Q(InterfaceC2680r interfaceC2680r) {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1156a.mapToObj(C3070h0.m143a(interfaceC2680r)));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: S */
    public /* synthetic */ boolean mo191S(C3072i0 c3072i0) {
        return this.f1156a.noneMatch(AbstractC3074j0.m136a(c3072i0));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: Z */
    public /* synthetic */ void mo190Z(InterfaceC2679q interfaceC2679q) {
        this.f1156a.forEachOrdered(C3066f0.m147a(interfaceC2679q));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ InterfaceC2821U asDoubleStream() {
        return C3036K0.m203n0(this.f1156a.asDoubleStream());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ C2690i average() {
        return AbstractC2628a.m607n(this.f1156a.average());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ Stream boxed() {
        return C$r8$wrapper$java$util$stream$Stream$VWRP.convert(this.f1156a.boxed());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1156a.close();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ long count() {
        return this.f1156a.count();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: d */
    public /* synthetic */ void mo189d(InterfaceC2679q interfaceC2679q) {
        this.f1156a.forEach(C3066f0.m147a(interfaceC2679q));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ InterfaceC2878e1 distinct() {
        return m184n0(this.f1156a.distinct());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: e0 */
    public /* synthetic */ IntStream mo188e0(C3080m0 c3080m0) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1156a.mapToInt(c3080m0 == null ? null : c3080m0.f1196a));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: f0 */
    public /* synthetic */ Object mo187f0(InterfaceC2687y interfaceC2687y, InterfaceC2685w interfaceC2685w, BiConsumer biConsumer) {
        return this.f1156a.collect(C3106z0.m95a(interfaceC2687y), C3098v0.m104a(interfaceC2685w), C3089r.m113a(biConsumer));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ C2692k findAny() {
        return AbstractC2628a.m605p(this.f1156a.findAny());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ C2692k findFirst() {
        return AbstractC2628a.m605p(this.f1156a.findFirst());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: g */
    public /* synthetic */ C2692k mo186g(InterfaceC2677o interfaceC2677o) {
        return AbstractC2628a.m605p(this.f1156a.reduce(C3062d0.m153a(interfaceC2677o)));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ boolean isParallel() {
        return this.f1156a.isParallel();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1, p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2699q iterator() {
        return C3063e.m152a(this.f1156a.iterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ Iterator iterator() {
        return this.f1156a.iterator();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: k */
    public /* synthetic */ boolean mo185k(C3072i0 c3072i0) {
        return this.f1156a.anyMatch(AbstractC3074j0.m136a(c3072i0));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ InterfaceC2878e1 limit(long j) {
        return m184n0(this.f1156a.limit(j));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ C2692k max() {
        return AbstractC2628a.m605p(this.f1156a.max());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ C2692k min() {
        return AbstractC2628a.m605p(this.f1156a.min());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g onClose(Runnable runnable) {
        return C3028G0.m227n0(this.f1156a.onClose(runnable));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: p */
    public /* synthetic */ InterfaceC2878e1 mo183p(InterfaceC2679q interfaceC2679q) {
        return m184n0(this.f1156a.peek(C3066f0.m147a(interfaceC2679q)));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2878e1 parallel() {
        return m184n0(this.f1156a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g parallel() {
        return C3028G0.m227n0(this.f1156a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: s */
    public /* synthetic */ InterfaceC2878e1 mo182s(InterfaceC2680r interfaceC2680r) {
        return m184n0(this.f1156a.flatMap(C3070h0.m143a(interfaceC2680r)));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2878e1 sequential() {
        return m184n0(this.f1156a.sequential());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g sequential() {
        return C3028G0.m227n0(this.f1156a.sequential());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ InterfaceC2878e1 skip(long j) {
        return m184n0(this.f1156a.skip(j));
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ InterfaceC2878e1 sorted() {
        return m184n0(this.f1156a.sorted());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1, p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s.InterfaceC2704c spliterator() {
        return C3079m.m129a(this.f1156a.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s spliterator() {
        return C3067g.m146a(this.f1156a.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ long sum() {
        return this.f1156a.sum();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public C2689h summaryStatistics() {
        this.f1156a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    public /* synthetic */ long[] toArray() {
        return this.f1156a.toArray();
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: u */
    public /* synthetic */ InterfaceC2878e1 mo181u(C3072i0 c3072i0) {
        return m184n0(this.f1156a.filter(AbstractC3074j0.m136a(c3072i0)));
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g unordered() {
        return C3028G0.m227n0(this.f1156a.unordered());
    }

    @Override // p035j$.util.stream.InterfaceC2878e1
    /* renamed from: z */
    public /* synthetic */ InterfaceC2878e1 mo180z(InterfaceC2682t interfaceC2682t) {
        return m184n0(this.f1156a.map(C3086p0.m117a(interfaceC2682t)));
    }
}
