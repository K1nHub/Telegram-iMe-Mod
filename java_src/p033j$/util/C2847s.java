package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2841n;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
class C2847s implements InterfaceC2841n.InterfaceC2842a, InterfaceC2821l, Iterator {

    /* renamed from: a */
    boolean f815a = false;

    /* renamed from: b */
    int f816b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2772b f817c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2847s(Spliterator.InterfaceC2772b interfaceC2772b) {
        this.f817c = interfaceC2772b;
    }

    @Override // p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        this.f815a = true;
        this.f816b = i;
    }

    @Override // p033j$.util.InterfaceC2841n
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        while (hasNext()) {
            interfaceC2821l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2841n.InterfaceC2842a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2821l) {
            forEachRemaining((InterfaceC2821l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2770H.f696a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2770H.m675a(C2847s.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f815a) {
            this.f817c.mo195g(this);
        }
        return this.f815a;
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(C2847s.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2841n.InterfaceC2842a
    public int nextInt() {
        if (this.f815a || hasNext()) {
            this.f815a = false;
            return this.f816b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m674a(this);
        throw null;
    }
}
