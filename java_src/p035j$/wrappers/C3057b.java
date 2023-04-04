package p035j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p035j$.util.InterfaceC2694m;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3057b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2694m f1173a;

    private /* synthetic */ C3057b(InterfaceC2694m interfaceC2694m) {
        this.f1173a = interfaceC2694m;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m159a(InterfaceC2694m interfaceC2694m) {
        if (interfaceC2694m == null) {
            return null;
        }
        return interfaceC2694m instanceof C3055a ? ((C3055a) interfaceC2694m).f1171a : new C3057b(interfaceC2694m);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1173a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1173a.forEachRemaining(C3099w.m103b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1173a.mo162e(C3105z.m97b(doubleConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1173a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1173a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1173a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public /* synthetic */ double nextDouble() {
        return this.f1173a.nextDouble();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.m] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1173a.remove();
    }
}
