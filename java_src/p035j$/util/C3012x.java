package p035j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Iterator;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C3012x implements InterfaceC2694m, InterfaceC2668f, Iterator {

    /* renamed from: a */
    boolean f1116a = false;

    /* renamed from: b */
    double f1117b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2701s.InterfaceC2702a f1118c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3012x(InterfaceC2701s.InterfaceC2702a interfaceC2702a) {
        this.f1118c = interfaceC2702a;
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public void accept(double d) {
        this.f1116a = true;
        this.f1117b = d;
    }

    @Override // p035j$.util.InterfaceC2696o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        while (hasNext()) {
            interfaceC2668f.accept(nextDouble());
        }
    }

    @Override // p035j$.util.InterfaceC2694m, p035j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2668f) {
            forEachRemaining((InterfaceC2668f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2627K.f569a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2627K.m622a(C3012x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1116a) {
            this.f1118c.mo140k(this);
        }
        return this.f1116a;
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public Double next() {
        if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(C3012x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p035j$.util.InterfaceC2694m
    public double nextDouble() {
        if (this.f1116a || hasNext()) {
            this.f1116a = false;
            return this.f1117b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m623a(this);
        throw null;
    }
}
