package p033j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3112U;
import p033j$.util.stream.InterfaceC3169e1;
import p033j$.util.stream.InterfaceC3179g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1223a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1223a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3335O0 ? ((C3335O0) stream).f1253a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo270B(Object obj, BiFunction biFunction, InterfaceC2955b interfaceC2955b) {
        return this.f1223a.reduce(obj, C3384t.m118a(biFunction), C3388v.m114a(interfaceC2955b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC3112U mo269E(Function function) {
        return C3327K0.m212n0(this.f1223a.flatMapToDouble(C3330M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo268T(Predicate predicate) {
        return convert(this.f1223a.filter(C3393x0.m109a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo267V(Consumer consumer) {
        return convert(this.f1223a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo266W(Predicate predicate) {
        return this.f1223a.allMatch(C3393x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC3169e1 mo265X(Function function) {
        return C3331M0.m193n0(this.f1223a.flatMapToLong(C3330M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo264a(Predicate predicate) {
        return this.f1223a.anyMatch(C3393x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo263b0(C3323I0 c3323i0) {
        return this.f1223a.collect(c3323i0 == null ? null : c3323i0.f1241a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo262c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1223a.flatMapToInt(C3330M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3179g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1223a.close();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1223a.count();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo261d0(Predicate predicate) {
        return this.f1223a.noneMatch(C3393x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1223a.distinct());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo260e(Consumer consumer) {
        this.f1223a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2919a.m616m(this.f1223a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2919a.m616m(this.f1223a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1223a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC3169e1 mo259g0(ToLongFunction toLongFunction) {
        return C3331M0.m193n0(this.f1223a.mapToLong(C3317F0.m237a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo258i(InterfaceC2978y interfaceC2978y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1223a.collect(C3397z0.m104a(interfaceC2978y), C3380r.m122a(biConsumer), C3380r.m122a(biConsumer2));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ boolean isParallel() {
        return this.f1223a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ Iterator iterator() {
        return this.f1223a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC3112U mo257j0(ToDoubleFunction toDoubleFunction) {
        return C3327K0.m212n0(this.f1223a.mapToDouble(C3309B0.m247a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo256l(InterfaceC2966m interfaceC2966m) {
        return this.f1223a.toArray(C3339T.m180a(interfaceC2966m));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1223a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo255m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1223a.mapToInt(C3313D0.m242a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo254m0(Object obj, InterfaceC2955b interfaceC2955b) {
        return this.f1223a.reduce(obj, C3388v.m114a(interfaceC2955b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2919a.m616m(this.f1223a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2919a.m616m(this.f1223a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo253n(Function function) {
        return convert(this.f1223a.map(C3330M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo252o(Function function) {
        return convert(this.f1223a.flatMap(C3330M.m205a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g onClose(Runnable runnable) {
        return C3319G0.m236n0(this.f1223a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g parallel() {
        return C3319G0.m236n0(this.f1223a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g sequential() {
        return C3319G0.m236n0(this.f1223a.sequential());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1223a.skip(j));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1223a.sorted());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1223a.sorted(comparator));
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s spliterator() {
        return C3358g.m155a(this.f1223a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo251t(InterfaceC2955b interfaceC2955b) {
        return AbstractC2919a.m616m(this.f1223a.reduce(C3388v.m114a(interfaceC2955b)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1223a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g unordered() {
        return C3319G0.m236n0(this.f1223a.unordered());
    }
}
