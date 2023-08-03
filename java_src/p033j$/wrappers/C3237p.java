package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3237p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3160t f1284a;

    private /* synthetic */ C3237p(InterfaceC3160t interfaceC3160t) {
        this.f1284a = interfaceC3160t;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m127a(InterfaceC3160t interfaceC3160t) {
        if (interfaceC3160t == null) {
            return null;
        }
        return interfaceC3160t instanceof C3235o ? ((C3235o) interfaceC3160t).f1282a : new C3237p(interfaceC3160t);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1284a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1284a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1284a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1284a.forEachRemaining(C3251w.m112b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1284a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1284a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1284a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1284a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1284a.mo131b(C3251w.m112b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m127a(this.f1284a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3221h.m153a(this.f1284a.trySplit());
    }
}
