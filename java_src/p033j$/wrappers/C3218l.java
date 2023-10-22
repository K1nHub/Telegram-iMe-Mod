package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3218l implements Spliterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2773b f1321a;

    private /* synthetic */ C3218l(Spliterator.InterfaceC2773b interfaceC2773b) {
        this.f1321a = interfaceC2773b;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m188a(Spliterator.InterfaceC2773b interfaceC2773b) {
        if (interfaceC2773b == null) {
            return null;
        }
        return interfaceC2773b instanceof C3216k ? ((C3216k) interfaceC2773b).f1319a : new C3218l(interfaceC2773b);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1321a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1321a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1321a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1321a.forEachRemaining(C3238v.m163b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: forEachRemaining */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1321a.mo192c(C3184N.m235b(intConsumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1321a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1321a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1321a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f1321a.tryAdvance(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1321a.mo178b(C3238v.m163b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: tryAdvance */
    public /* synthetic */ boolean tryAdvance2(IntConsumer intConsumer) {
        return this.f1321a.mo191g(C3184N.m235b(intConsumer));
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfInt trySplit() {
        return m188a(this.f1321a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3226p.m176a(this.f1321a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3210h.m201a(this.f1321a.trySplit());
    }
}
