package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2855h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2487s f1174a;

    private /* synthetic */ C2855h(InterfaceC2487s interfaceC2487s) {
        this.f1174a = interfaceC2487s;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m150a(InterfaceC2487s interfaceC2487s) {
        if (interfaceC2487s == null) {
            return null;
        }
        return interfaceC2487s instanceof C2853g ? ((C2853g) interfaceC2487s).f1172a : new C2855h(interfaceC2487s);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1174a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1174a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1174a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1174a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1174a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1174a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1174a.mo128b(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m150a(this.f1174a.trySplit());
    }
}
