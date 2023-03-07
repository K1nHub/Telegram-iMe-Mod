package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2482o;
import p034j$.util.InterfaceC2487s;
import p034j$.util.Iterator;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C2796v implements InterfaceC2482o.InterfaceC2483a, InterfaceC2460l, Iterator {

    /* renamed from: a */
    boolean f1099a = false;

    /* renamed from: b */
    int f1100b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2487s.InterfaceC2489b f1101c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2796v(InterfaceC2487s.InterfaceC2489b interfaceC2489b) {
        this.f1101c = interfaceC2489b;
    }

    @Override // p034j$.util.function.InterfaceC2460l
    public void accept(int i) {
        this.f1099a = true;
        this.f1100b = i;
    }

    @Override // p034j$.util.InterfaceC2482o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        while (hasNext()) {
            interfaceC2460l.accept(nextInt());
        }
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2460l) {
            forEachRemaining((InterfaceC2460l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2413K.f558a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2413K.m628a(C2796v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1099a) {
            this.f1101c.mo139g(this);
        }
        return this.f1099a;
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a, java.util.Iterator
    public Integer next() {
        if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(C2796v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a
    public int nextInt() {
        if (this.f1099a || hasNext()) {
            this.f1099a = false;
            return this.f1100b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m629a(this);
        throw null;
    }
}
