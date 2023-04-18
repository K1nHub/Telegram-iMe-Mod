package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2995t;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3072p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2995t f1196a;

    private /* synthetic */ C3072p(InterfaceC2995t interfaceC2995t) {
        this.f1196a = interfaceC2995t;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m104a(InterfaceC2995t interfaceC2995t) {
        if (interfaceC2995t == null) {
            return null;
        }
        return interfaceC2995t instanceof C3070o ? ((C3070o) interfaceC2995t).f1194a : new C3072p(interfaceC2995t);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1196a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1196a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1196a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1196a.forEachRemaining(C3086w.m89b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1196a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1196a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1196a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1196a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1196a.mo108b(C3086w.m89b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m104a(this.f1196a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3056h.m130a(this.f1196a.trySplit());
    }
}
