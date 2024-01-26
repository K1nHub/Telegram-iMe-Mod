package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.InterfaceC2844p;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3205f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2844p f1309a;

    private /* synthetic */ C3205f(InterfaceC2844p interfaceC2844p) {
        this.f1309a = interfaceC2844p;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m210a(InterfaceC2844p interfaceC2844p) {
        if (interfaceC2844p == null) {
            return null;
        }
        return interfaceC2844p instanceof C3203e ? ((C3203e) interfaceC2844p).f1307a : new C3205f(interfaceC2844p);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1309a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1309a.forEachRemaining(C3237v.m168b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1309a.mo212d(C3200c0.m217b(longConsumer));
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
