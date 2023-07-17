package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3221h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2853s f1265a;

    private /* synthetic */ C3221h(InterfaceC2853s interfaceC2853s) {
        this.f1265a = interfaceC2853s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m135a(InterfaceC2853s interfaceC2853s) {
        if (interfaceC2853s == null) {
            return null;
        }
        return interfaceC2853s instanceof C3219g ? ((C3219g) interfaceC2853s).f1263a : new C3221h(interfaceC2853s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1265a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1265a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1265a.forEachRemaining(C3251w.m94b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1265a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1265a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1265a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1265a.mo113b(C3251w.m94b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m135a(this.f1265a.trySplit());
    }
}
