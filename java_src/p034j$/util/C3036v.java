package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2722o;
import p034j$.util.InterfaceC2727s;
import p034j$.util.Iterator;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C3036v implements InterfaceC2722o.InterfaceC2723a, InterfaceC2700l, Iterator {

    /* renamed from: a */
    boolean f1108a = false;

    /* renamed from: b */
    int f1109b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2727s.InterfaceC2729b f1110c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3036v(InterfaceC2727s.InterfaceC2729b interfaceC2729b) {
        this.f1110c = interfaceC2729b;
    }

    @Override // p034j$.util.function.InterfaceC2700l
    public void accept(int i) {
        this.f1108a = true;
        this.f1109b = i;
    }

    @Override // p034j$.util.InterfaceC2722o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        while (hasNext()) {
            interfaceC2700l.accept(nextInt());
        }
    }

    @Override // p034j$.util.InterfaceC2722o.InterfaceC2723a, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2700l) {
            forEachRemaining((InterfaceC2700l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2653K.f567a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2653K.m612a(C3036v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1108a) {
            this.f1110c.mo124g(this);
        }
        return this.f1108a;
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Integer next() {
        if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(C3036v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p034j$.util.InterfaceC2722o.InterfaceC2723a
    public int nextInt() {
        if (this.f1108a || hasNext()) {
            this.f1108a = false;
            return this.f1109b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m613a(this);
        throw null;
    }
}
