package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.Iterator;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C3037w implements InterfaceC2725q, InterfaceC2705q, Iterator {

    /* renamed from: a */
    boolean f1111a = false;

    /* renamed from: b */
    long f1112b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2727s.InterfaceC2730c f1113c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3037w(InterfaceC2727s.InterfaceC2730c interfaceC2730c) {
        this.f1113c = interfaceC2730c;
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        this.f1111a = true;
        this.f1112b = j;
    }

    @Override // p034j$.util.InterfaceC2722o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        while (hasNext()) {
            interfaceC2705q.accept(nextLong());
        }
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.InterfaceC2725q, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2705q) {
            forEachRemaining((InterfaceC2705q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2653K.f567a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2653K.m612a(C3037w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
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
        if (AbstractC2653K.f567a) {
            AbstractC2653K.m612a(C3037w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p034j$.util.InterfaceC2725q
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
