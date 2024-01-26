package p033j$.wrappers;

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
import p033j$.util.AbstractC2838k;
import p033j$.util.stream.InterfaceC2964U;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3175I0 implements DoubleStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2964U f1279a;

    private /* synthetic */ C3175I0(InterfaceC2964U interfaceC2964U) {
        this.f1279a = interfaceC2964U;
    }

    /* renamed from: m0 */
    public static /* synthetic */ DoubleStream m262m0(InterfaceC2964U interfaceC2964U) {
        if (interfaceC2964U == null) {
            return null;
        }
        return interfaceC2964U instanceof C3173H0 ? ((C3173H0) interfaceC2964U).f1277a : new C3175I0(interfaceC2964U);
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean allMatch(DoublePredicate doublePredicate) {
        return this.f1279a.mo275X(C3162C.m296a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean anyMatch(DoublePredicate doublePredicate) {
        return this.f1279a.mo273g0(C3162C.m296a(doublePredicate));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2838k.m595n(this.f1279a.average());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream boxed() {
        return C3181L0.m241m0(this.f1279a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1279a.close();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f1279a.mo279G(C3238v0.m167a(supplier), C3224o0.m181a(objDoubleConsumer), C3227q.m178a(biConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ long count() {
        return this.f1279a.count();
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream distinct() {
        return m262m0(this.f1279a.distinct());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream filter(DoublePredicate doublePredicate) {
        return m262m0(this.f1279a.mo268q(C3162C.m296a(doublePredicate)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findAny() {
        return AbstractC2838k.m595n(this.f1279a.findAny());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble findFirst() {
        return AbstractC2838k.m595n(this.f1279a.findFirst());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream flatMap(DoubleFunction doubleFunction) {
        return m262m0(this.f1279a.mo267v(C3158A.m300a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f1279a.mo271j(C3243y.m162b(doubleConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f1279a.mo270k0(C3243y.m162b(doubleConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1279a.isParallel();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Double> iterator() {
        return this.f1279a.iterator();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Double> iterator2() {
        return C3197b.m221a(this.f1279a.iterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream limit(long j) {
        return m262m0(this.f1279a.limit(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream map(DoubleUnaryOperator doubleUnaryOperator) {
        return m262m0(this.f1279a.mo265x(C3174I.m263b(doubleUnaryOperator)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ IntStream mapToInt(DoubleToIntFunction doubleToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1279a.mo276Q(C3166E.m290b(doubleToIntFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ LongStream mapToLong(DoubleToLongFunction doubleToLongFunction) {
        return C3179K0.m243m0(this.f1279a.mo266w(C3170G.m282a(doubleToLongFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return C3181L0.m241m0(this.f1279a.mo277L(C3158A.m300a(doubleFunction)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble max() {
        return AbstractC2838k.m595n(this.f1279a.max());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble min() {
        return AbstractC2838k.m595n(this.f1279a.min());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ boolean noneMatch(DoublePredicate doublePredicate) {
        return this.f1279a.mo272h0(C3162C.m296a(doublePredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream onClose(Runnable runnable) {
        return C3167E0.m289m0(this.f1279a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream parallel() {
        return C3167E0.m289m0(this.f1279a.parallel());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ DoubleStream parallel2() {
        return m262m0(this.f1279a.parallel());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return m262m0(this.f1279a.mo274b(C3243y.m162b(doubleConsumer)));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f1279a.mo278J(d, C3239w.m166a(doubleBinaryOperator));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ OptionalDouble reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC2838k.m595n(this.f1279a.mo280F(C3239w.m166a(doubleBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ DoubleStream sequential() {
        return C3167E0.m289m0(this.f1279a.sequential());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ DoubleStream sequential2() {
        return m262m0(this.f1279a.sequential());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream skip(long j) {
        return m262m0(this.f1279a.skip(j));
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ DoubleStream sorted() {
        return m262m0(this.f1279a.sorted());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Double> spliterator() {
        return C3213j.m198a(this.f1279a.spliterator());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Double> spliterator2() {
        return C3209h.m205a(this.f1279a.spliterator());
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double sum() {
        return this.f1279a.sum();
    }

    @Override // java.util.stream.DoubleStream
    public DoubleSummaryStatistics summaryStatistics() {
        this.f1279a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics");
    }

    @Override // java.util.stream.DoubleStream
    public /* synthetic */ double[] toArray() {
        return this.f1279a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.BaseStream, java.util.stream.DoubleStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ DoubleStream unordered() {
        return C3167E0.m289m0(this.f1279a.unordered());
    }
}
