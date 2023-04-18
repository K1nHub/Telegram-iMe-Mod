package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.wrappers.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3068n implements Spliterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2688s.InterfaceC2691c f1192a;

    private /* synthetic */ C3068n(InterfaceC2688s.InterfaceC2691c interfaceC2691c) {
        this.f1192a = interfaceC2691c;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfLong m110a(InterfaceC2688s.InterfaceC2691c interfaceC2691c) {
        if (interfaceC2691c == null) {
            return null;
        }
        return interfaceC2691c instanceof C3066m ? ((C3066m) interfaceC2691c).f1190a : new C3068n(interfaceC2691c);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1192a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1192a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1192a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1192a.forEachRemaining(C3086w.m89b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1192a.mo114d(C3051e0.m136b(longConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1192a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1192a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1192a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f1192a.tryAdvance(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1192a.mo108b(C3086w.m89b(consumer));
    }

    @Override // java.util.Spliterator.OfLong
    /* renamed from: tryAdvance  reason: avoid collision after fix types in other method */
    public /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f1192a.mo113i(C3051e0.m136b(longConsumer));
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfLong trySplit() {
        return m110a(this.f1192a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3072p.m104a(this.f1192a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3056h.m130a(this.f1192a.trySplit());
    }
}
