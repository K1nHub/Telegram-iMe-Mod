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
import p034j$.util.AbstractC2615a;
import p034j$.util.stream.InterfaceC2808U;
/* renamed from: j$.wrappers.L0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3025L0 implements DoubleStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2808U f1149a;

    private /* synthetic */ C3025L0(InterfaceC2808U interfaceC2808U) {
        this.f1149a = interfaceC2808U;
    }

    /* renamed from: n0 */
    public static /* synthetic */ DoubleStream m183n0(InterfaceC2808U interfaceC2808U) {
        if (interfaceC2808U == null) {
            return null;
        }
        return interfaceC2808U instanceof C3023K0 ? ((C3023K0) interfaceC2808U).f1147a : new C3025L0(interfaceC2808U);
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean allMatch(DoublePredicate doublePredicate) {
        return this.f1149a.mo195Y(C3008D.m221a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean anyMatch(DoublePredicate doublePredicate) {
        return this.f1149a.mo193h0(C3008D.m221a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2615a.m589r(this.f1149a.average());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream boxed() {
        return C3031O0.m162n0(this.f1149a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1149a.close();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f1149a.mo199H(C3091y0.m84a(supplier), C3075q0.m100a(objDoubleConsumer), C3074q.m102a(biConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ long count() {
        return this.f1149a.count();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream distinct() {
        return m183n0(this.f1149a.distinct());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream filter(DoublePredicate doublePredicate) {
        return m183n0(this.f1149a.mo188r(C3008D.m221a(doublePredicate)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findAny() {
        return AbstractC2615a.m589r(this.f1149a.findAny());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findFirst() {
        return AbstractC2615a.m589r(this.f1149a.findFirst());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream flatMap(DoubleFunction doubleFunction) {
        return m183n0(this.f1149a.mo187w(C3004B.m225a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f1149a.mo191j(C3092z.m83b(doubleConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f1149a.mo190l0(C3092z.m83b(doubleConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1149a.isParallel();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Double> iterator() {
        return this.f1149a.iterator();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Double> iterator2() {
        return C3044b.m145a(this.f1149a.iterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream limit(long j) {
        return m183n0(this.f1149a.limit(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream map(DoubleUnaryOperator doubleUnaryOperator) {
        return m183n0(this.f1149a.mo185y(C3020J.m202b(doubleUnaryOperator)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ IntStream mapToInt(DoubleToIntFunction doubleToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1149a.mo196R(C3012F.m215b(doubleToIntFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ LongStream mapToLong(DoubleToLongFunction doubleToLongFunction) {
        return C3029N0.m164n0(this.f1149a.mo186x(C3016H.m212a(doubleToLongFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return C3031O0.m162n0(this.f1149a.mo197M(C3004B.m225a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble max() {
        return AbstractC2615a.m589r(this.f1149a.max());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble min() {
        return AbstractC2615a.m589r(this.f1149a.min());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean noneMatch(DoublePredicate doublePredicate) {
        return this.f1149a.mo192i0(C3008D.m221a(doublePredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream onClose(Runnable runnable) {
        return C3017H0.m211n0(this.f1149a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream parallel() {
        return C3017H0.m211n0(this.f1149a.parallel());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ DoubleStream parallel2() {
        return m183n0(this.f1149a.parallel());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return m183n0(this.f1149a.mo194b(C3092z.m83b(doubleConsumer)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f1149a.mo198K(d, C3088x.m87a(doubleBinaryOperator));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC2615a.m589r(this.f1149a.mo200G(C3088x.m87a(doubleBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream sequential() {
        return C3017H0.m211n0(this.f1149a.sequential());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ DoubleStream sequential2() {
        return m183n0(this.f1149a.sequential());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream skip(long j) {
        return m183n0(this.f1149a.skip(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream sorted() {
        return m183n0(this.f1149a.sorted());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Double> spliterator() {
        return C3060j.m123a(this.f1149a.spliterator());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Double> spliterator2() {
        return C3056h.m130a(this.f1149a.spliterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double sum() {
        return this.f1149a.sum();
    }

    @Override // java.util.stream.DoubleStream
    public DoubleSummaryStatistics summaryStatistics() {
        this.f1149a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics");
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double[] toArray() {
        return this.f1149a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream unordered() {
        return C3017H0.m211n0(this.f1149a.unordered());
    }
}
