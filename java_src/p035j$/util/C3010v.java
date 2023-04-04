package p035j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p035j$.util.InterfaceC2696o;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Iterator;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C3010v implements InterfaceC2696o.InterfaceC2697a, InterfaceC2674l, Iterator {

    /* renamed from: a */
    boolean f1110a = false;

    /* renamed from: b */
    int f1111b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2701s.InterfaceC2703b f1112c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3010v(InterfaceC2701s.InterfaceC2703b interfaceC2703b) {
        this.f1112c = interfaceC2703b;
    }

    @Override // p035j$.util.function.InterfaceC2674l
    public void accept(int i) {
        this.f1110a = true;
        this.f1111b = i;
    }

    @Override // p035j$.util.InterfaceC2696o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        while (hasNext()) {
            interfaceC2674l.accept(nextInt());
        }
    }

    @Override // p035j$.util.InterfaceC2696o.InterfaceC2697a, p035j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2674l) {
            forEachRemaining((InterfaceC2674l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2627K.f569a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2627K.m622a(C3010v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1110a) {
            this.f1112c.mo133g(this);
        }
        return this.f1110a;
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public Integer next() {
        if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(C3010v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p035j$.util.InterfaceC2696o.InterfaceC2697a
    public int nextInt() {
        if (this.f1110a || hasNext()) {
            this.f1110a = false;
            return this.f1111b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m623a(this);
        throw null;
    }
}
