package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.InterfaceC2846p;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3207f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2846p f1309a;

    private /* synthetic */ C3207f(InterfaceC2846p interfaceC2846p) {
        this.f1309a = interfaceC2846p;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m207a(InterfaceC2846p interfaceC2846p) {
        if (interfaceC2846p == null) {
            return null;
        }
        return interfaceC2846p instanceof C3205e ? ((C3205e) interfaceC2846p).f1307a : new C3207f(interfaceC2846p);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1309a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1309a.forEachRemaining(C3239v.m165b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1309a.mo209d(C3202c0.m214b(longConsumer));
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
