package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.Iterator;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C2797w implements InterfaceC2485q, InterfaceC2465q, Iterator {

    /* renamed from: a */
    boolean f1102a = false;

    /* renamed from: b */
    long f1103b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2487s.InterfaceC2490c f1104c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2797w(InterfaceC2487s.InterfaceC2490c interfaceC2490c) {
        this.f1104c = interfaceC2490c;
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        this.f1102a = true;
        this.f1103b = j;
    }

    @Override // p034j$.util.InterfaceC2482o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        while (hasNext()) {
            interfaceC2465q.accept(nextLong());
        }
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.InterfaceC2485q, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2465q) {
            forEachRemaining((InterfaceC2465q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2413K.f558a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2413K.m628a(C2797w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1102a) {
            this.f1104c.mo133i(this);
        }
        return this.f1102a;
    }

    @Override // p034j$.util.InterfaceC2485q, java.util.Iterator
    public Long next() {
        if (AbstractC2413K.f558a) {
            AbstractC2413K.m628a(C2797w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p034j$.util.InterfaceC2485q
    public long nextLong() {
        if (this.f1102a || hasNext()) {
            this.f1102a = false;
            return this.f1103b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m629a(this);
        throw null;
    }
}
