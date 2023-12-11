package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3227p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2776d f1329a;

    private /* synthetic */ C3227p(Spliterator.InterfaceC2776d interfaceC2776d) {
        this.f1329a = interfaceC2776d;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m177a(Spliterator.InterfaceC2776d interfaceC2776d) {
        if (interfaceC2776d == null) {
            return null;
        }
        return interfaceC2776d instanceof C3225o ? ((C3225o) interfaceC2776d).f1327a : new C3227p(interfaceC2776d);
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
        this.f1329a.forEachRemaining(C3239v.m165b(consumer));
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
        return this.f1329a.mo179b(C3239v.m165b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m177a(this.f1329a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3211h.m202a(this.f1329a.trySplit());
    }
}
