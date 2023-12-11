package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.l */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3219l implements Spliterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2774b f1321a;

    private /* synthetic */ C3219l(Spliterator.InterfaceC2774b interfaceC2774b) {
        this.f1321a = interfaceC2774b;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m189a(Spliterator.InterfaceC2774b interfaceC2774b) {
        if (interfaceC2774b == null) {
            return null;
        }
        return interfaceC2774b instanceof C3217k ? ((C3217k) interfaceC2774b).f1319a : new C3219l(interfaceC2774b);
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
        this.f1321a.forEachRemaining(C3239v.m165b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: forEachRemaining */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1321a.mo193c(C3185N.m236b(intConsumer));
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
        return this.f1321a.mo179b(C3239v.m165b(consumer));
    }

    @Override // java.util.Spliterator.OfInt
    /* renamed from: tryAdvance */
    public /* synthetic */ boolean tryAdvance2(IntConsumer intConsumer) {
        return this.f1321a.mo192g(C3185N.m236b(intConsumer));
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfInt trySplit() {
        return m189a(this.f1321a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C3227p.m177a(this.f1321a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3211h.m202a(this.f1321a.trySplit());
    }
}
