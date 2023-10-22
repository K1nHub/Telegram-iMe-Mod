package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.InterfaceC2845p;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3206f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2845p f1309a;

    private /* synthetic */ C3206f(InterfaceC2845p interfaceC2845p) {
        this.f1309a = interfaceC2845p;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m206a(InterfaceC2845p interfaceC2845p) {
        if (interfaceC2845p == null) {
            return null;
        }
        return interfaceC2845p instanceof C3204e ? ((C3204e) interfaceC2845p).f1307a : new C3206f(interfaceC2845p);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1309a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1309a.forEachRemaining(C3238v.m163b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1309a.mo208d(C3201c0.m213b(longConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.p, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1309a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1309a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.p, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1309a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public /* synthetic */ long nextLong() {
        return this.f1309a.nextLong();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.p, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1309a.remove();
    }
}
