package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.Iterator;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C2798x implements InterfaceC2480m, InterfaceC2454f, Iterator {

    /* renamed from: a */
    boolean f1105a = false;

    /* renamed from: b */
    double f1106b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2487s.InterfaceC2488a f1107c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2798x(InterfaceC2487s.InterfaceC2488a interfaceC2488a) {
        this.f1107c = interfaceC2488a;
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public void accept(double d) {
        this.f1105a = true;
        this.f1106b = d;
    }

    @Override // p034j$.util.InterfaceC2482o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        while (hasNext()) {
            interfaceC2454f.accept(nextDouble());
        }
    }

    @Override // p034j$.util.InterfaceC2480m, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2454f) {
            forEachRemaining((InterfaceC2454f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2413K.f558a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2413K.m628a(C2798x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1105a) {
            this.f1107c.mo146k(this);
        }
        return this.f1105a;
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    @Override // p034j$.util.InterfaceC2480m, java.util.Iterator
    public Double next() {
        if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(C2798x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p034j$.util.InterfaceC2480m
    public double nextDouble() {
        if (this.f1105a || hasNext()) {
            this.f1105a = false;
            return this.f1106b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m629a(this);
        throw null;
    }
}
