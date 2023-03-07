package p034j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C2795u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1096a = false;

    /* renamed from: b */
    Object f1097b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2487s f1098c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2795u(InterfaceC2487s interfaceC2487s) {
        this.f1098c = interfaceC2487s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1096a = true;
        this.f1097b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1096a) {
            this.f1098c.mo128b(this);
        }
        return this.f1096a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1096a || hasNext()) {
            this.f1096a = false;
            return this.f1097b;
        }
        throw new NoSuchElementException();
    }
}
