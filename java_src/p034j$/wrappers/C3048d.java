package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p034j$.util.InterfaceC2683o;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3048d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2683o.InterfaceC2684a f1172a;

    private /* synthetic */ C3048d(InterfaceC2683o.InterfaceC2684a interfaceC2684a) {
        this.f1172a = interfaceC2684a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m140a(InterfaceC2683o.InterfaceC2684a interfaceC2684a) {
        if (interfaceC2684a == null) {
            return null;
        }
        return interfaceC2684a instanceof C3046c ? ((C3046c) interfaceC2684a).f1170a : new C3048d(interfaceC2684a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1172a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1172a.forEachRemaining(C3086w.m89b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1172a.mo142c(C3032P.m161b(intConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1172a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1172a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1172a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public /* synthetic */ int nextInt() {
        return this.f1172a.nextInt();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1172a.remove();
    }
}
