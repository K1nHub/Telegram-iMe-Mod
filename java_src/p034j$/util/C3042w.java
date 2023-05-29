package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.Iterator;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C3042w implements InterfaceC2730q, InterfaceC2710q, Iterator {

    /* renamed from: a */
    boolean f1111a = false;

    /* renamed from: b */
    long f1112b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2732s.InterfaceC2735c f1113c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3042w(InterfaceC2732s.InterfaceC2735c interfaceC2735c) {
        this.f1113c = interfaceC2735c;
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        this.f1111a = true;
        this.f1112b = j;
    }

    @Override // p034j$.util.InterfaceC2727o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        while (hasNext()) {
            interfaceC2710q.accept(nextLong());
        }
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.InterfaceC2730q, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2710q) {
            forEachRemaining((InterfaceC2710q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2658K.f567a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2658K.m612a(C3042w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1111a) {
            this.f1113c.mo118i(this);
        }
        return this.f1111a;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Long next() {
        if (AbstractC2658K.f567a) {
            AbstractC2658K.m612a(C3042w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p034j$.util.InterfaceC2730q
    public long nextLong() {
        if (this.f1111a || hasNext()) {
            this.f1111a = false;
            return this.f1112b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m613a(this);
        throw null;
    }
}
