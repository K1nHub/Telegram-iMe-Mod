package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.wrappers.j */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3104j implements Spliterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2732s.InterfaceC2733a f1187a;

    private /* synthetic */ C3104j(InterfaceC2732s.InterfaceC2733a interfaceC2733a) {
        this.f1187a = interfaceC2733a;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfDouble m128a(InterfaceC2732s.InterfaceC2733a interfaceC2733a) {
        if (interfaceC2733a == null) {
            return null;
        }
        return interfaceC2733a instanceof C3102i ? ((C3102i) interfaceC2733a).f1185a : new C3104j(interfaceC2733a);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1187a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1187a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1187a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1187a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1187a.mo132e(C3136z.m88b(doubleConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1187a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1187a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1187a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f1187a.tryAdvance(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1187a.mo113b(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfDouble
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(DoubleConsumer doubleConsumer) {
        return this.f1187a.mo131k(C3136z.m88b(doubleConsumer));
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfDouble trySplit() {
        return m128a(this.f1187a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3116p.m109a(this.f1187a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3100h.m135a(this.f1187a.trySplit());
    }
}
