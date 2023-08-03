package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.Iterator;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C3163w implements InterfaceC2851q, InterfaceC2831q, Iterator {

    /* renamed from: a */
    boolean f1196a = false;

    /* renamed from: b */
    long f1197b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2853s.InterfaceC2856c f1198c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3163w(InterfaceC2853s.InterfaceC2856c interfaceC2856c) {
        this.f1198c = interfaceC2856c;
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.f1196a = true;
        this.f1197b = j;
    }

    @Override // p033j$.util.InterfaceC2848o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        while (hasNext()) {
            interfaceC2831q.accept(nextLong());
        }
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.InterfaceC2851q, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2831q) {
            forEachRemaining((InterfaceC2831q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2779K.f652a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2779K.m630a(C3163w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1196a) {
            this.f1198c.mo136i(this);
        }
        return this.f1196a;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Long next() {
        if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(C3163w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p033j$.util.InterfaceC2851q
    public long nextLong() {
        if (this.f1196a || hasNext()) {
            this.f1196a = false;
            return this.f1197b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
