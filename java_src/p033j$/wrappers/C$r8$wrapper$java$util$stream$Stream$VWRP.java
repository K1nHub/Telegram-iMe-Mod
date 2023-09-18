package p033j$.wrappers;

import java.util.Comparator;
import java.util.Iterator;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.Optional;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.util.stream.IntStream;
import p033j$.util.stream.InterfaceC3028U;
import p033j$.util.stream.InterfaceC3085e1;
import p033j$.util.stream.InterfaceC3095g;
import p033j$.util.stream.Stream;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$stream$Stream$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$stream$Stream$VWRP implements Stream {

    /* renamed from: a */
    final /* synthetic */ java.util.stream.Stream f1214a;

    private /* synthetic */ C$r8$wrapper$java$util$stream$Stream$VWRP(java.util.stream.Stream stream) {
        this.f1214a = stream;
    }

    public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof C3251O0 ? ((C3251O0) stream).f1244a : new C$r8$wrapper$java$util$stream$Stream$VWRP(stream);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: B */
    public /* synthetic */ Object mo270B(Object obj, BiFunction biFunction, InterfaceC2871b interfaceC2871b) {
        return this.f1214a.reduce(obj, C3300t.m118a(biFunction), C3304v.m114a(interfaceC2871b));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: E */
    public /* synthetic */ InterfaceC3028U mo269E(Function function) {
        return C3243K0.m212n0(this.f1214a.flatMapToDouble(C3246M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: T */
    public /* synthetic */ Stream mo268T(Predicate predicate) {
        return convert(this.f1214a.filter(C3309x0.m109a(predicate)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: V */
    public /* synthetic */ Stream mo267V(Consumer consumer) {
        return convert(this.f1214a.peek(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: W */
    public /* synthetic */ boolean mo266W(Predicate predicate) {
        return this.f1214a.allMatch(C3309x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: X */
    public /* synthetic */ InterfaceC3085e1 mo265X(Function function) {
        return C3247M0.m193n0(this.f1214a.flatMapToLong(C3246M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: a */
    public /* synthetic */ boolean mo264a(Predicate predicate) {
        return this.f1214a.anyMatch(C3309x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: b0 */
    public /* synthetic */ Object mo263b0(C3239I0 c3239i0) {
        return this.f1214a.collect(c3239i0 == null ? null : c3239i0.f1232a);
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: c */
    public /* synthetic */ IntStream mo262c(Function function) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1214a.flatMapToInt(C3246M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream, p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1214a.close();
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ long count() {
        return this.f1214a.count();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: d0 */
    public /* synthetic */ boolean mo261d0(Predicate predicate) {
        return this.f1214a.noneMatch(C3309x0.m109a(predicate));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream distinct() {
        return convert(this.f1214a.distinct());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: e */
    public /* synthetic */ void mo260e(Consumer consumer) {
        this.f1214a.forEachOrdered(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findAny() {
        return AbstractC2835a.m616m(this.f1214a.findAny());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional findFirst() {
        return AbstractC2835a.m616m(this.f1214a.findFirst());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ void forEach(Consumer consumer) {
        this.f1214a.forEach(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: g0 */
    public /* synthetic */ InterfaceC3085e1 mo259g0(ToLongFunction toLongFunction) {
        return C3247M0.m193n0(this.f1214a.mapToLong(C3233F0.m237a(toLongFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: i */
    public /* synthetic */ Object mo258i(InterfaceC2894y interfaceC2894y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.f1214a.collect(C3313z0.m104a(interfaceC2894y), C3296r.m122a(biConsumer), C3296r.m122a(biConsumer2));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ boolean isParallel() {
        return this.f1214a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ Iterator iterator() {
        return this.f1214a.iterator();
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: j0 */
    public /* synthetic */ InterfaceC3028U mo257j0(ToDoubleFunction toDoubleFunction) {
        return C3243K0.m212n0(this.f1214a.mapToDouble(C3225B0.m247a(toDoubleFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: l */
    public /* synthetic */ Object[] mo256l(InterfaceC2882m interfaceC2882m) {
        return this.f1214a.toArray(C3255T.m180a(interfaceC2882m));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream limit(long j) {
        return convert(this.f1214a.limit(j));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m */
    public /* synthetic */ IntStream mo255m(ToIntFunction toIntFunction) {
        return C$r8$wrapper$java$util$stream$IntStream$VWRP.convert(this.f1214a.mapToInt(C3229D0.m242a(toIntFunction)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: m0 */
    public /* synthetic */ Object mo254m0(Object obj, InterfaceC2871b interfaceC2871b) {
        return this.f1214a.reduce(obj, C3304v.m114a(interfaceC2871b));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC2835a.m616m(this.f1214a.max(comparator));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC2835a.m616m(this.f1214a.min(comparator));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: n */
    public /* synthetic */ Stream mo253n(Function function) {
        return convert(this.f1214a.map(C3246M.m205a(function)));
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: o */
    public /* synthetic */ Stream mo252o(Function function) {
        return convert(this.f1214a.flatMap(C3246M.m205a(function)));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g onClose(Runnable runnable) {
        return C3235G0.m236n0(this.f1214a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g parallel() {
        return C3235G0.m236n0(this.f1214a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g sequential() {
        return C3235G0.m236n0(this.f1214a.sequential());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream skip(long j) {
        return convert(this.f1214a.skip(j));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted() {
        return convert(this.f1214a.sorted());
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Stream sorted(Comparator comparator) {
        return convert(this.f1214a.sorted(comparator));
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s spliterator() {
        return C3274g.m155a(this.f1214a.spliterator());
    }

    @Override // p033j$.util.stream.Stream
    /* renamed from: t */
    public /* synthetic */ Optional mo251t(InterfaceC2871b interfaceC2871b) {
        return AbstractC2835a.m616m(this.f1214a.reduce(C3304v.m114a(interfaceC2871b)));
    }

    @Override // p033j$.util.stream.Stream
    public /* synthetic */ Object[] toArray() {
        return this.f1214a.toArray();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g unordered() {
        return C3235G0.m236n0(this.f1214a.unordered());
    }
}
