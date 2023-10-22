package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p033j$.util.InterfaceC2842n;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3202d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2842n.InterfaceC2843a f1305a;

    private /* synthetic */ C3202d(InterfaceC2842n.InterfaceC2843a interfaceC2843a) {
        this.f1305a = interfaceC2843a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m211a(InterfaceC2842n.InterfaceC2843a interfaceC2843a) {
        if (interfaceC2843a == null) {
            return null;
        }
        return interfaceC2843a instanceof C3200c ? ((C3200c) interfaceC2843a).f1303a : new C3202d(interfaceC2843a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1305a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1305a.forEachRemaining(C3238v.m163b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1305a.mo214c(C3184N.m235b(intConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.n$a, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1305a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1305a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.n$a, j$.util.Iterator] */
    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1305a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public /* synthetic */ int nextInt() {
        return this.f1305a.nextInt();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.n$a, j$.util.Iterator] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1305a.remove();
    }
}
