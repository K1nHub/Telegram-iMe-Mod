package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.Iterator;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C2922x implements InterfaceC2604m, InterfaceC2578f, Iterator {

    /* renamed from: a */
    boolean f1110a = false;

    /* renamed from: b */
    double f1111b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2611s.InterfaceC2612a f1112c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2922x(InterfaceC2611s.InterfaceC2612a interfaceC2612a) {
        this.f1112c = interfaceC2612a;
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public void accept(double d) {
        this.f1110a = true;
        this.f1111b = d;
    }

    @Override // p034j$.util.InterfaceC2606o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        while (hasNext()) {
            interfaceC2578f.accept(nextDouble());
        }
    }

    @Override // p034j$.util.InterfaceC2604m, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2578f) {
            forEachRemaining((InterfaceC2578f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2537K.f563a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2537K.m628a(C2922x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1110a) {
            this.f1112c.mo146k(this);
        }
        return this.f1110a;
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Double next() {
        if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(C2922x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p034j$.util.InterfaceC2604m
    public double nextDouble() {
        if (this.f1110a || hasNext()) {
            this.f1110a = false;
            return this.f1111b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m629a(this);
        throw null;
    }
}
