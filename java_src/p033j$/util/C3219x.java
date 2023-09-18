package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.Iterator;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C3219x implements InterfaceC2901m, InterfaceC2875f, Iterator {

    /* renamed from: a */
    boolean f1200a = false;

    /* renamed from: b */
    double f1201b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2908s.InterfaceC2909a f1202c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3219x(InterfaceC2908s.InterfaceC2909a interfaceC2909a) {
        this.f1202c = interfaceC2909a;
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public void accept(double d) {
        this.f1200a = true;
        this.f1201b = d;
    }

    @Override // p033j$.util.InterfaceC2903o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        while (hasNext()) {
            interfaceC2875f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2901m, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2875f) {
            forEachRemaining((InterfaceC2875f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2834K.f653a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2834K.m630a(C3219x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1200a) {
            this.f1202c.mo149k(this);
        }
        return this.f1200a;
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(C3219x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2901m
    public double nextDouble() {
        if (this.f1200a || hasNext()) {
            this.f1200a = false;
            return this.f1201b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
