package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.InterfaceC2851q;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3217f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2851q f1264a;

    private /* synthetic */ C3217f(InterfaceC2851q interfaceC2851q) {
        this.f1264a = interfaceC2851q;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m157a(InterfaceC2851q interfaceC2851q) {
        if (interfaceC2851q == null) {
            return null;
        }
        return interfaceC2851q instanceof C3215e ? ((C3215e) interfaceC2851q).f1262a : new C3217f(interfaceC2851q);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1264a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1264a.forEachRemaining(C3251w.m112b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1264a.mo160d(C3216e0.m159b(longConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1264a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1264a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1264a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public /* synthetic */ long nextLong() {
        return this.f1264a.nextLong();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1264a.remove();
    }
}
