package p034j$.wrappers;

import java.util.IntSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p034j$.util.AbstractC2659a;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$WRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.stream.IntStream f1127a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$WRP(p034j$.util.stream.IntStream intStream) {
        this.f1127a = intStream;
    }

    public static /* synthetic */ IntStream convert(p034j$.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$VWRP ? ((C$r8$wrapper$java$util$stream$IntStream$VWRP) intStream).f1126a : new C$r8$wrapper$java$util$stream$IntStream$WRP(intStream);
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
        return this.f1127a.mo266C(C3080U.m161a(intPredicate));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
        return this.f1127a.mo265F(C3080U.m161a(intPredicate));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ DoubleStream asDoubleStream() {
        return C3069L0.m188n0(this.f1127a.asDoubleStream());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ LongStream asLongStream() {
        return C3073N0.m169n0(this.f1127a.asLongStream());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2659a.m593r(this.f1127a.average());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C3075O0.m167n0(this.f1127a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1127a.close();
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        return this.f1127a.mo255k0(C3135y0.m89a(supplier), C3123s0.m101a(objIntConsumer), C3118q.m107a(biConsumer));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1127a.count();
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1127a.distinct());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream filter(IntPredicate intPredicate) {
        return convert(this.f1127a.mo256h(C3080U.m161a(intPredicate)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt findAny() {
        return AbstractC2659a.m592s(this.f1127a.findAny());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt findFirst() {
        return AbstractC2659a.m592s(this.f1127a.findFirst());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream flatMap(IntFunction intFunction) {
        return convert(this.f1127a.mo261P(C3078S.m163a(intFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ void forEach(IntConsumer intConsumer) {
        this.f1127a.mo260U(C3076P.m166b(intConsumer));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
        this.f1127a.mo264I(C3076P.m166b(intConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1127a.isParallel();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Integer> iterator() {
        return this.f1127a.iterator();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Integer> iterator2() {
        return C3092d.m145a(this.f1127a.iterator());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1127a.limit(j));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream map(IntUnaryOperator intUnaryOperator) {
        return convert(this.f1127a.mo254q(C3087a0.m151b(intUnaryOperator)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ DoubleStream mapToDouble(IntToDoubleFunction intToDoubleFunction) {
        return C3069L0.m188n0(this.f1127a.mo267A(C3082W.m157b(intToDoubleFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ LongStream mapToLong(IntToLongFunction intToLongFunction) {
        return C3073N0.m169n0(this.f1127a.mo257f(C3084Y.m156a(intToLongFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Stream mapToObj(IntFunction intFunction) {
        return C3075O0.m167n0(this.f1127a.mo263J(C3078S.m163a(intFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt max() {
        return AbstractC2659a.m592s(this.f1127a.max());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt min() {
        return AbstractC2659a.m592s(this.f1127a.min());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
        return this.f1127a.mo253v(C3080U.m161a(intPredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ IntStream onClose(Runnable runnable) {
        return C3061H0.m216n0(this.f1127a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ IntStream parallel() {
        return C3061H0.m216n0(this.f1127a.parallel());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ IntStream parallel2() {
        return convert(this.f1127a.parallel());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream peek(IntConsumer intConsumer) {
        return convert(this.f1127a.mo258c0(C3076P.m166b(intConsumer)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
        return this.f1127a.mo262N(i, C3072N.m170a(intBinaryOperator));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        return AbstractC2659a.m592s(this.f1127a.mo259a0(C3072N.m170a(intBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ IntStream sequential() {
        return C3061H0.m216n0(this.f1127a.sequential());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ IntStream sequential2() {
        return convert(this.f1127a.sequential());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1127a.skip(j));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1127a.sorted());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Integer> spliterator() {
        return C3108l.m121a(this.f1127a.spliterator());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Integer> spliterator2() {
        return C3100h.m135a(this.f1127a.spliterator());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1127a.sum();
    }

    @Override // java.util.stream.IntStream
    public IntSummaryStatistics summaryStatistics() {
        this.f1127a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics");
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1127a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ IntStream unordered() {
        return C3061H0.m216n0(this.f1127a.unordered());
    }
}
