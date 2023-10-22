package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p033j$.util.InterfaceC2840l;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3198b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2840l f1301a;

    private /* synthetic */ C3198b(InterfaceC2840l interfaceC2840l) {
        this.f1301a = interfaceC2840l;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m217a(InterfaceC2840l interfaceC2840l) {
        if (interfaceC2840l == null) {
            return null;
        }
        return interfaceC2840l instanceof C3196a ? ((C3196a) interfaceC2840l).f1299a : new C3198b(interfaceC2840l);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1301a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1301a.forEachRemaining(C3238v.m163b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1301a.mo219e(C3244y.m157b(doubleConsumer));
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
