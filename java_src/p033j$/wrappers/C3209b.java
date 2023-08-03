package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p033j$.util.InterfaceC2846m;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3209b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2846m f1256a;

    private /* synthetic */ C3209b(InterfaceC2846m interfaceC2846m) {
        this.f1256a = interfaceC2846m;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m168a(InterfaceC2846m interfaceC2846m) {
        if (interfaceC2846m == null) {
            return null;
        }
        return interfaceC2846m instanceof C3207a ? ((C3207a) interfaceC2846m).f1254a : new C3209b(interfaceC2846m);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1256a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1256a.forEachRemaining(C3251w.m112b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1256a.mo171e(C3257z.m106b(doubleConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1256a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1256a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1256a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public /* synthetic */ double nextDouble() {
        return this.f1256a.nextDouble();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1256a.remove();
    }
}
