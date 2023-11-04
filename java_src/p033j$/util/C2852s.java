package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2846n;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
class C2852s implements InterfaceC2846n.InterfaceC2847a, InterfaceC2826l, Iterator {

    /* renamed from: a */
    boolean f815a = false;

    /* renamed from: b */
    int f816b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2777b f817c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2852s(Spliterator.InterfaceC2777b interfaceC2777b) {
        this.f817c = interfaceC2777b;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        this.f815a = true;
        this.f816b = i;
    }

    @Override // p033j$.util.InterfaceC2846n
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        while (hasNext()) {
            interfaceC2826l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2846n.InterfaceC2847a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            forEachRemaining((InterfaceC2826l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2775H.f696a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2775H.m672a(C2852s.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f815a) {
            this.f817c.mo192g(this);
        }
        return this.f815a;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(C2852s.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2846n.InterfaceC2847a
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
