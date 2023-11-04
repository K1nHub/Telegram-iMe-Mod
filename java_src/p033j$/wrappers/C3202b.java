package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p033j$.util.InterfaceC2844l;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3202b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2844l f1301a;

    private /* synthetic */ C3202b(InterfaceC2844l interfaceC2844l) {
        this.f1301a = interfaceC2844l;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m218a(InterfaceC2844l interfaceC2844l) {
        if (interfaceC2844l == null) {
            return null;
        }
        return interfaceC2844l instanceof C3200a ? ((C3200a) interfaceC2844l).f1299a : new C3202b(interfaceC2844l);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1301a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1301a.forEachRemaining(C3242v.m165b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1301a.mo220e(C3248y.m159b(doubleConsumer));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.l] */
    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1301a.hasNext();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1301a.next();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.l] */
    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1301a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public /* synthetic */ double nextDouble() {
        return this.f1301a.nextDouble();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Iterator, j$.util.l] */
    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1301a.remove();
    }
}
