package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p034j$.util.InterfaceC2606o;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2971d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2606o.InterfaceC2607a f1171a;

    private /* synthetic */ C2971d(InterfaceC2606o.InterfaceC2607a interfaceC2607a) {
        this.f1171a = interfaceC2607a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m160a(InterfaceC2606o.InterfaceC2607a interfaceC2607a) {
        if (interfaceC2607a == null) {
            return null;
        }
        return interfaceC2607a instanceof C2969c ? ((C2969c) interfaceC2607a).f1169a : new C2971d(interfaceC2607a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1171a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1171a.forEachRemaining(C3009w.m109b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1171a.mo162c(C2955P.m181b(intConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1171a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1171a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1171a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public /* synthetic */ int nextInt() {
        return this.f1171a.nextInt();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1171a.remove();
    }
}
