package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.Iterator;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C3038x implements InterfaceC2720m, InterfaceC2694f, Iterator {

    /* renamed from: a */
    boolean f1114a = false;

    /* renamed from: b */
    double f1115b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2727s.InterfaceC2728a f1116c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3038x(InterfaceC2727s.InterfaceC2728a interfaceC2728a) {
        this.f1116c = interfaceC2728a;
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public void accept(double d) {
        this.f1114a = true;
        this.f1115b = d;
    }

    @Override // p034j$.util.InterfaceC2722o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        while (hasNext()) {
            interfaceC2694f.accept(nextDouble());
        }
    }

    @Override // p034j$.util.InterfaceC2720m, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2694f) {
            forEachRemaining((InterfaceC2694f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2653K.f567a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2653K.m612a(C3038x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1114a) {
            this.f1116c.mo131k(this);
        }
        return this.f1114a;
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Double next() {
        if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(C3038x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p034j$.util.InterfaceC2720m
    public double nextDouble() {
        if (this.f1114a || hasNext()) {
            this.f1114a = false;
            return this.f1115b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m613a(this);
        throw null;
    }
}
