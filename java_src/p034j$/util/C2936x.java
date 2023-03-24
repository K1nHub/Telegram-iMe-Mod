package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.Iterator;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C2936x implements InterfaceC2618m, InterfaceC2592f, Iterator {

    /* renamed from: a */
    boolean f1111a = false;

    /* renamed from: b */
    double f1112b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2625s.InterfaceC2626a f1113c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2936x(InterfaceC2625s.InterfaceC2626a interfaceC2626a) {
        this.f1113c = interfaceC2626a;
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public void accept(double d) {
        this.f1111a = true;
        this.f1112b = d;
    }

    @Override // p034j$.util.InterfaceC2620o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        while (hasNext()) {
            interfaceC2592f.accept(nextDouble());
        }
    }

    @Override // p034j$.util.InterfaceC2618m, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2592f) {
            forEachRemaining((InterfaceC2592f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2551K.f564a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2551K.m627a(C2936x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1111a) {
            this.f1113c.mo145k(this);
        }
        return this.f1111a;
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Double next() {
        if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(C2936x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p034j$.util.InterfaceC2618m
    public double nextDouble() {
        if (this.f1111a || hasNext()) {
            this.f1111a = false;
            return this.f1112b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m628a(this);
        throw null;
    }
}
