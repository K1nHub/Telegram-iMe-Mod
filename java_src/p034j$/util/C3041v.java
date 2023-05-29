package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2727o;
import p034j$.util.InterfaceC2732s;
import p034j$.util.Iterator;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C3041v implements InterfaceC2727o.InterfaceC2728a, InterfaceC2705l, Iterator {

    /* renamed from: a */
    boolean f1108a = false;

    /* renamed from: b */
    int f1109b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2732s.InterfaceC2734b f1110c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3041v(InterfaceC2732s.InterfaceC2734b interfaceC2734b) {
        this.f1110c = interfaceC2734b;
    }

    @Override // p034j$.util.function.InterfaceC2705l
    public void accept(int i) {
        this.f1108a = true;
        this.f1109b = i;
    }

    @Override // p034j$.util.InterfaceC2727o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        while (hasNext()) {
            interfaceC2705l.accept(nextInt());
        }
    }

    @Override // p034j$.util.InterfaceC2727o.InterfaceC2728a, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2705l) {
            forEachRemaining((InterfaceC2705l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2658K.f567a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2658K.m612a(C3041v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1108a) {
            this.f1110c.mo124g(this);
        }
        return this.f1108a;
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Integer next() {
        if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(C3041v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p034j$.util.InterfaceC2727o.InterfaceC2728a
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
