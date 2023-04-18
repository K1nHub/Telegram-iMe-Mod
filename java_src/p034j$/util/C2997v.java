package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.InterfaceC2683o;
import p034j$.util.InterfaceC2688s;
import p034j$.util.Iterator;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C2997v implements InterfaceC2683o.InterfaceC2684a, InterfaceC2661l, Iterator {

    /* renamed from: a */
    boolean f1105a = false;

    /* renamed from: b */
    int f1106b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2688s.InterfaceC2690b f1107c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2997v(InterfaceC2688s.InterfaceC2690b interfaceC2690b) {
        this.f1107c = interfaceC2690b;
    }

    @Override // p034j$.util.function.InterfaceC2661l
    public void accept(int i) {
        this.f1105a = true;
        this.f1106b = i;
    }

    @Override // p034j$.util.InterfaceC2683o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        while (hasNext()) {
            interfaceC2661l.accept(nextInt());
        }
    }

    @Override // p034j$.util.InterfaceC2683o.InterfaceC2684a, p034j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2661l) {
            forEachRemaining((InterfaceC2661l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2614K.f564a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2614K.m608a(C2997v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1105a) {
            this.f1107c.mo119g(this);
        }
        return this.f1105a;
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public Integer next() {
        if (AbstractC2614K.f564a) {
            AbstractC2614K.m608a(C2997v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p034j$.util.InterfaceC2683o.InterfaceC2684a
    public int nextInt() {
        if (this.f1105a || hasNext()) {
            this.f1105a = false;
            return this.f1106b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m609a(this);
        throw null;
    }
}
