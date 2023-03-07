package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.wrappers.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2859j implements Spliterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2487s.InterfaceC2488a f1178a;

    private /* synthetic */ C2859j(InterfaceC2487s.InterfaceC2488a interfaceC2488a) {
        this.f1178a = interfaceC2488a;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfDouble m143a(InterfaceC2487s.InterfaceC2488a interfaceC2488a) {
        if (interfaceC2488a == null) {
            return null;
        }
        return interfaceC2488a instanceof C2857i ? ((C2857i) interfaceC2488a).f1176a : new C2859j(interfaceC2488a);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1178a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1178a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1178a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1178a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1178a.mo147e(C2891z.m103b(doubleConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1178a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1178a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1178a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f1178a.tryAdvance(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1178a.mo128b(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(DoubleConsumer doubleConsumer) {
        return this.f1178a.mo146k(C2891z.m103b(doubleConsumer));
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfDouble trySplit() {
        return m143a(this.f1178a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C2871p.m124a(this.f1178a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C2855h.m150a(this.f1178a.trySplit());
    }
}
