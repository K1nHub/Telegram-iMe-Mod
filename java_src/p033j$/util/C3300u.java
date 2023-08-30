package p033j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3300u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1200a = false;

    /* renamed from: b */
    Object f1201b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2992s f1202c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3300u(InterfaceC2992s interfaceC2992s) {
        this.f1202c = interfaceC2992s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1200a = true;
        this.f1201b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1200a) {
            this.f1202c.mo131b(this);
        }
        return this.f1200a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1200a || hasNext()) {
            this.f1200a = false;
            return this.f1201b;
        }
        throw new NoSuchElementException();
    }
}
