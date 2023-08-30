package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.Iterator;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C3303x implements InterfaceC2985m, InterfaceC2959f, Iterator {

    /* renamed from: a */
    boolean f1209a = false;

    /* renamed from: b */
    double f1210b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2992s.InterfaceC2993a f1211c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3303x(InterfaceC2992s.InterfaceC2993a interfaceC2993a) {
        this.f1211c = interfaceC2993a;
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public void accept(double d) {
        this.f1209a = true;
        this.f1210b = d;
    }

    @Override // p033j$.util.InterfaceC2987o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        while (hasNext()) {
            interfaceC2959f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2985m, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2959f) {
            forEachRemaining((InterfaceC2959f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2918K.f662a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2918K.m630a(C3303x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1209a) {
            this.f1211c.mo149k(this);
        }
        return this.f1209a;
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(C3303x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2985m
    public double nextDouble() {
        if (this.f1209a || hasNext()) {
            this.f1209a = false;
            return this.f1210b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
