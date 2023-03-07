package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.wrappers.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2867n implements Spliterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2487s.InterfaceC2490c f1186a;

    private /* synthetic */ C2867n(InterfaceC2487s.InterfaceC2490c interfaceC2490c) {
        this.f1186a = interfaceC2490c;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfLong m130a(InterfaceC2487s.InterfaceC2490c interfaceC2490c) {
        if (interfaceC2490c == null) {
            return null;
        }
        return interfaceC2490c instanceof C2865m ? ((C2865m) interfaceC2490c).f1184a : new C2867n(interfaceC2490c);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1186a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1186a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1186a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1186a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1186a.mo134d(C2850e0.m156b(longConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1186a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1186a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1186a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f1186a.tryAdvance(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1186a.mo128b(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f1186a.mo133i(C2850e0.m156b(longConsumer));
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfLong trySplit() {
        return m130a(this.f1186a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C2871p.m124a(this.f1186a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C2855h.m150a(this.f1186a.trySplit());
    }
}
