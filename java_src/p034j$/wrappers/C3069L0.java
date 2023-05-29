package p034j$.wrappers;

import java.util.DoubleSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p034j$.util.AbstractC2659a;
import p034j$.util.stream.InterfaceC2852U;
/* renamed from: j$.wrappers.L0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3069L0 implements DoubleStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2852U f1152a;

    private /* synthetic */ C3069L0(InterfaceC2852U interfaceC2852U) {
        this.f1152a = interfaceC2852U;
    }

    /* renamed from: n0 */
    public static /* synthetic */ DoubleStream m188n0(InterfaceC2852U interfaceC2852U) {
        if (interfaceC2852U == null) {
            return null;
        }
        return interfaceC2852U instanceof C3067K0 ? ((C3067K0) interfaceC2852U).f1150a : new C3069L0(interfaceC2852U);
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean allMatch(DoublePredicate doublePredicate) {
        return this.f1152a.mo200Y(C3052D.m226a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean anyMatch(DoublePredicate doublePredicate) {
        return this.f1152a.mo198h0(C3052D.m226a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2659a.m593r(this.f1152a.average());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream boxed() {
        return C3075O0.m167n0(this.f1152a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1152a.close();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f1152a.mo204H(C3135y0.m89a(supplier), C3119q0.m105a(objDoubleConsumer), C3118q.m107a(biConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ long count() {
        return this.f1152a.count();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream distinct() {
        return m188n0(this.f1152a.distinct());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream filter(DoublePredicate doublePredicate) {
        return m188n0(this.f1152a.mo193r(C3052D.m226a(doublePredicate)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findAny() {
        return AbstractC2659a.m593r(this.f1152a.findAny());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findFirst() {
        return AbstractC2659a.m593r(this.f1152a.findFirst());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream flatMap(DoubleFunction doubleFunction) {
        return m188n0(this.f1152a.mo192w(C3048B.m230a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f1152a.mo196j(C3136z.m88b(doubleConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f1152a.mo195l0(C3136z.m88b(doubleConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1152a.isParallel();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Double> iterator() {
        return this.f1152a.iterator();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Double> iterator2() {
        return C3088b.m150a(this.f1152a.iterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream limit(long j) {
        return m188n0(this.f1152a.limit(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream map(DoubleUnaryOperator doubleUnaryOperator) {
        return m188n0(this.f1152a.mo190y(C3064J.m207b(doubleUnaryOperator)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ IntStream mapToInt(DoubleToIntFunction doubleToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1152a.mo201R(C3056F.m220b(doubleToIntFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ LongStream mapToLong(DoubleToLongFunction doubleToLongFunction) {
        return C3073N0.m169n0(this.f1152a.mo191x(C3060H.m217a(doubleToLongFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return C3075O0.m167n0(this.f1152a.mo202M(C3048B.m230a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble max() {
        return AbstractC2659a.m593r(this.f1152a.max());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble min() {
        return AbstractC2659a.m593r(this.f1152a.min());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean noneMatch(DoublePredicate doublePredicate) {
        return this.f1152a.mo197i0(C3052D.m226a(doublePredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream onClose(Runnable runnable) {
        return C3061H0.m216n0(this.f1152a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream parallel() {
        return C3061H0.m216n0(this.f1152a.parallel());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ DoubleStream parallel2() {
        return m188n0(this.f1152a.parallel());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return m188n0(this.f1152a.mo199b(C3136z.m88b(doubleConsumer)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f1152a.mo203K(d, C3132x.m92a(doubleBinaryOperator));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC2659a.m593r(this.f1152a.mo205G(C3132x.m92a(doubleBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream sequential() {
        return C3061H0.m216n0(this.f1152a.sequential());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ DoubleStream sequential2() {
        return m188n0(this.f1152a.sequential());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream skip(long j) {
        return m188n0(this.f1152a.skip(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream sorted() {
        return m188n0(this.f1152a.sorted());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Double> spliterator() {
        return C3104j.m128a(this.f1152a.spliterator());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Double> spliterator2() {
        return C3100h.m135a(this.f1152a.spliterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double sum() {
        return this.f1152a.sum();
    }

    @Override // java.util.stream.DoubleStream
    public DoubleSummaryStatistics summaryStatistics() {
        this.f1152a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics");
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double[] toArray() {
        return this.f1152a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream unordered() {
        return C3061H0.m216n0(this.f1152a.unordered());
    }
}
