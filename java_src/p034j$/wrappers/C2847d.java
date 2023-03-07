package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p034j$.util.InterfaceC2482o;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2847d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2482o.InterfaceC2483a f1166a;

    private /* synthetic */ C2847d(InterfaceC2482o.InterfaceC2483a interfaceC2483a) {
        this.f1166a = interfaceC2483a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m160a(InterfaceC2482o.InterfaceC2483a interfaceC2483a) {
        if (interfaceC2483a == null) {
            return null;
        }
        return interfaceC2483a instanceof C2845c ? ((C2845c) interfaceC2483a).f1164a : new C2847d(interfaceC2483a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1166a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1166a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1166a.mo162c(C2831P.m181b(intConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1166a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1166a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1166a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public /* synthetic */ int nextInt() {
        return this.f1166a.nextInt();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1166a.remove();
    }
}
