package p033j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3216u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1191a = false;

    /* renamed from: b */
    Object f1192b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2908s f1193c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3216u(InterfaceC2908s interfaceC2908s) {
        this.f1193c = interfaceC2908s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1191a = true;
        this.f1192b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1191a) {
            this.f1193c.mo131b(this);
        }
        return this.f1191a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1191a || hasNext()) {
            this.f1191a = false;
            return this.f1192b;
        }
        throw new NoSuchElementException();
    }
}
