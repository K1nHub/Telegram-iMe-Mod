package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2979h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2611s f1179a;

    private /* synthetic */ C2979h(InterfaceC2611s interfaceC2611s) {
        this.f1179a = interfaceC2611s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m150a(InterfaceC2611s interfaceC2611s) {
        if (interfaceC2611s == null) {
            return null;
        }
        return interfaceC2611s instanceof C2977g ? ((C2977g) interfaceC2611s).f1177a : new C2979h(interfaceC2611s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1179a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1179a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1179a.forEachRemaining(C3009w.m109b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1179a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1179a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1179a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1179a.mo128b(C3009w.m109b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m150a(this.f1179a.trySplit());
    }
}
