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
import p034j$.util.AbstractC2414a;
/* renamed from: j$.wrappers.O0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2830O0 implements Stream {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.stream.Stream f1149a;

    private /* synthetic */ C2830O0(p034j$.util.stream.Stream stream) {
        this.f1149a = stream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ Stream m182n0(p034j$.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C$r8$wrapper$java$util$stream$Stream$VWRP ? ((C$r8$wrapper$java$util$stream$Stream$VWRP) stream).f1119a : new C2830O0(stream);
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean allMatch(Predicate predicate) {
        return this.f1149a.mo263W(C2886w0.m108a(predicate));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean anyMatch(Predicate predicate) {
        return this.f1149a.mo261a(C2886w0.m108a(predicate));
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1149a.close();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1149a.mo255i(C2890y0.m104a(supplier), C2873q.m122a(biConsumer), C2873q.m122a(biConsumer2));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Collector collector) {
        return this.f1149a.mo260b0(C2818I0.m226d(collector));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1149a.count();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return m182n0(this.f1149a.distinct());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream filter(Predicate predicate) {
        return m182n0(this.f1149a.mo265T(C2886w0.m108a(predicate)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2414a.m610q(this.f1149a.findAny());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2414a.m610q(this.f1149a.findFirst());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream flatMap(Function function) {
        return m182n0(this.f1149a.mo249o(C2823L.m204a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream flatMapToDouble(Function function) {
        return C2824L0.m203n0(this.f1149a.mo266E(C2823L.m204a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream flatMapToInt(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1149a.mo259c(C2823L.m204a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream flatMapToLong(Function function) {
        return C2828N0.m184n0(this.f1149a.mo262X(C2823L.m204a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1149a.forEach(C2885w.m109b(consumer));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEachOrdered(Consumer consumer) {
        this.f1149a.mo257e(C2885w.m109b(consumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1149a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1149a.iterator();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return m182n0(this.f1149a.limit(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream map(Function function) {
        return m182n0(this.f1149a.mo250n(C2823L.m204a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        return C2824L0.m203n0(this.f1149a.mo254j0(C2802A0.m246a(toDoubleFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1149a.mo252m(C2806C0.m242a(toIntFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
        return C2828N0.m184n0(this.f1149a.mo256g0(C2810E0.m237a(toLongFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2414a.m610q(this.f1149a.max(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2414a.m610q(this.f1149a.min(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean noneMatch(Predicate predicate) {
        return this.f1149a.mo258d0(C2886w0.m108a(predicate));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2816H0.m231n0(this.f1149a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return C2816H0.m231n0(this.f1149a.parallel());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream peek(Consumer consumer) {
        return m182n0(this.f1149a.mo264V(C2885w.m109b(consumer)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        return this.f1149a.mo267B(obj, C2877s.m117a(biFunction), C2881u.m113a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return this.f1149a.mo251m0(obj, C2881u.m113a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
        return AbstractC2414a.m610q(this.f1149a.mo248t(C2881u.m113a(binaryOperator)));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return C2816H0.m231n0(this.f1149a.sequential());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return m182n0(this.f1149a.skip(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return m182n0(this.f1149a.sorted());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return m182n0(this.f1149a.sorted(comparator));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C2855h.m150a(this.f1149a.spliterator());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1149a.toArray();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1149a.mo253l(C2833S.m178a(intFunction));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return C2816H0.m231n0(this.f1149a.unordered());
    }
}
