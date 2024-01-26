package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3152u implements InterfaceC2839l, InterfaceC2815f, Iterator {

    /* renamed from: a */
    boolean f1243a = false;

    /* renamed from: b */
    double f1244b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2771a f1245c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3152u(Spliterator.InterfaceC2771a interfaceC2771a) {
        this.f1245c = interfaceC2771a;
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public void accept(double d) {
        this.f1243a = true;
        this.f1244b = d;
    }

    @Override // p033j$.util.InterfaceC2841n
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        while (hasNext()) {
            interfaceC2815f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2839l, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2815f) {
            forEachRemaining((InterfaceC2815f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2770H.f696a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2770H.m675a(C3152u.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1243a) {
            this.f1245c.mo201n(this);
        }
        return this.f1243a;
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(C3152u.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2839l
    public double nextDouble() {
        if (this.f1243a || hasNext()) {
            this.f1243a = false;
            return this.f1244b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m674a(this);
        throw null;
    }
}
