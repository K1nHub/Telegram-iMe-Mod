package p034j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p034j$.util.InterfaceC2480m;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2843b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2480m f1162a;

    private /* synthetic */ C2843b(InterfaceC2480m interfaceC2480m) {
        this.f1162a = interfaceC2480m;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m165a(InterfaceC2480m interfaceC2480m) {
        if (interfaceC2480m == null) {
            return null;
        }
        return interfaceC2480m instanceof C2841a ? ((C2841a) interfaceC2480m).f1160a : new C2843b(interfaceC2480m);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1162a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1162a.forEachRemaining(C2885w.m109b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1162a.mo168e(C2891z.m103b(doubleConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1162a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1162a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1162a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public /* synthetic */ double nextDouble() {
        return this.f1162a.nextDouble();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1162a.remove();
    }
}
