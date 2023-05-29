package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p034j$.util.InterfaceC2725m;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3088b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2725m f1171a;

    private /* synthetic */ C3088b(InterfaceC2725m interfaceC2725m) {
        this.f1171a = interfaceC2725m;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m150a(InterfaceC2725m interfaceC2725m) {
        if (interfaceC2725m == null) {
            return null;
        }
        return interfaceC2725m instanceof C3086a ? ((C3086a) interfaceC2725m).f1169a : new C3088b(interfaceC2725m);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1171a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1171a.forEachRemaining(C3130w.m94b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1171a.mo153e(C3136z.m88b(doubleConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1171a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1171a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1171a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public /* synthetic */ double nextDouble() {
        return this.f1171a.nextDouble();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1171a.remove();
    }
}
