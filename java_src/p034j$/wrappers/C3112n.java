package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.wrappers.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3112n implements Spliterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2732s.InterfaceC2735c f1195a;

    private /* synthetic */ C3112n(InterfaceC2732s.InterfaceC2735c interfaceC2735c) {
        this.f1195a = interfaceC2735c;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfLong m115a(InterfaceC2732s.InterfaceC2735c interfaceC2735c) {
        if (interfaceC2735c == null) {
            return null;
        }
        return interfaceC2735c instanceof C3110m ? ((C3110m) interfaceC2735c).f1193a : new C3112n(interfaceC2735c);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1195a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1195a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1195a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1195a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1195a.mo119d(C3095e0.m141b(longConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1195a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1195a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1195a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f1195a.tryAdvance(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1195a.mo113b(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f1195a.mo118i(C3095e0.m141b(longConsumer));
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfLong trySplit() {
        return m115a(this.f1195a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3116p.m109a(this.f1195a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3100h.m135a(this.f1195a.trySplit());
    }
}
