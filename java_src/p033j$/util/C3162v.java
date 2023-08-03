package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2848o;
import p033j$.util.InterfaceC2853s;
import p033j$.util.Iterator;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C3162v implements InterfaceC2848o.InterfaceC2849a, InterfaceC2826l, Iterator {

    /* renamed from: a */
    boolean f1193a = false;

    /* renamed from: b */
    int f1194b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2853s.InterfaceC2855b f1195c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3162v(InterfaceC2853s.InterfaceC2855b interfaceC2855b) {
        this.f1195c = interfaceC2855b;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        this.f1193a = true;
        this.f1194b = i;
    }

    @Override // p033j$.util.InterfaceC2848o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        while (hasNext()) {
            interfaceC2826l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2848o.InterfaceC2849a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            forEachRemaining((InterfaceC2826l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2779K.f652a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2779K.m630a(C3162v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1193a) {
            this.f1195c.mo142g(this);
        }
        return this.f1193a;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2779K.f652a) {
            AbstractC2779K.m630a(C3162v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2848o.InterfaceC2849a
    public int nextInt() {
        if (this.f1193a || hasNext()) {
            this.f1193a = false;
            return this.f1194b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
