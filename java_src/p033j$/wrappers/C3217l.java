package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3217l implements Spliterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2772b f1321a;

    private /* synthetic */ C3217l(Spliterator.InterfaceC2772b interfaceC2772b) {
        this.f1321a = interfaceC2772b;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m192a(Spliterator.InterfaceC2772b interfaceC2772b) {
        if (interfaceC2772b == null) {
            return null;
        }
        return interfaceC2772b instanceof C3215k ? ((C3215k) interfaceC2772b).f1319a : new C3217l(interfaceC2772b);
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
        this.f1321a.forEachRemaining(C3237v.m168b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: forEachRemaining */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1321a.mo196c(C3183N.m239b(intConsumer));
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
        return this.f1321a.mo182b(C3237v.m168b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: tryAdvance */
    public /* synthetic */ boolean tryAdvance2(IntConsumer intConsumer) {
        return this.f1321a.mo195g(C3183N.m239b(intConsumer));
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfInt trySplit() {
        return m192a(this.f1321a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3225p.m180a(this.f1321a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3209h.m205a(this.f1321a.trySplit());
    }
}
