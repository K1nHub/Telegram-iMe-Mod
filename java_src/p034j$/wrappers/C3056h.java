package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3056h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2688s f1180a;

    private /* synthetic */ C3056h(InterfaceC2688s interfaceC2688s) {
        this.f1180a = interfaceC2688s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m130a(InterfaceC2688s interfaceC2688s) {
        if (interfaceC2688s == null) {
            return null;
        }
        return interfaceC2688s instanceof C3054g ? ((C3054g) interfaceC2688s).f1178a : new C3056h(interfaceC2688s);
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
        this.f1180a.forEachRemaining(C3086w.m89b(consumer));
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
        return this.f1180a.mo108b(C3086w.m89b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m130a(this.f1180a.trySplit());
    }
}
