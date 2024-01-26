package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3225p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2774d f1329a;

    private /* synthetic */ C3225p(Spliterator.InterfaceC2774d interfaceC2774d) {
        this.f1329a = interfaceC2774d;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m180a(Spliterator.InterfaceC2774d interfaceC2774d) {
        if (interfaceC2774d == null) {
            return null;
        }
        return interfaceC2774d instanceof C3223o ? ((C3223o) interfaceC2774d).f1327a : new C3225p(interfaceC2774d);
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
        this.f1329a.forEachRemaining(C3237v.m168b(consumer));
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
        return this.f1329a.mo182b(C3237v.m168b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m180a(this.f1329a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3209h.m205a(this.f1329a.trySplit());
    }
}
