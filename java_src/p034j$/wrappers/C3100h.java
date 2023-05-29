package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3100h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2732s f1183a;

    private /* synthetic */ C3100h(InterfaceC2732s interfaceC2732s) {
        this.f1183a = interfaceC2732s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m135a(InterfaceC2732s interfaceC2732s) {
        if (interfaceC2732s == null) {
            return null;
        }
        return interfaceC2732s instanceof C3098g ? ((C3098g) interfaceC2732s).f1181a : new C3100h(interfaceC2732s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1183a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1183a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1183a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1183a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1183a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1183a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1183a.mo113b(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m135a(this.f1183a.trySplit());
    }
}
