package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p035j$.util.InterfaceC3008t;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3085p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3008t f1201a;

    private /* synthetic */ C3085p(InterfaceC3008t interfaceC3008t) {
        this.f1201a = interfaceC3008t;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m118a(InterfaceC3008t interfaceC3008t) {
        if (interfaceC3008t == null) {
            return null;
        }
        return interfaceC3008t instanceof C3083o ? ((C3083o) interfaceC3008t).f1199a : new C3085p(interfaceC3008t);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1201a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1201a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1201a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1201a.forEachRemaining(C3099w.m103b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1201a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1201a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1201a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1201a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1201a.mo122b(C3099w.m103b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m118a(this.f1201a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C3069h.m144a(this.f1201a.trySplit());
    }
}
