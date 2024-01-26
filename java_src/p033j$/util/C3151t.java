package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.t */
/* loaded from: classes2.dex */
class C3151t implements InterfaceC2844p, InterfaceC2825p, Iterator {

    /* renamed from: a */
    boolean f1240a = false;

    /* renamed from: b */
    long f1241b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2773c f1242c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3151t(Spliterator.InterfaceC2773c interfaceC2773c) {
        this.f1242c = interfaceC2773c;
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        this.f1240a = true;
        this.f1241b = j;
    }

    @Override // p033j$.util.InterfaceC2841n
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        while (hasNext()) {
            interfaceC2825p.accept(nextLong());
        }
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.InterfaceC2844p, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2825p) {
            forEachRemaining((InterfaceC2825p) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2770H.f696a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2770H.m675a(C3151t.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1240a) {
            this.f1242c.mo189i(this);
        }
        return this.f1240a;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Long next() {
        if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(C3151t.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p033j$.util.InterfaceC2844p
    public long nextLong() {
        if (this.f1240a || hasNext()) {
            this.f1240a = false;
            return this.f1241b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m674a(this);
        throw null;
    }
}
