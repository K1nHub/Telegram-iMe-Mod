package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p033j$.util.Spliterator;
/* renamed from: j$.wrappers.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3230p implements Spliterator.OfPrimitive {

    /* renamed from: a */
    final /* synthetic */ Spliterator.InterfaceC2779d f1329a;

    private /* synthetic */ C3230p(Spliterator.InterfaceC2779d interfaceC2779d) {
        this.f1329a = interfaceC2779d;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m177a(Spliterator.InterfaceC2779d interfaceC2779d) {
        if (interfaceC2779d == null) {
            return null;
        }
        return interfaceC2779d instanceof C3228o ? ((C3228o) interfaceC2779d).f1327a : new C3230p(interfaceC2779d);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1329a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1329a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1329a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1329a.forEachRemaining(C3242v.m165b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1329a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1329a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1329a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator.OfPrimitive
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1329a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1329a.mo179b(C3242v.m165b(consumer));
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m177a(this.f1329a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public /* synthetic */ java.util.Spliterator trySplit() {
        return C3214h.m202a(this.f1329a.trySplit());
    }
}
