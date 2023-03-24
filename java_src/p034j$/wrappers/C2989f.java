package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p034j$.util.InterfaceC2623q;
/* renamed from: j$.wrappers.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2989f implements PrimitiveIterator.OfLong {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2623q f1176a;

    private /* synthetic */ C2989f(InterfaceC2623q interfaceC2623q) {
        this.f1176a = interfaceC2623q;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfLong m153a(InterfaceC2623q interfaceC2623q) {
        if (interfaceC2623q == null) {
            return null;
        }
        return interfaceC2623q instanceof C2987e ? ((C2987e) interfaceC2623q).f1174a : new C2989f(interfaceC2623q);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f1176a.forEachRemaining(longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1176a.forEachRemaining(C3023w.m108b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f1176a.mo156d(C2988e0.m155b(longConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1176a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1176a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1176a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public /* synthetic */ long nextLong() {
        return this.f1176a.nextLong();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.q, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1176a.remove();
    }
}
