package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3157u implements InterfaceC2844l, InterfaceC2820f, Iterator {

    /* renamed from: a */
    boolean f1243a = false;

    /* renamed from: b */
    double f1244b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2776a f1245c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3157u(Spliterator.InterfaceC2776a interfaceC2776a) {
        this.f1245c = interfaceC2776a;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        this.f1243a = true;
        this.f1244b = d;
    }

    @Override // p033j$.util.InterfaceC2846n
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        while (hasNext()) {
            interfaceC2820f.accept(nextDouble());
        }
    }

    @Override // p033j$.util.InterfaceC2844l, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            forEachRemaining((InterfaceC2820f) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2775H.f696a) {
            while (hasNext()) {
                consumer.accept(Double.valueOf(nextDouble()));
            }
            return;
        }
        AbstractC2775H.m672a(C3157u.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1243a) {
            this.f1245c.mo198n(this);
        }
        return this.f1243a;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Double next() {
        if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(C3157u.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p033j$.util.InterfaceC2844l
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
