package p033j$.wrappers;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p033j$.util.InterfaceC2839l;
/* renamed from: j$.wrappers.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3197b implements PrimitiveIterator.OfDouble {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2839l f1301a;

    private /* synthetic */ C3197b(InterfaceC2839l interfaceC2839l) {
        this.f1301a = interfaceC2839l;
    }

    /* renamed from: a */
    public static /* synthetic */ PrimitiveIterator.OfDouble m221a(InterfaceC2839l interfaceC2839l) {
        if (interfaceC2839l == null) {
            return null;
        }
        return interfaceC2839l instanceof C3195a ? ((C3195a) interfaceC2839l).f1299a : new C3197b(interfaceC2839l);
    }

    @Override // java.util.PrimitiveIterator
    public /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f1301a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1301a.forEachRemaining(C3237v.m168b(consumer));
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining  reason: avoid collision after fix types in other method */
    public /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f1301a.mo223e(C3243y.m162b(doubleConsumer));
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
