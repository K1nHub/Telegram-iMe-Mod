package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p033j$.util.InterfaceC2841n;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3201d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2841n.InterfaceC2842a f1305a;

    private /* synthetic */ C3201d(InterfaceC2841n.InterfaceC2842a interfaceC2842a) {
        this.f1305a = interfaceC2842a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m215a(InterfaceC2841n.InterfaceC2842a interfaceC2842a) {
        if (interfaceC2842a == null) {
            return null;
        }
        return interfaceC2842a instanceof C3199c ? ((C3199c) interfaceC2842a).f1303a : new C3201d(interfaceC2842a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1305a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1305a.forEachRemaining(C3237v.m168b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1305a.mo218c(C3183N.m239b(intConsumer));
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
