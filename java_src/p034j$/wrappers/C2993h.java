package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2993h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2625s f1180a;

    private /* synthetic */ C2993h(InterfaceC2625s interfaceC2625s) {
        this.f1180a = interfaceC2625s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m149a(InterfaceC2625s interfaceC2625s) {
        if (interfaceC2625s == null) {
            return null;
        }
        return interfaceC2625s instanceof C2991g ? ((C2991g) interfaceC2625s).f1178a : new C2993h(interfaceC2625s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1180a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1180a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1180a.forEachRemaining(C3023w.m108b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1180a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1180a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1180a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1180a.mo127b(C3023w.m108b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m149a(this.f1180a.trySplit());
    }
}
