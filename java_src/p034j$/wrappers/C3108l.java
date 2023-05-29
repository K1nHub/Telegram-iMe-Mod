package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.wrappers.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3108l implements Spliterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2732s.InterfaceC2734b f1191a;

    private /* synthetic */ C3108l(InterfaceC2732s.InterfaceC2734b interfaceC2734b) {
        this.f1191a = interfaceC2734b;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m121a(InterfaceC2732s.InterfaceC2734b interfaceC2734b) {
        if (interfaceC2734b == null) {
            return null;
        }
        return interfaceC2734b instanceof C3106k ? ((C3106k) interfaceC2734b).f1189a : new C3108l(interfaceC2734b);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1191a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1191a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1191a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1191a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: forEachRemaining */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1191a.mo125c(C3076P.m166b(intConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1191a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1191a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1191a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f1191a.tryAdvance(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1191a.mo113b(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: tryAdvance */
    public /* synthetic */ boolean tryAdvance2(IntConsumer intConsumer) {
        return this.f1191a.mo124g(C3076P.m166b(intConsumer));
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfInt trySplit() {
        return m121a(this.f1191a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3116p.m109a(this.f1191a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3100h.m135a(this.f1191a.trySplit());
    }
}
