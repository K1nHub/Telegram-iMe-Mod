package p035j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p035j$.util.InterfaceC2696o;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3061d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2696o.InterfaceC2697a f1177a;

    private /* synthetic */ C3061d(InterfaceC2696o.InterfaceC2697a interfaceC2697a) {
        this.f1177a = interfaceC2697a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m154a(InterfaceC2696o.InterfaceC2697a interfaceC2697a) {
        if (interfaceC2697a == null) {
            return null;
        }
        return interfaceC2697a instanceof C3059c ? ((C3059c) interfaceC2697a).f1175a : new C3061d(interfaceC2697a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1177a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1177a.forEachRemaining(C3099w.m103b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1177a.mo156c(C3045P.m175b(intConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1177a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1177a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1177a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public /* synthetic */ int nextInt() {
        return this.f1177a.nextInt();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1177a.remove();
    }
}
