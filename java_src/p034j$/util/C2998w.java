package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.Iterator;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C2998w implements InterfaceC2686q, InterfaceC2666q, Iterator {

    /* renamed from: a */
    boolean f1108a = false;

    /* renamed from: b */
    long f1109b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2688s.InterfaceC2691c f1110c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2998w(InterfaceC2688s.InterfaceC2691c interfaceC2691c) {
        this.f1110c = interfaceC2691c;
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        this.f1108a = true;
        this.f1109b = j;
    }

    @Override // p034j$.util.InterfaceC2683o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        while (hasNext()) {
            interfaceC2666q.accept(nextLong());
        }
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.InterfaceC2686q, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2666q) {
            forEachRemaining((InterfaceC2666q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2614K.f564a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2614K.m608a(C2998w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1108a) {
            this.f1110c.mo113i(this);
        }
        return this.f1108a;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Long next() {
        if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(C2998w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p034j$.util.InterfaceC2686q
    public long nextLong() {
        if (this.f1108a || hasNext()) {
            this.f1108a = false;
            return this.f1109b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m609a(this);
        throw null;
    }
}
