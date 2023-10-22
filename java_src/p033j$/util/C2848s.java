package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2842n;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
class C2848s implements InterfaceC2842n.InterfaceC2843a, InterfaceC2822l, Iterator {

    /* renamed from: a */
    boolean f815a = false;

    /* renamed from: b */
    int f816b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2773b f817c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2848s(Spliterator.InterfaceC2773b interfaceC2773b) {
        this.f817c = interfaceC2773b;
    }

    @Override // p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        this.f815a = true;
        this.f816b = i;
    }

    @Override // p033j$.util.InterfaceC2842n
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        while (hasNext()) {
            interfaceC2822l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2842n.InterfaceC2843a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2822l) {
            forEachRemaining((InterfaceC2822l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2771H.f696a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2771H.m671a(C2848s.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f815a) {
            this.f817c.mo191g(this);
        }
        return this.f815a;
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(C2848s.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2842n.InterfaceC2843a
    public int nextInt() {
        if (this.f815a || hasNext()) {
            this.f815a = false;
            return this.f816b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m670a(this);
        throw null;
    }
}
