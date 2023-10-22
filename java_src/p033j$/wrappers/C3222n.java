package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3222n implements Spliterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2774c f1325a;

    private /* synthetic */ C3222n(Spliterator.InterfaceC2774c interfaceC2774c) {
        this.f1325a = interfaceC2774c;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfLong m181a(Spliterator.InterfaceC2774c interfaceC2774c) {
        if (interfaceC2774c == null) {
            return null;
        }
        return interfaceC2774c instanceof C3220m ? ((C3220m) interfaceC2774c).f1323a : new C3222n(interfaceC2774c);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1325a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1325a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1325a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1325a.forEachRemaining(C3238v.m163b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1325a.mo186d(C3201c0.m213b(longConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1325a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1325a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1325a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f1325a.tryAdvance(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1325a.mo178b(C3238v.m163b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f1325a.mo185i(C3201c0.m213b(longConsumer));
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfLong trySplit() {
        return m181a(this.f1325a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3226p.m176a(this.f1325a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3210h.m201a(this.f1325a.trySplit());
    }
}
