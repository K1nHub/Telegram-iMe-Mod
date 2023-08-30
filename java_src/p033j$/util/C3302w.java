package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.Iterator;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C3302w implements InterfaceC2990q, InterfaceC2970q, Iterator {

    /* renamed from: a */
    boolean f1206a = false;

    /* renamed from: b */
    long f1207b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2992s.InterfaceC2995c f1208c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3302w(InterfaceC2992s.InterfaceC2995c interfaceC2995c) {
        this.f1208c = interfaceC2995c;
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        this.f1206a = true;
        this.f1207b = j;
    }

    @Override // p033j$.util.InterfaceC2987o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        while (hasNext()) {
            interfaceC2970q.accept(nextLong());
        }
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.util.InterfaceC2990q, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2970q) {
            forEachRemaining((InterfaceC2970q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2918K.f662a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2918K.m630a(C3302w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1206a) {
            this.f1208c.mo136i(this);
        }
        return this.f1206a;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Long next() {
        if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(C3302w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p033j$.util.InterfaceC2990q
    public long nextLong() {
        if (this.f1206a || hasNext()) {
            this.f1206a = false;
            return this.f1207b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
