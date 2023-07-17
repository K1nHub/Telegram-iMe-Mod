package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.Iterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
class C3164x implements InterfaceC2846m, InterfaceC2820f, Iterator {

    /* renamed from: a */
    boolean f1196a = false;

    /* renamed from: b */
    double f1197b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2853s.InterfaceC2854a f1198c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3164x(InterfaceC2853s.InterfaceC2854a interfaceC2854a) {
        this.f1198c = interfaceC2854a;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        this.f1196a = true;
        this.f1197b = d;
    }

    @Override // p033j$.util.InterfaceC2848o
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        while (hasNext()) {
            interfaceC2820f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2846m, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            forEachRemaining((InterfaceC2820f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2779K.f649a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2779K.m612a(C3164x.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1196a) {
            this.f1198c.mo131k(this);
        }
        return this.f1196a;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2779K.f649a) {
            AbstractC2779K.m612a(C3164x.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2846m
    public double nextDouble() {
        if (this.f1196a || hasNext()) {
            this.f1196a = false;
            return this.f1197b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m613a(this);
        throw null;
    }
}
