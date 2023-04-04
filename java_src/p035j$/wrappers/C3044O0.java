package p035j$.wrappers;

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
import p035j$.util.AbstractC2628a;
/* renamed from: j$.wrappers.O0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3044O0 implements Stream {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.stream.Stream f1160a;

    private /* synthetic */ C3044O0(p035j$.util.stream.Stream stream) {
        this.f1160a = stream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ Stream m176n0(p035j$.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C$r8$wrapper$java$util$stream$Stream$VWRP ? ((C$r8$wrapper$java$util$stream$Stream$VWRP) stream).f1130a : new C3044O0(stream);
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean allMatch(Predicate predicate) {
        return this.f1160a.mo257W(C3100w0.m102a(predicate));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean anyMatch(Predicate predicate) {
        return this.f1160a.mo255a(C3100w0.m102a(predicate));
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1160a.close();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1160a.mo249i(C3104y0.m98a(supplier), C3087q.m116a(biConsumer), C3087q.m116a(biConsumer2));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Collector collector) {
        return this.f1160a.mo254b0(C3032I0.m220d(collector));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1160a.count();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return m176n0(this.f1160a.distinct());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream filter(Predicate predicate) {
        return m176n0(this.f1160a.mo259T(C3100w0.m102a(predicate)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2628a.m604q(this.f1160a.findAny());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2628a.m604q(this.f1160a.findFirst());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream flatMap(Function function) {
        return m176n0(this.f1160a.mo243o(C3037L.m198a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream flatMapToDouble(Function function) {
        return C3038L0.m197n0(this.f1160a.mo260E(C3037L.m198a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream flatMapToInt(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1160a.mo253c(C3037L.m198a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream flatMapToLong(Function function) {
        return C3042N0.m178n0(this.f1160a.mo256X(C3037L.m198a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1160a.forEach(C3099w.m103b(consumer));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEachOrdered(Consumer consumer) {
        this.f1160a.mo251e(C3099w.m103b(consumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1160a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1160a.iterator();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return m176n0(this.f1160a.limit(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream map(Function function) {
        return m176n0(this.f1160a.mo244n(C3037L.m198a(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        return C3038L0.m197n0(this.f1160a.mo248j0(C3016A0.m240a(toDoubleFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1160a.mo246m(C3020C0.m236a(toIntFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
        return C3042N0.m178n0(this.f1160a.mo250g0(C3024E0.m231a(toLongFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2628a.m604q(this.f1160a.max(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2628a.m604q(this.f1160a.min(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean noneMatch(Predicate predicate) {
        return this.f1160a.mo252d0(C3100w0.m102a(predicate));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C3030H0.m225n0(this.f1160a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return C3030H0.m225n0(this.f1160a.parallel());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream peek(Consumer consumer) {
        return m176n0(this.f1160a.mo258V(C3099w.m103b(consumer)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        return this.f1160a.mo261B(obj, C3091s.m111a(biFunction), C3095u.m107a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return this.f1160a.mo245m0(obj, C3095u.m107a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
        return AbstractC2628a.m604q(this.f1160a.mo242t(C3095u.m107a(binaryOperator)));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return C3030H0.m225n0(this.f1160a.sequential());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return m176n0(this.f1160a.skip(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return m176n0(this.f1160a.sorted());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return m176n0(this.f1160a.sorted(comparator));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3069h.m144a(this.f1160a.spliterator());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1160a.toArray();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1160a.mo247l(C3047S.m172a(intFunction));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return C3030H0.m225n0(this.f1160a.unordered());
    }
}
