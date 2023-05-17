package p034j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3035u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1105a = false;

    /* renamed from: b */
    Object f1106b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2727s f1107c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3035u(InterfaceC2727s interfaceC2727s) {
        this.f1107c = interfaceC2727s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1105a = true;
        this.f1106b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1105a) {
            this.f1107c.mo113b(this);
        }
        return this.f1105a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1105a || hasNext()) {
            this.f1105a = false;
            return this.f1106b;
        }
        throw new NoSuchElementException();
    }
}
