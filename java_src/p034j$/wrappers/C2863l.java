package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.wrappers.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2863l implements Spliterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2487s.InterfaceC2489b f1182a;

    private /* synthetic */ C2863l(InterfaceC2487s.InterfaceC2489b interfaceC2489b) {
        this.f1182a = interfaceC2489b;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m136a(InterfaceC2487s.InterfaceC2489b interfaceC2489b) {
        if (interfaceC2489b == null) {
            return null;
        }
        return interfaceC2489b instanceof C2861k ? ((C2861k) interfaceC2489b).f1180a : new C2863l(interfaceC2489b);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1182a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1182a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1182a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1182a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1182a.mo140c(C2831P.m181b(intConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1182a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1182a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1182a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f1182a.tryAdvance(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1182a.mo128b(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(IntConsumer intConsumer) {
        return this.f1182a.mo139g(C2831P.m181b(intConsumer));
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfInt trySplit() {
        return m136a(this.f1182a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C2871p.m124a(this.f1182a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C2855h.m150a(this.f1182a.trySplit());
    }
}
