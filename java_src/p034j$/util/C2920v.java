package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2606o;
import p034j$.util.InterfaceC2611s;
import p034j$.util.Iterator;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C2920v implements InterfaceC2606o.InterfaceC2607a, InterfaceC2584l, Iterator {

    /* renamed from: a */
    boolean f1104a = false;

    /* renamed from: b */
    int f1105b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2611s.InterfaceC2613b f1106c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2920v(InterfaceC2611s.InterfaceC2613b interfaceC2613b) {
        this.f1106c = interfaceC2613b;
    }

    @Override // p034j$.util.function.InterfaceC2584l
    public void accept(int i) {
        this.f1104a = true;
        this.f1105b = i;
    }

    @Override // p034j$.util.InterfaceC2606o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        while (hasNext()) {
            interfaceC2584l.accept(nextInt());
        }
    }

    @Override // p034j$.util.InterfaceC2606o.InterfaceC2607a, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2584l) {
            forEachRemaining((InterfaceC2584l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2537K.f563a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2537K.m628a(C2920v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1104a) {
            this.f1106c.mo139g(this);
        }
        return this.f1104a;
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Integer next() {
        if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(C2920v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p034j$.util.InterfaceC2606o.InterfaceC2607a
    public int nextInt() {
        if (this.f1104a || hasNext()) {
            this.f1104a = false;
            return this.f1105b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m629a(this);
        throw null;
    }
}
