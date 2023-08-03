package p033j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3161u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1190a = false;

    /* renamed from: b */
    Object f1191b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2853s f1192c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3161u(InterfaceC2853s interfaceC2853s) {
        this.f1192c = interfaceC2853s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1190a = true;
        this.f1191b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1190a) {
            this.f1192c.mo131b(this);
        }
        return this.f1190a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1190a || hasNext()) {
            this.f1190a = false;
            return this.f1191b;
        }
        throw new NoSuchElementException();
    }
}
