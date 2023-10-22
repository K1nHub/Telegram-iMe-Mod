package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3226p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2775d f1329a;

    private /* synthetic */ C3226p(Spliterator.InterfaceC2775d interfaceC2775d) {
        this.f1329a = interfaceC2775d;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m176a(Spliterator.InterfaceC2775d interfaceC2775d) {
        if (interfaceC2775d == null) {
            return null;
        }
        return interfaceC2775d instanceof C3224o ? ((C3224o) interfaceC2775d).f1327a : new C3226p(interfaceC2775d);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1329a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1329a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1329a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1329a.forEachRemaining(C3238v.m163b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1329a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1329a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1329a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1329a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1329a.mo178b(C3238v.m163b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m176a(this.f1329a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3210h.m201a(this.f1329a.trySplit());
    }
}
