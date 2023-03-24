package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2620o;
import p034j$.util.InterfaceC2625s;
import p034j$.util.Iterator;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C2934v implements InterfaceC2620o.InterfaceC2621a, InterfaceC2598l, Iterator {

    /* renamed from: a */
    boolean f1105a = false;

    /* renamed from: b */
    int f1106b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2625s.InterfaceC2627b f1107c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2934v(InterfaceC2625s.InterfaceC2627b interfaceC2627b) {
        this.f1107c = interfaceC2627b;
    }

    @Override // p034j$.util.function.InterfaceC2598l
    public void accept(int i) {
        this.f1105a = true;
        this.f1106b = i;
    }

    @Override // p034j$.util.InterfaceC2620o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        while (hasNext()) {
            interfaceC2598l.accept(nextInt());
        }
    }

    @Override // p034j$.util.InterfaceC2620o.InterfaceC2621a, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2598l) {
            forEachRemaining((InterfaceC2598l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2551K.f564a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2551K.m627a(C2934v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1105a) {
            this.f1107c.mo138g(this);
        }
        return this.f1105a;
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Integer next() {
        if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(C2934v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p034j$.util.InterfaceC2620o.InterfaceC2621a
    public int nextInt() {
        if (this.f1105a || hasNext()) {
            this.f1105a = false;
            return this.f1106b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m628a(this);
        throw null;
    }
}
