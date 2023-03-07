package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p034j$.util.InterfaceC2485q;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2851f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2485q f1170a;

    private /* synthetic */ C2851f(InterfaceC2485q interfaceC2485q) {
        this.f1170a = interfaceC2485q;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m154a(InterfaceC2485q interfaceC2485q) {
        if (interfaceC2485q == null) {
            return null;
        }
        return interfaceC2485q instanceof C2849e ? ((C2849e) interfaceC2485q).f1168a : new C2851f(interfaceC2485q);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1170a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1170a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1170a.mo157d(C2850e0.m156b(longConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1170a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1170a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1170a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public /* synthetic */ long nextLong() {
        return this.f1170a.nextLong();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1170a.remove();
    }
}
