package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p034j$.util.InterfaceC2604m;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2967b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2604m f1167a;

    private /* synthetic */ C2967b(InterfaceC2604m interfaceC2604m) {
        this.f1167a = interfaceC2604m;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m165a(InterfaceC2604m interfaceC2604m) {
        if (interfaceC2604m == null) {
            return null;
        }
        return interfaceC2604m instanceof C2965a ? ((C2965a) interfaceC2604m).f1165a : new C2967b(interfaceC2604m);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1167a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1167a.forEachRemaining(C3009w.m109b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1167a.mo168e(C3015z.m103b(doubleConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1167a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1167a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1167a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public /* synthetic */ double nextDouble() {
        return this.f1167a.nextDouble();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1167a.remove();
    }
}
