package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC3039t;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3116p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3039t f1199a;

    private /* synthetic */ C3116p(InterfaceC3039t interfaceC3039t) {
        this.f1199a = interfaceC3039t;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m109a(InterfaceC3039t interfaceC3039t) {
        if (interfaceC3039t == null) {
            return null;
        }
        return interfaceC3039t instanceof C3114o ? ((C3114o) interfaceC3039t).f1197a : new C3116p(interfaceC3039t);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1199a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1199a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1199a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1199a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1199a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1199a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1199a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1199a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1199a.mo113b(C3130w.m94b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m109a(this.f1199a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3100h.m135a(this.f1199a.trySplit());
    }
}
