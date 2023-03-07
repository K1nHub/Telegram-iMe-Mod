package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p034j$.util.InterfaceC2794t;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2871p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2794t f1190a;

    private /* synthetic */ C2871p(InterfaceC2794t interfaceC2794t) {
        this.f1190a = interfaceC2794t;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m124a(InterfaceC2794t interfaceC2794t) {
        if (interfaceC2794t == null) {
            return null;
        }
        return interfaceC2794t instanceof C2869o ? ((C2869o) interfaceC2794t).f1188a : new C2871p(interfaceC2794t);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1190a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1190a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1190a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1190a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1190a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1190a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1190a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1190a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1190a.mo128b(C2885w.m109b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m124a(this.f1190a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return C2855h.m150a(this.f1190a.trySplit());
    }
}
