package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2987o;
import p033j$.util.InterfaceC2992s;
import p033j$.util.Iterator;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C3301v implements InterfaceC2987o.InterfaceC2988a, InterfaceC2965l, Iterator {

    /* renamed from: a */
    boolean f1203a = false;

    /* renamed from: b */
    int f1204b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2992s.InterfaceC2994b f1205c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3301v(InterfaceC2992s.InterfaceC2994b interfaceC2994b) {
        this.f1205c = interfaceC2994b;
    }

    @Override // p033j$.util.function.InterfaceC2965l
    public void accept(int i) {
        this.f1203a = true;
        this.f1204b = i;
    }

    @Override // p033j$.util.InterfaceC2987o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        while (hasNext()) {
            interfaceC2965l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2987o.InterfaceC2988a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2965l) {
            forEachRemaining((InterfaceC2965l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2918K.f662a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2918K.m630a(C3301v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1203a) {
            this.f1205c.mo142g(this);
        }
        return this.f1203a;
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(C3301v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2987o.InterfaceC2988a
    public int nextInt() {
        if (this.f1203a || hasNext()) {
            this.f1203a = false;
            return this.f1204b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
