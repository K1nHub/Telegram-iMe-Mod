package p034j$.wrappers;

import java.util.Iterator;
import java.util.LongSummaryStatistics;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p034j$.util.AbstractC2414a;
import p034j$.util.stream.InterfaceC2664e1;
/* renamed from: j$.wrappers.N0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2828N0 implements LongStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2664e1 f1147a;

    private /* synthetic */ C2828N0(InterfaceC2664e1 interfaceC2664e1) {
        this.f1147a = interfaceC2664e1;
    }

    /* renamed from: n0 */
    public static /* synthetic */ LongStream m184n0(InterfaceC2664e1 interfaceC2664e1) {
        if (interfaceC2664e1 == null) {
            return null;
        }
        return interfaceC2664e1 instanceof C2826M0 ? ((C2826M0) interfaceC2664e1).f1145a : new C2828N0(interfaceC2664e1);
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean allMatch(LongPredicate longPredicate) {
        return this.f1147a.mo200L(C2858i0.m145a(longPredicate));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean anyMatch(LongPredicate longPredicate) {
        return this.f1147a.mo191k(C2858i0.m145a(longPredicate));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ DoubleStream asDoubleStream() {
        return C2824L0.m203n0(this.f1147a.asDoubleStream());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2414a.m609r(this.f1147a.average());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Stream boxed() {
        return C2830O0.m182n0(this.f1147a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1147a.close();
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1147a.mo193f0(C2890y0.m104a(supplier), C2882u0.m112a(objLongConsumer), C2873q.m122a(biConsumer));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long count() {
        return this.f1147a.count();
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream distinct() {
        return m184n0(this.f1147a.distinct());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream filter(LongPredicate longPredicate) {
        return m184n0(this.f1147a.mo187u(C2858i0.m145a(longPredicate)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong findAny() {
        return AbstractC2414a.m607t(this.f1147a.findAny());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong findFirst() {
        return AbstractC2414a.m607t(this.f1147a.findFirst());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream flatMap(LongFunction longFunction) {
        return m184n0(this.f1147a.mo188s(C2854g0.m151a(longFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1147a.mo195d(C2850e0.m156b(longConsumer));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1147a.mo196Z(C2850e0.m156b(longConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1147a.isParallel();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Long> iterator() {
        return this.f1147a.iterator();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Long> iterator2() {
        return C2851f.m154a(this.f1147a.iterator());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream limit(long j) {
        return m184n0(this.f1147a.limit(j));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream map(LongUnaryOperator longUnaryOperator) {
        return m184n0(this.f1147a.mo186z(C2870o0.m125c(longUnaryOperator)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction) {
        return C2824L0.m203n0(this.f1147a.mo199O(C2862k0.m137b(longToDoubleFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ IntStream mapToInt(LongToIntFunction longToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1147a.mo194e0(C2866m0.m131b(longToIntFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return C2830O0.m182n0(this.f1147a.mo198Q(C2854g0.m151a(longFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong max() {
        return AbstractC2414a.m607t(this.f1147a.max());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong min() {
        return AbstractC2414a.m607t(this.f1147a.min());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean noneMatch(LongPredicate longPredicate) {
        return this.f1147a.mo197S(C2858i0.m145a(longPredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ LongStream onClose(Runnable runnable) {
        return C2816H0.m231n0(this.f1147a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ LongStream parallel() {
        return C2816H0.m231n0(this.f1147a.parallel());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ LongStream parallel2() {
        return m184n0(this.f1147a.parallel());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return m184n0(this.f1147a.mo189p(C2850e0.m156b(longConsumer)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1147a.mo201D(j, C2846c0.m161a(longBinaryOperator));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC2414a.m607t(this.f1147a.mo192g(C2846c0.m161a(longBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ LongStream sequential() {
        return C2816H0.m231n0(this.f1147a.sequential());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ LongStream sequential2() {
        return m184n0(this.f1147a.sequential());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream skip(long j) {
        return m184n0(this.f1147a.skip(j));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream sorted() {
        return m184n0(this.f1147a.sorted());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Long> spliterator() {
        return C2867n.m130a(this.f1147a.spliterator());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Long> spliterator2() {
        return C2855h.m150a(this.f1147a.spliterator());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long sum() {
        return this.f1147a.sum();
    }

    @Override // java.util.stream.LongStream
    public LongSummaryStatistics summaryStatistics() {
        this.f1147a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics");
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long[] toArray() {
        return this.f1147a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ LongStream unordered() {
        return C2816H0.m231n0(this.f1147a.unordered());
    }
}
