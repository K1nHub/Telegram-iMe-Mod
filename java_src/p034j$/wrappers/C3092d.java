package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p034j$.util.InterfaceC2727o;
/* renamed from: j$.wrappers.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3092d implements PrimitiveIterator.OfInt {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2727o.InterfaceC2728a f1175a;

    private /* synthetic */ C3092d(InterfaceC2727o.InterfaceC2728a interfaceC2728a) {
        this.f1175a = interfaceC2728a;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfInt m145a(InterfaceC2727o.InterfaceC2728a interfaceC2728a) {
        if (interfaceC2728a == null) {
            return null;
        }
        return interfaceC2728a instanceof C3090c ? ((C3090c) interfaceC2728a).f1173a : new C3092d(interfaceC2728a);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f1175a.forEachRemaining(intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1175a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f1175a.mo147c(C3076P.m166b(intConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1175a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1175a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1175a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public /* synthetic */ int nextInt() {
        return this.f1175a.nextInt();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.o$a] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1175a.remove();
    }
}
