package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3154u implements InterfaceC2841l, InterfaceC2817f, Iterator {

    /* renamed from: a */
    boolean f1243a = false;

    /* renamed from: b */
    double f1244b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2773a f1245c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3154u(Spliterator.InterfaceC2773a interfaceC2773a) {
        this.f1245c = interfaceC2773a;
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public void accept(double d) {
        this.f1243a = true;
        this.f1244b = d;
    }

    @Override // p033j$.util.InterfaceC2843n
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        while (hasNext()) {
            interfaceC2817f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2841l, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2817f) {
            forEachRemaining((InterfaceC2817f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2772H.f696a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2772H.m672a(C3154u.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1243a) {
            this.f1245c.mo198n(this);
        }
        return this.f1243a;
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(C3154u.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2841l
    public double nextDouble() {
        if (this.f1243a || hasNext()) {
            this.f1243a = false;
            return this.f1244b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m671a(this);
        throw null;
    }
}
