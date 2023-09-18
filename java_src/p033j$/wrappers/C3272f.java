package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p033j$.util.InterfaceC2906q;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3272f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2906q f1265a;

    private /* synthetic */ C3272f(InterfaceC2906q interfaceC2906q) {
        this.f1265a = interfaceC2906q;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m157a(InterfaceC2906q interfaceC2906q) {
        if (interfaceC2906q == null) {
            return null;
        }
        return interfaceC2906q instanceof C3270e ? ((C3270e) interfaceC2906q).f1263a : new C3272f(interfaceC2906q);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1265a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1265a.forEachRemaining(C3306w.m112b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1265a.mo160d(C3271e0.m159b(longConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1265a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1265a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1265a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public /* synthetic */ long nextLong() {
        return this.f1265a.nextLong();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1265a.remove();
    }
}
