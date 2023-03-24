package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.Iterator;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C2935w implements InterfaceC2623q, InterfaceC2603q, Iterator {

    /* renamed from: a */
    boolean f1108a = false;

    /* renamed from: b */
    long f1109b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2625s.InterfaceC2628c f1110c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2935w(InterfaceC2625s.InterfaceC2628c interfaceC2628c) {
        this.f1110c = interfaceC2628c;
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        this.f1108a = true;
        this.f1109b = j;
    }

    @Override // p034j$.util.InterfaceC2620o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        while (hasNext()) {
            interfaceC2603q.accept(nextLong());
        }
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.util.InterfaceC2623q, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2603q) {
            forEachRemaining((InterfaceC2603q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2551K.f564a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2551K.m627a(C2935w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1108a) {
            this.f1110c.mo132i(this);
        }
        return this.f1108a;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Long next() {
        if (AbstractC2551K.f564a) {
            AbstractC2551K.m627a(C2935w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p034j$.util.InterfaceC2623q
    public long nextLong() {
        if (this.f1108a || hasNext()) {
            this.f1108a = false;
            return this.f1109b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m628a(this);
        throw null;
    }
}
