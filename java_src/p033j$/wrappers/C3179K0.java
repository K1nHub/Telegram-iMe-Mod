package p033j$.wrappers;

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
import p033j$.util.AbstractC2838k;
import p033j$.util.stream.InterfaceC3021e1;
/* renamed from: j$.wrappers.K0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3179K0 implements LongStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3021e1 f1283a;

    private /* synthetic */ C3179K0(InterfaceC3021e1 interfaceC3021e1) {
        this.f1283a = interfaceC3021e1;
    }

    /* renamed from: m0 */
    public static /* synthetic */ LongStream m243m0(InterfaceC3021e1 interfaceC3021e1) {
        if (interfaceC3021e1 == null) {
            return null;
        }
        return interfaceC3021e1 instanceof C3177J0 ? ((C3177J0) interfaceC3021e1).f1281a : new C3179K0(interfaceC3021e1);
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean allMatch(LongPredicate longPredicate) {
        return this.f1283a.mo259K(C3208g0.m207a(longPredicate));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean anyMatch(LongPredicate longPredicate) {
        return this.f1283a.mo250k(C3208g0.m207a(longPredicate));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ DoubleStream asDoubleStream() {
        return C3175I0.m262m0(this.f1283a.asDoubleStream());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2838k.m595n(this.f1283a.average());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Stream boxed() {
        return C3181L0.m241m0(this.f1283a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1283a.close();
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1283a.mo252e0(C3238v0.m167a(supplier), C3232s0.m173a(objLongConsumer), C3227q.m178a(biConsumer));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long count() {
        return this.f1283a.count();
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream distinct() {
        return m243m0(this.f1283a.distinct());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream filter(LongPredicate longPredicate) {
        return m243m0(this.f1283a.mo246t(C3208g0.m207a(longPredicate)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong findAny() {
        return AbstractC2838k.m593p(this.f1283a.findAny());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong findFirst() {
        return AbstractC2838k.m593p(this.f1283a.findFirst());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream flatMap(LongFunction longFunction) {
        return m243m0(this.f1283a.mo247r(C3204e0.m211a(longFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1283a.mo254d(C3200c0.m217b(longConsumer));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1283a.mo255Y(C3200c0.m217b(longConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1283a.isParallel();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Long> iterator() {
        return this.f1283a.iterator();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Long> iterator2() {
        return C3205f.m210a(this.f1283a.iterator());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream limit(long j) {
        return m243m0(this.f1283a.limit(j));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream map(LongUnaryOperator longUnaryOperator) {
        return m243m0(this.f1283a.mo245y(C3220m0.m186c(longUnaryOperator)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction) {
        return C3175I0.m262m0(this.f1283a.mo258N(C3212i0.m199b(longToDoubleFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ IntStream mapToInt(LongToIntFunction longToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1283a.mo253d0(C3216k0.m193b(longToIntFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return C3181L0.m241m0(this.f1283a.mo257P(C3204e0.m211a(longFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong max() {
        return AbstractC2838k.m593p(this.f1283a.max());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong min() {
        return AbstractC2838k.m593p(this.f1283a.min());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean noneMatch(LongPredicate longPredicate) {
        return this.f1283a.mo256R(C3208g0.m207a(longPredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ LongStream onClose(Runnable runnable) {
        return C3167E0.m289m0(this.f1283a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ LongStream parallel() {
        return C3167E0.m289m0(this.f1283a.parallel());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ LongStream parallel2() {
        return m243m0(this.f1283a.parallel());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return m243m0(this.f1283a.mo248o(C3200c0.m217b(longConsumer)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1283a.mo260C(j, C3196a0.m222a(longBinaryOperator));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC2838k.m593p(this.f1283a.mo251g(C3196a0.m222a(longBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ LongStream sequential() {
        return C3167E0.m289m0(this.f1283a.sequential());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ LongStream sequential2() {
        return m243m0(this.f1283a.sequential());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream skip(long j) {
        return m243m0(this.f1283a.skip(j));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream sorted() {
        return m243m0(this.f1283a.sorted());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Long> spliterator() {
        return C3221n.m185a(this.f1283a.spliterator());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Long> spliterator2() {
        return C3209h.m205a(this.f1283a.spliterator());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long sum() {
        return this.f1283a.sum();
    }

    @Override // java.util.stream.LongStream
    public LongSummaryStatistics summaryStatistics() {
        this.f1283a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics");
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long[] toArray() {
        return this.f1283a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ LongStream unordered() {
        return C3167E0.m289m0(this.f1283a.unordered());
    }
}
