package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3153u implements InterfaceC2840l, InterfaceC2816f, Iterator {

    /* renamed from: a */
    boolean f1243a = false;

    /* renamed from: b */
    double f1244b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2772a f1245c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3153u(Spliterator.InterfaceC2772a interfaceC2772a) {
        this.f1245c = interfaceC2772a;
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public void accept(double d) {
        this.f1243a = true;
        this.f1244b = d;
    }

    @Override // p033j$.util.InterfaceC2842n
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        while (hasNext()) {
            interfaceC2816f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2840l, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2816f) {
            forEachRemaining((InterfaceC2816f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2771H.f696a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2771H.m671a(C3153u.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1243a) {
            this.f1245c.mo197n(this);
        }
        return this.f1243a;
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(C3153u.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2840l
    public double nextDouble() {
        if (this.f1243a || hasNext()) {
            this.f1243a = false;
            return this.f1244b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m670a(this);
        throw null;
    }
}
