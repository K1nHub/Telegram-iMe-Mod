package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.t */
/* loaded from: classes2.dex */
class C3156t implements InterfaceC2849p, InterfaceC2830p, Iterator {

    /* renamed from: a */
    boolean f1240a = false;

    /* renamed from: b */
    long f1241b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2778c f1242c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3156t(Spliterator.InterfaceC2778c interfaceC2778c) {
        this.f1242c = interfaceC2778c;
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        this.f1240a = true;
        this.f1241b = j;
    }

    @Override // p033j$.util.InterfaceC2846n
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        while (hasNext()) {
            interfaceC2830p.accept(nextLong());
        }
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.InterfaceC2849p, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2830p) {
            forEachRemaining((InterfaceC2830p) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2775H.f696a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2775H.m672a(C3156t.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1240a) {
            this.f1242c.mo186i(this);
        }
        return this.f1240a;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Long next() {
        if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(C3156t.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p033j$.util.InterfaceC2849p
    public long nextLong() {
        if (this.f1240a || hasNext()) {
            this.f1240a = false;
            return this.f1241b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m671a(this);
        throw null;
    }
}
