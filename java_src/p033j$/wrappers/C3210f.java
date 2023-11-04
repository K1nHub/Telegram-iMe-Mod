package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.InterfaceC2849p;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3210f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2849p f1309a;

    private /* synthetic */ C3210f(InterfaceC2849p interfaceC2849p) {
        this.f1309a = interfaceC2849p;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m207a(InterfaceC2849p interfaceC2849p) {
        if (interfaceC2849p == null) {
            return null;
        }
        return interfaceC2849p instanceof C3208e ? ((C3208e) interfaceC2849p).f1307a : new C3210f(interfaceC2849p);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1309a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1309a.forEachRemaining(C3242v.m165b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1309a.mo209d(C3205c0.m214b(longConsumer));
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
