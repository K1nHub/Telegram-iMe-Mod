package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p034j$.util.InterfaceC2730q;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3096f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2730q f1179a;

    private /* synthetic */ C3096f(InterfaceC2730q interfaceC2730q) {
        this.f1179a = interfaceC2730q;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m139a(InterfaceC2730q interfaceC2730q) {
        if (interfaceC2730q == null) {
            return null;
        }
        return interfaceC2730q instanceof C3094e ? ((C3094e) interfaceC2730q).f1177a : new C3096f(interfaceC2730q);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1179a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1179a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1179a.mo142d(C3095e0.m141b(longConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1179a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1179a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1179a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public /* synthetic */ long nextLong() {
        return this.f1179a.nextLong();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1179a.remove();
    }
}
