package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.wrappers.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3073j implements Spliterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2701s.InterfaceC2702a f1189a;

    private /* synthetic */ C3073j(InterfaceC2701s.InterfaceC2702a interfaceC2702a) {
        this.f1189a = interfaceC2702a;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfDouble m137a(InterfaceC2701s.InterfaceC2702a interfaceC2702a) {
        if (interfaceC2702a == null) {
            return null;
        }
        return interfaceC2702a instanceof C3071i ? ((C3071i) interfaceC2702a).f1187a : new C3073j(interfaceC2702a);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1189a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1189a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1189a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1189a.forEachRemaining(C3099w.m103b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1189a.mo141e(C3105z.m97b(doubleConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1189a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1189a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1189a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f1189a.tryAdvance(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1189a.mo122b(C3099w.m103b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(DoubleConsumer doubleConsumer) {
        return this.f1189a.mo140k(C3105z.m97b(doubleConsumer));
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfDouble trySplit() {
        return m137a(this.f1189a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3085p.m118a(this.f1189a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3069h.m144a(this.f1189a.trySplit());
    }
}
