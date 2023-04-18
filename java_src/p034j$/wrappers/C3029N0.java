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
import p034j$.util.AbstractC2615a;
import p034j$.util.stream.InterfaceC2865e1;
/* renamed from: j$.wrappers.N0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3029N0 implements LongStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2865e1 f1153a;

    private /* synthetic */ C3029N0(InterfaceC2865e1 interfaceC2865e1) {
        this.f1153a = interfaceC2865e1;
    }

    /* renamed from: n0 */
    public static /* synthetic */ LongStream m164n0(InterfaceC2865e1 interfaceC2865e1) {
        if (interfaceC2865e1 == null) {
            return null;
        }
        return interfaceC2865e1 instanceof C3027M0 ? ((C3027M0) interfaceC2865e1).f1151a : new C3029N0(interfaceC2865e1);
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean allMatch(LongPredicate longPredicate) {
        return this.f1153a.mo180L(C3059i0.m125a(longPredicate));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean anyMatch(LongPredicate longPredicate) {
        return this.f1153a.mo171k(C3059i0.m125a(longPredicate));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ DoubleStream asDoubleStream() {
        return C3025L0.m183n0(this.f1153a.asDoubleStream());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalDouble average() {
        return AbstractC2615a.m589r(this.f1153a.average());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Stream boxed() {
        return C3031O0.m162n0(this.f1153a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1153a.close();
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1153a.mo173f0(C3091y0.m84a(supplier), C3083u0.m92a(objLongConsumer), C3074q.m102a(biConsumer));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long count() {
        return this.f1153a.count();
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream distinct() {
        return m164n0(this.f1153a.distinct());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream filter(LongPredicate longPredicate) {
        return m164n0(this.f1153a.mo167u(C3059i0.m125a(longPredicate)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong findAny() {
        return AbstractC2615a.m587t(this.f1153a.findAny());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong findFirst() {
        return AbstractC2615a.m587t(this.f1153a.findFirst());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream flatMap(LongFunction longFunction) {
        return m164n0(this.f1153a.mo168s(C3055g0.m131a(longFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1153a.mo175d(C3051e0.m136b(longConsumer));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1153a.mo176Z(C3051e0.m136b(longConsumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1153a.isParallel();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ Iterator<Long> iterator() {
        return this.f1153a.iterator();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public /* synthetic */ Iterator<Long> iterator2() {
        return C3052f.m134a(this.f1153a.iterator());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream limit(long j) {
        return m164n0(this.f1153a.limit(j));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream map(LongUnaryOperator longUnaryOperator) {
        return m164n0(this.f1153a.mo166z(C3071o0.m105c(longUnaryOperator)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction) {
        return C3025L0.m183n0(this.f1153a.mo179O(C3063k0.m117b(longToDoubleFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ IntStream mapToInt(LongToIntFunction longToIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1153a.mo174e0(C3067m0.m111b(longToIntFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return C3031O0.m162n0(this.f1153a.mo178Q(C3055g0.m131a(longFunction)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong max() {
        return AbstractC2615a.m587t(this.f1153a.max());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong min() {
        return AbstractC2615a.m587t(this.f1153a.min());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ boolean noneMatch(LongPredicate longPredicate) {
        return this.f1153a.mo177S(C3059i0.m125a(longPredicate));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ LongStream onClose(Runnable runnable) {
        return C3017H0.m211n0(this.f1153a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ LongStream parallel() {
        return C3017H0.m211n0(this.f1153a.parallel());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public /* synthetic */ LongStream parallel2() {
        return m164n0(this.f1153a.parallel());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return m164n0(this.f1153a.mo169p(C3051e0.m136b(longConsumer)));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1153a.mo181D(j, C3047c0.m141a(longBinaryOperator));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ OptionalLong reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC2615a.m587t(this.f1153a.mo172g(C3047c0.m141a(longBinaryOperator)));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ LongStream sequential() {
        return C3017H0.m211n0(this.f1153a.sequential());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public /* synthetic */ LongStream sequential2() {
        return m164n0(this.f1153a.sequential());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream skip(long j) {
        return m164n0(this.f1153a.skip(j));
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ LongStream sorted() {
        return m164n0(this.f1153a.sorted());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public /* synthetic */ Spliterator<Long> spliterator() {
        return C3068n.m110a(this.f1153a.spliterator());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public /* synthetic */ Spliterator<Long> spliterator2() {
        return C3056h.m130a(this.f1153a.spliterator());
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long sum() {
        return this.f1153a.sum();
    }

    @Override // java.util.stream.LongStream
    public LongSummaryStatistics summaryStatistics() {
        this.f1153a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics");
    }

    @Override // java.util.stream.LongStream
    public /* synthetic */ long[] toArray() {
        return this.f1153a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public /* synthetic */ LongStream unordered() {
        return C3017H0.m211n0(this.f1153a.unordered());
    }
}
