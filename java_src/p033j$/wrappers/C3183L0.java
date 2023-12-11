package p033j$.wrappers;

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
import p033j$.util.AbstractC2840k;
/* renamed from: j$.wrappers.L0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3183L0 implements Stream {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.stream.Stream f1285a;

    private /* synthetic */ C3183L0(p033j$.util.stream.Stream stream) {
        this.f1285a = stream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ Stream m238m0(p033j$.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C$r8$wrapper$java$util$stream$Stream$VWRP ? ((C$r8$wrapper$java$util$stream$Stream$VWRP) stream).f1261a : new C3183L0(stream);
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean allMatch(Predicate predicate) {
        return this.f1285a.mo312V(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean anyMatch(Predicate predicate) {
        return this.f1285a.mo310a(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1285a.close();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1285a.mo304i(C3240v0.m164a(supplier), C3229q.m175a(biConsumer), C3229q.m175a(biConsumer2));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object collect(Collector collector) {
        return this.f1285a.mo309a0(C3171F0.m282d(collector));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1285a.count();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return m238m0(this.f1285a.distinct());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream filter(Predicate predicate) {
        return m238m0(this.f1285a.mo314S(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2840k.m593m(this.f1285a.findAny());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2840k.m593m(this.f1285a.findFirst());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream flatMap(Function function) {
        return m238m0(this.f1285a.mo299n(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream flatMapToDouble(Function function) {
        return C3177I0.m259m0(this.f1285a.mo315D(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream flatMapToInt(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1285a.mo308c(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream flatMapToLong(Function function) {
        return C3181K0.m240m0(this.f1285a.mo311W(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1285a.forEach(C3239v.m165b(consumer));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ void forEachOrdered(Consumer consumer) {
        this.f1285a.mo306e(C3239v.m165b(consumer));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1285a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1285a.iterator();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return m238m0(this.f1285a.limit(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream map(Function function) {
        return m238m0(this.f1285a.mo300m(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        return C3177I0.m259m0(this.f1285a.mo303i0(C3244x0.m160a(toDoubleFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(this.f1285a.mo302l(C3248z0.m155a(toIntFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
        return C3181K0.m240m0(this.f1285a.mo305f0(C3163B0.m294a(toLongFunction)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2840k.m593m(this.f1285a.max(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2840k.m593m(this.f1285a.min(comparator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ boolean noneMatch(Predicate predicate) {
        return this.f1285a.mo307c0(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C3169E0.m286m0(this.f1285a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return C3169E0.m286m0(this.f1285a.parallel());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream peek(Consumer consumer) {
        return m238m0(this.f1285a.mo313U(C3239v.m165b(consumer)));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        return this.f1285a.mo316A(obj, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction), C3235t.m169a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return this.f1285a.mo301l0(obj, C3235t.m169a(binaryOperator));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
        return AbstractC2840k.m593m(this.f1285a.mo298s(C3235t.m169a(binaryOperator)));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return C3169E0.m286m0(this.f1285a.sequential());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return m238m0(this.f1285a.skip(j));
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return m238m0(this.f1285a.sorted());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return m238m0(this.f1285a.sorted(comparator));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3211h.m202a(this.f1285a.spliterator());
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1285a.toArray();
    }

    @Override // java.util.stream.Stream
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.f1285a.toArray(C3187P.m233a(intFunction));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return C3169E0.m286m0(this.f1285a.unordered());
    }
}
