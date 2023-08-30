package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3360h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2992s f1278a;

    private /* synthetic */ C3360h(InterfaceC2992s interfaceC2992s) {
        this.f1278a = interfaceC2992s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m153a(InterfaceC2992s interfaceC2992s) {
        if (interfaceC2992s == null) {
            return null;
        }
        return interfaceC2992s instanceof C3358g ? ((C3358g) interfaceC2992s).f1276a : new C3360h(interfaceC2992s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1278a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1278a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1278a.forEachRemaining(C3390w.m112b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1278a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1278a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1278a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1278a.mo131b(C3390w.m112b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m153a(this.f1278a.trySplit());
    }
}
