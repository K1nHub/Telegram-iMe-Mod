package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.InterfaceC2903o;
import p033j$.util.InterfaceC2908s;
import p033j$.util.Iterator;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
class C3217v implements InterfaceC2903o.InterfaceC2904a, InterfaceC2881l, Iterator {

    /* renamed from: a */
    boolean f1194a = false;

    /* renamed from: b */
    int f1195b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2908s.InterfaceC2910b f1196c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3217v(InterfaceC2908s.InterfaceC2910b interfaceC2910b) {
        this.f1196c = interfaceC2910b;
    }

    @Override // p033j$.util.function.InterfaceC2881l
    public void accept(int i) {
        this.f1194a = true;
        this.f1195b = i;
    }

    @Override // p033j$.util.InterfaceC2903o
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        while (hasNext()) {
            interfaceC2881l.accept(nextInt());
        }
    }

    @Override // p033j$.util.InterfaceC2903o.InterfaceC2904a, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2881l) {
            forEachRemaining((InterfaceC2881l) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2834K.f653a) {
            while (hasNext()) {
                consumer.accept(Integer.valueOf(nextInt()));
            }
            return;
        }
        AbstractC2834K.m630a(C3217v.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1194a) {
            this.f1196c.mo142g(this);
        }
        return this.f1194a;
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Integer next() {
        if (AbstractC2834K.f653a) {
            AbstractC2834K.m630a(C3217v.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p033j$.util.InterfaceC2903o.InterfaceC2904a
    public int nextInt() {
        if (this.f1194a || hasNext()) {
            this.f1194a = false;
            return this.f1195b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m631a(this);
        throw null;
    }
}
