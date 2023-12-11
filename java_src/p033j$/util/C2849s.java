package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2843n;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
class C2849s implements InterfaceC2843n.InterfaceC2844a, InterfaceC2823l, Iterator {

    /* renamed from: a */
    boolean f815a = false;

    /* renamed from: b */
    int f816b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2774b f817c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2849s(Spliterator.InterfaceC2774b interfaceC2774b) {
        this.f817c = interfaceC2774b;
    }

    @Override // p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        this.f815a = true;
        this.f816b = i;
    }

    @Override // p033j$.util.InterfaceC2843n
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        while (hasNext()) {
            interfaceC2823l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2843n.InterfaceC2844a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2823l) {
            forEachRemaining((InterfaceC2823l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2772H.f696a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2772H.m672a(C2849s.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f815a) {
            this.f817c.mo192g(this);
        }
        return this.f815a;
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(C2849s.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2843n.InterfaceC2844a
    public int nextInt() {
        if (this.f815a || hasNext()) {
            this.f815a = false;
            return this.f816b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m671a(this);
        throw null;
    }
}
