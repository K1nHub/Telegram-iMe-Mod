package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.wrappers.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2983j implements Spliterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2611s.InterfaceC2612a f1183a;

    private /* synthetic */ C2983j(InterfaceC2611s.InterfaceC2612a interfaceC2612a) {
        this.f1183a = interfaceC2612a;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfDouble m143a(InterfaceC2611s.InterfaceC2612a interfaceC2612a) {
        if (interfaceC2612a == null) {
            return null;
        }
        return interfaceC2612a instanceof C2981i ? ((C2981i) interfaceC2612a).f1181a : new C2983j(interfaceC2612a);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1183a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1183a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1183a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1183a.forEachRemaining(C3009w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1183a.mo147e(C3015z.m103b(doubleConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1183a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1183a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1183a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f1183a.tryAdvance(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1183a.mo128b(C3009w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(DoubleConsumer doubleConsumer) {
        return this.f1183a.mo146k(C3015z.m103b(doubleConsumer));
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfDouble trySplit() {
        return m143a(this.f1183a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C2995p.m124a(this.f1183a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C2979h.m150a(this.f1183a.trySplit());
    }
}
