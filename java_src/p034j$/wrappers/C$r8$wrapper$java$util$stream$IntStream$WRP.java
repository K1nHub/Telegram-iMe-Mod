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
import p034j$.util.AbstractC2414a;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$IntStream$-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$IntStream$WRP implements IntStream {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.stream.IntStream f1118a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$IntStream$WRP(p034j$.util.stream.IntStream intStream) {
        this.f1118a = intStream;
    }

    public static /* synthetic */ IntStream convert(p034j$.util.stream.IntStream intStream) {
        if (intStream == null) {
            return null;
        }
        return intStream instanceof C$r8$wrapper$java$util$stream$IntStream$VWRP ? ((C$r8$wrapper$java$util$stream$IntStream$VWRP) intStream).f1117a : new C$r8$wrapper$java$util$stream$IntStream$WRP(intStream);
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
        return this.f1118a.mo281C(C2835U.m176a(intPredicate));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
        return this.f1118a.mo280F(C2835U.m176a(intPredicate));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ DoubleStream asDoubleStream() {
        return C2824L0.m203n0(this.f1118a.asDoubleStream());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ LongStream asLongStream() {
        return C2828N0.m184n0(this.f1118a.asLongStream());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2414a.m609r(this.f1118a.average());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Stream boxed() {
        return C2830O0.m182n0(this.f1118a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1118a.close();
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        return this.f1118a.mo270k0(C2890y0.m104a(supplier), C2878s0.m116a(objIntConsumer), C2873q.m122a(biConsumer));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ long count() {
        return this.f1118a.count();
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream distinct() {
        return convert(this.f1118a.distinct());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream filter(IntPredicate intPredicate) {
        return convert(this.f1118a.mo271h(C2835U.m176a(intPredicate)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt findAny() {
        return AbstractC2414a.m608s(this.f1118a.findAny());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt findFirst() {
        return AbstractC2414a.m608s(this.f1118a.findFirst());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream flatMap(IntFunction intFunction) {
        return convert(this.f1118a.mo276P(C2833S.m178a(intFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ void forEach(IntConsumer intConsumer) {
        this.f1118a.mo275U(C2831P.m181b(intConsumer));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
        this.f1118a.mo279I(C2831P.m181b(intConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1118a.isParallel();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Integer> iterator() {
        return this.f1118a.iterator();
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Integer> iterator2() {
        return C2847d.m160a(this.f1118a.iterator());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream limit(long j) {
        return convert(this.f1118a.limit(j));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream map(IntUnaryOperator intUnaryOperator) {
        return convert(this.f1118a.mo269q(C2842a0.m166b(intUnaryOperator)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ DoubleStream mapToDouble(IntToDoubleFunction intToDoubleFunction) {
        return C2824L0.m203n0(this.f1118a.mo282A(C2837W.m172b(intToDoubleFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ LongStream mapToLong(IntToLongFunction intToLongFunction) {
        return C2828N0.m184n0(this.f1118a.mo272f(C2839Y.m171a(intToLongFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ Stream mapToObj(IntFunction intFunction) {
        return C2830O0.m182n0(this.f1118a.mo278J(C2833S.m178a(intFunction)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt max() {
        return AbstractC2414a.m608s(this.f1118a.max());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt min() {
        return AbstractC2414a.m608s(this.f1118a.min());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
        return this.f1118a.mo268v(C2835U.m176a(intPredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ IntStream onClose(Runnable runnable) {
        return C2816H0.m231n0(this.f1118a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ IntStream parallel() {
        return C2816H0.m231n0(this.f1118a.parallel());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ IntStream parallel2() {
        return convert(this.f1118a.parallel());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream peek(IntConsumer intConsumer) {
        return convert(this.f1118a.mo273c0(C2831P.m181b(intConsumer)));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
        return this.f1118a.mo277N(i, C2827N.m185a(intBinaryOperator));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        return AbstractC2414a.m608s(this.f1118a.mo274a0(C2827N.m185a(intBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ IntStream sequential() {
        return C2816H0.m231n0(this.f1118a.sequential());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ IntStream sequential2() {
        return convert(this.f1118a.sequential());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream skip(long j) {
        return convert(this.f1118a.skip(j));
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ IntStream sorted() {
        return convert(this.f1118a.sorted());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Integer> spliterator() {
        return C2863l.m136a(this.f1118a.spliterator());
    }

    @Override // java.util.stream.IntStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Integer> spliterator2() {
        return C2855h.m150a(this.f1118a.spliterator());
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int sum() {
        return this.f1118a.sum();
    }

    @Override // java.util.stream.IntStream
    public IntSummaryStatistics summaryStatistics() {
        this.f1118a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics");
    }

    @Override // java.util.stream.IntStream
    public /* synthetic */ int[] toArray() {
        return this.f1118a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.IntStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ IntStream unordered() {
        return C2816H0.m231n0(this.f1118a.unordered());
    }
}
