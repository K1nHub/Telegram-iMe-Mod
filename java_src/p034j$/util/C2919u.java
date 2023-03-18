package p034j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C2919u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1101a = false;

    /* renamed from: b */
    Object f1102b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2611s f1103c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2919u(InterfaceC2611s interfaceC2611s) {
        this.f1103c = interfaceC2611s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1101a = true;
        this.f1102b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1101a) {
            this.f1103c.mo128b(this);
        }
        return this.f1101a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1101a || hasNext()) {
            this.f1101a = false;
            return this.f1102b;
        }
        throw new NoSuchElementException();
    }
}
