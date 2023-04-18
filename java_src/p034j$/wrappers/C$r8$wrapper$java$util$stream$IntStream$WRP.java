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
import p034j$.util.AbstractC2615a;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$WRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.stream.IntStream f1124a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$WRP(p034j$.util.stream.IntStream intStream) {
        this.f1124a = intStream;
    }

    public static /* synthetic */ IntStream convert(p034j$.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$VWRP ? ((C$r8$wrapper$java$util$stream$IntStream$VWRP) intStream).f1123a : new C$r8$wrapper$java$util$stream$IntStream$WRP(intStream);
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
        return this.f1124a.mo261C(C3036U.m156a(intPredicate));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
        return this.f1124a.mo260F(C3036U.m156a(intPredicate));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ DoubleStream asDoubleStream() {
        return C3025L0.m183n0(this.f1124a.asDoubleStream());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ LongStream asLongStream() {
        return C3029N0.m164n0(this.f1124a.asLongStream());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2615a.m589r(this.f1124a.average());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C3031O0.m162n0(this.f1124a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1124a.close();
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        return this.f1124a.mo250k0(C3091y0.m84a(supplier), C3079s0.m96a(objIntConsumer), C3074q.m102a(biConsumer));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1124a.count();
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1124a.distinct());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream filter(IntPredicate intPredicate) {
        return convert(this.f1124a.mo251h(C3036U.m156a(intPredicate)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt findAny() {
        return AbstractC2615a.m588s(this.f1124a.findAny());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt findFirst() {
        return AbstractC2615a.m588s(this.f1124a.findFirst());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream flatMap(IntFunction intFunction) {
        return convert(this.f1124a.mo256P(C3034S.m158a(intFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ void forEach(IntConsumer intConsumer) {
        this.f1124a.mo255U(C3032P.m161b(intConsumer));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
        this.f1124a.mo259I(C3032P.m161b(intConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1124a.isParallel();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Integer> iterator() {
        return this.f1124a.iterator();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Integer> iterator2() {
        return C3048d.m140a(this.f1124a.iterator());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1124a.limit(j));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream map(IntUnaryOperator intUnaryOperator) {
        return convert(this.f1124a.mo249q(C3043a0.m146b(intUnaryOperator)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ DoubleStream mapToDouble(IntToDoubleFunction intToDoubleFunction) {
        return C3025L0.m183n0(this.f1124a.mo262A(C3038W.m152b(intToDoubleFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ LongStream mapToLong(IntToLongFunction intToLongFunction) {
        return C3029N0.m164n0(this.f1124a.mo252f(C3040Y.m151a(intToLongFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Stream mapToObj(IntFunction intFunction) {
        return C3031O0.m162n0(this.f1124a.mo258J(C3034S.m158a(intFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt max() {
        return AbstractC2615a.m588s(this.f1124a.max());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt min() {
        return AbstractC2615a.m588s(this.f1124a.min());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
        return this.f1124a.mo248v(C3036U.m156a(intPredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ IntStream onClose(Runnable runnable) {
        return C3017H0.m211n0(this.f1124a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ IntStream parallel() {
        return C3017H0.m211n0(this.f1124a.parallel());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ IntStream parallel2() {
        return convert(this.f1124a.parallel());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream peek(IntConsumer intConsumer) {
        return convert(this.f1124a.mo253c0(C3032P.m161b(intConsumer)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
        return this.f1124a.mo257N(i, C3028N.m165a(intBinaryOperator));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        return AbstractC2615a.m588s(this.f1124a.mo254a0(C3028N.m165a(intBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ IntStream sequential() {
        return C3017H0.m211n0(this.f1124a.sequential());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ IntStream sequential2() {
        return convert(this.f1124a.sequential());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1124a.skip(j));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1124a.sorted());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Integer> spliterator() {
        return C3064l.m116a(this.f1124a.spliterator());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Integer> spliterator2() {
        return C3056h.m130a(this.f1124a.spliterator());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1124a.sum();
    }

    @Override // java.util.stream.IntStream
    public IntSummaryStatistics summaryStatistics() {
        this.f1124a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics");
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1124a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ IntStream unordered() {
        return C3017H0.m211n0(this.f1124a.unordered());
    }
}
