package p034j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.stream.BaseStream;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p034j$.util.AbstractC2659a;
/* renamed from: j$.wrappers.O0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3075O0 implements Stream {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.stream.Stream f1158a;

    private /* synthetic */ C3075O0(p034j$.util.stream.Stream stream) {
        this.f1158a = stream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ Stream m167n0(p034j$.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C$r8$wrapper$java$util$stream$Stream$VWRP ? ((C$r8$wrapper$java$util$stream$Stream$VWRP) stream).f1128a : new C3075O0(stream);
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean allMatch(Predicate predicate) {
        return this.f1158a.mo248W(C3131w0.m93a(predicate));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean anyMatch(Predicate predicate) {
        return this.f1158a.mo246a(C3131w0.m93a(predicate));
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1158a.close();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1158a.mo240i(C3135y0.m89a(supplier), C3118q.m107a(biConsumer), C3118q.m107a(biConsumer2));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Collector collector) {
        return this.f1158a.mo245b0(C3063I0.m211d(collector));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1158a.count();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return m167n0(this.f1158a.distinct());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream filter(Predicate predicate) {
        return m167n0(this.f1158a.mo250T(C3131w0.m93a(predicate)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2659a.m594q(this.f1158a.findAny());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2659a.m594q(this.f1158a.findFirst());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream flatMap(Function function) {
        return m167n0(this.f1158a.mo234o(C3068L.m189a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream flatMapToDouble(Function function) {
        return C3069L0.m188n0(this.f1158a.mo251E(C3068L.m189a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream flatMapToInt(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1158a.mo244c(C3068L.m189a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream flatMapToLong(Function function) {
        return C3073N0.m169n0(this.f1158a.mo247X(C3068L.m189a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1158a.forEach(C3130w.m94b(consumer));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEachOrdered(Consumer consumer) {
        this.f1158a.mo242e(C3130w.m94b(consumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1158a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1158a.iterator();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return m167n0(this.f1158a.limit(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream map(Function function) {
        return m167n0(this.f1158a.mo235n(C3068L.m189a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        return C3069L0.m188n0(this.f1158a.mo239j0(C3047A0.m231a(toDoubleFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1158a.mo237m(C3051C0.m227a(toIntFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
        return C3073N0.m169n0(this.f1158a.mo241g0(C3055E0.m222a(toLongFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2659a.m594q(this.f1158a.max(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2659a.m594q(this.f1158a.min(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean noneMatch(Predicate predicate) {
        return this.f1158a.mo243d0(C3131w0.m93a(predicate));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C3061H0.m216n0(this.f1158a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return C3061H0.m216n0(this.f1158a.parallel());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream peek(Consumer consumer) {
        return m167n0(this.f1158a.mo249V(C3130w.m94b(consumer)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        return this.f1158a.mo252B(obj, C3122s.m102a(biFunction), C3126u.m98a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return this.f1158a.mo236m0(obj, C3126u.m98a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
        return AbstractC2659a.m594q(this.f1158a.mo233t(C3126u.m98a(binaryOperator)));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return C3061H0.m216n0(this.f1158a.sequential());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return m167n0(this.f1158a.skip(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return m167n0(this.f1158a.sorted());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return m167n0(this.f1158a.sorted(comparator));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3100h.m135a(this.f1158a.spliterator());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1158a.toArray();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1158a.mo238l(C3078S.m163a(intFunction));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return C3061H0.m216n0(this.f1158a.unordered());
    }
}
