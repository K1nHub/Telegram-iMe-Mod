package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.Iterator;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C3043x implements InterfaceC2725m, InterfaceC2699f, Iterator {

    /* renamed from: a */
    boolean f1114a = false;

    /* renamed from: b */
    double f1115b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2732s.InterfaceC2733a f1116c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3043x(InterfaceC2732s.InterfaceC2733a interfaceC2733a) {
        this.f1116c = interfaceC2733a;
    }

    @Override // p034j$.util.function.InterfaceC2699f
    public void accept(double d) {
        this.f1114a = true;
        this.f1115b = d;
    }

    @Override // p034j$.util.InterfaceC2727o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        while (hasNext()) {
            interfaceC2699f.accept(nextDouble());
        }
    }

    @Override // p034j$.util.InterfaceC2725m, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2699f) {
            forEachRemaining((InterfaceC2699f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2658K.f567a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2658K.m612a(C3043x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1114a) {
            this.f1116c.mo131k(this);
        }
        return this.f1114a;
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Double next() {
        if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(C3043x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p034j$.util.InterfaceC2725m
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
