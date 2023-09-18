package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.Iterator;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C3218w implements InterfaceC2906q, InterfaceC2886q, Iterator {

    /* renamed from: a */
    boolean f1197a = false;

    /* renamed from: b */
    long f1198b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2908s.InterfaceC2911c f1199c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3218w(InterfaceC2908s.InterfaceC2911c interfaceC2911c) {
        this.f1199c = interfaceC2911c;
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.f1197a = true;
        this.f1198b = j;
    }

    @Override // p033j$.util.InterfaceC2903o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        while (hasNext()) {
            interfaceC2886q.accept(nextLong());
        }
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.InterfaceC2906q, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2886q) {
            forEachRemaining((InterfaceC2886q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2834K.f653a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2834K.m630a(C3218w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1197a) {
            this.f1199c.mo136i(this);
        }
        return this.f1197a;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Long next() {
        if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(C3218w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p033j$.util.InterfaceC2906q
    public long nextLong() {
        if (this.f1197a || hasNext()) {
            this.f1197a = false;
            return this.f1198b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
