package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p033j$.util.InterfaceC2843n;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3203d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2843n.InterfaceC2844a f1305a;

    private /* synthetic */ C3203d(InterfaceC2843n.InterfaceC2844a interfaceC2844a) {
        this.f1305a = interfaceC2844a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m212a(InterfaceC2843n.InterfaceC2844a interfaceC2844a) {
        if (interfaceC2844a == null) {
            return null;
        }
        return interfaceC2844a instanceof C3201c ? ((C3201c) interfaceC2844a).f1303a : new C3203d(interfaceC2844a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1305a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1305a.forEachRemaining(C3239v.m165b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1305a.mo215c(C3185N.m236b(intConsumer));
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
