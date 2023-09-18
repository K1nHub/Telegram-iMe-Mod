package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3276h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2908s f1269a;

    private /* synthetic */ C3276h(InterfaceC2908s interfaceC2908s) {
        this.f1269a = interfaceC2908s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m153a(InterfaceC2908s interfaceC2908s) {
        if (interfaceC2908s == null) {
            return null;
        }
        return interfaceC2908s instanceof C3274g ? ((C3274g) interfaceC2908s).f1267a : new C3276h(interfaceC2908s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1269a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1269a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1269a.forEachRemaining(C3306w.m112b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1269a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1269a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1269a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1269a.mo131b(C3306w.m112b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m153a(this.f1269a.trySplit());
    }
}
