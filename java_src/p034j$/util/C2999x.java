package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.Iterator;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C2999x implements InterfaceC2681m, InterfaceC2655f, Iterator {

    /* renamed from: a */
    boolean f1111a = false;

    /* renamed from: b */
    double f1112b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2688s.InterfaceC2689a f1113c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2999x(InterfaceC2688s.InterfaceC2689a interfaceC2689a) {
        this.f1113c = interfaceC2689a;
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public void accept(double d) {
        this.f1111a = true;
        this.f1112b = d;
    }

    @Override // p034j$.util.InterfaceC2683o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        while (hasNext()) {
            interfaceC2655f.accept(nextDouble());
        }
    }

    @Override // p034j$.util.InterfaceC2681m, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2655f) {
            forEachRemaining((InterfaceC2655f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2614K.f564a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2614K.m608a(C2999x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1111a) {
            this.f1113c.mo126k(this);
        }
        return this.f1111a;
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Double next() {
        if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(C2999x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p034j$.util.InterfaceC2681m
    public double nextDouble() {
        if (this.f1111a || hasNext()) {
            this.f1111a = false;
            return this.f1112b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m609a(this);
        throw null;
    }
}
