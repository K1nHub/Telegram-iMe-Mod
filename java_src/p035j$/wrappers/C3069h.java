package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3069h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2701s f1185a;

    private /* synthetic */ C3069h(InterfaceC2701s interfaceC2701s) {
        this.f1185a = interfaceC2701s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m144a(InterfaceC2701s interfaceC2701s) {
        if (interfaceC2701s == null) {
            return null;
        }
        return interfaceC2701s instanceof C3067g ? ((C3067g) interfaceC2701s).f1183a : new C3069h(interfaceC2701s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1185a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1185a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1185a.forEachRemaining(C3099w.m103b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1185a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1185a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1185a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1185a.mo122b(C3099w.m103b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m144a(this.f1185a.trySplit());
    }
}
