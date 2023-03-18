package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.Iterator;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C2921w implements InterfaceC2609q, InterfaceC2589q, Iterator {

    /* renamed from: a */
    boolean f1107a = false;

    /* renamed from: b */
    long f1108b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2611s.InterfaceC2614c f1109c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2921w(InterfaceC2611s.InterfaceC2614c interfaceC2614c) {
        this.f1109c = interfaceC2614c;
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        this.f1107a = true;
        this.f1108b = j;
    }

    @Override // p034j$.util.InterfaceC2606o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        while (hasNext()) {
            interfaceC2589q.accept(nextLong());
        }
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.util.InterfaceC2609q, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2589q) {
            forEachRemaining((InterfaceC2589q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2537K.f563a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2537K.m628a(C2921w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1107a) {
            this.f1109c.mo133i(this);
        }
        return this.f1107a;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Long next() {
        if (AbstractC2537K.f563a) {
            AbstractC2537K.m628a(C2921w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p034j$.util.InterfaceC2609q
    public long nextLong() {
        if (this.f1107a || hasNext()) {
            this.f1107a = false;
            return this.f1108b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m629a(this);
        throw null;
    }
}
