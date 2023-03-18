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
import p034j$.util.AbstractC2538a;
import p034j$.util.stream.InterfaceC2731U;
/* renamed from: j$.wrappers.L0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2948L0 implements DoubleStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2731U f1148a;

    private /* synthetic */ C2948L0(InterfaceC2731U interfaceC2731U) {
        this.f1148a = interfaceC2731U;
    }

    /* renamed from: n0 */
    public static /* synthetic */ DoubleStream m203n0(InterfaceC2731U interfaceC2731U) {
        if (interfaceC2731U == null) {
            return null;
        }
        return interfaceC2731U instanceof C2946K0 ? ((C2946K0) interfaceC2731U).f1146a : new C2948L0(interfaceC2731U);
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean allMatch(DoublePredicate doublePredicate) {
        return this.f1148a.mo215Y(C2931D.m241a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean anyMatch(DoublePredicate doublePredicate) {
        return this.f1148a.mo213h0(C2931D.m241a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2538a.m609r(this.f1148a.average());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream boxed() {
        return C2954O0.m182n0(this.f1148a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1148a.close();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f1148a.mo219H(C3014y0.m104a(supplier), C2998q0.m120a(objDoubleConsumer), C2997q.m122a(biConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ long count() {
        return this.f1148a.count();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream distinct() {
        return m203n0(this.f1148a.distinct());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream filter(DoublePredicate doublePredicate) {
        return m203n0(this.f1148a.mo208r(C2931D.m241a(doublePredicate)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findAny() {
        return AbstractC2538a.m609r(this.f1148a.findAny());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findFirst() {
        return AbstractC2538a.m609r(this.f1148a.findFirst());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream flatMap(DoubleFunction doubleFunction) {
        return m203n0(this.f1148a.mo207w(C2927B.m245a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f1148a.mo211j(C3015z.m103b(doubleConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f1148a.mo210l0(C3015z.m103b(doubleConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1148a.isParallel();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Double> iterator() {
        return this.f1148a.iterator();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Double> iterator2() {
        return C2967b.m165a(this.f1148a.iterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream limit(long j) {
        return m203n0(this.f1148a.limit(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream map(DoubleUnaryOperator doubleUnaryOperator) {
        return m203n0(this.f1148a.mo205y(C2943J.m222b(doubleUnaryOperator)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ IntStream mapToInt(DoubleToIntFunction doubleToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1148a.mo216R(C2935F.m235b(doubleToIntFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ LongStream mapToLong(DoubleToLongFunction doubleToLongFunction) {
        return C2952N0.m184n0(this.f1148a.mo206x(C2939H.m232a(doubleToLongFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return C2954O0.m182n0(this.f1148a.mo217M(C2927B.m245a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble max() {
        return AbstractC2538a.m609r(this.f1148a.max());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble min() {
        return AbstractC2538a.m609r(this.f1148a.min());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean noneMatch(DoublePredicate doublePredicate) {
        return this.f1148a.mo212i0(C2931D.m241a(doublePredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream onClose(Runnable runnable) {
        return C2940H0.m231n0(this.f1148a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream parallel() {
        return C2940H0.m231n0(this.f1148a.parallel());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ DoubleStream parallel2() {
        return m203n0(this.f1148a.parallel());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return m203n0(this.f1148a.mo214b(C3015z.m103b(doubleConsumer)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f1148a.mo218K(d, C3011x.m107a(doubleBinaryOperator));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC2538a.m609r(this.f1148a.mo220G(C3011x.m107a(doubleBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream sequential() {
        return C2940H0.m231n0(this.f1148a.sequential());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ DoubleStream sequential2() {
        return m203n0(this.f1148a.sequential());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream skip(long j) {
        return m203n0(this.f1148a.skip(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream sorted() {
        return m203n0(this.f1148a.sorted());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Double> spliterator() {
        return C2983j.m143a(this.f1148a.spliterator());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Double> spliterator2() {
        return C2979h.m150a(this.f1148a.spliterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double sum() {
        return this.f1148a.sum();
    }

    @Override // java.util.stream.DoubleStream
    public DoubleSummaryStatistics summaryStatistics() {
        this.f1148a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics");
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double[] toArray() {
        return this.f1148a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream unordered() {
        return C2940H0.m231n0(this.f1148a.unordered());
    }
}
