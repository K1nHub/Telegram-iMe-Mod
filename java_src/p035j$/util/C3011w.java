package p035j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Iterator;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
class C3011w implements InterfaceC2699q, InterfaceC2679q, Iterator {

    /* renamed from: a */
    boolean f1113a = false;

    /* renamed from: b */
    long f1114b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2701s.InterfaceC2704c f1115c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3011w(InterfaceC2701s.InterfaceC2704c interfaceC2704c) {
        this.f1115c = interfaceC2704c;
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        this.f1113a = true;
        this.f1114b = j;
    }

    @Override // p035j$.util.InterfaceC2696o
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        while (hasNext()) {
            interfaceC2679q.accept(nextLong());
        }
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.InterfaceC2699q, p035j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2679q) {
            forEachRemaining((InterfaceC2679q) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2627K.f569a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2627K.m622a(C3011w.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1113a) {
            this.f1115c.mo127i(this);
        }
        return this.f1113a;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public Long next() {
        if (AbstractC2627K.f569a) {
            AbstractC2627K.m622a(C3011w.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p035j$.util.InterfaceC2699q
    public long nextLong() {
        if (this.f1113a || hasNext()) {
            this.f1113a = false;
            return this.f1114b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m623a(this);
        throw null;
    }
}
