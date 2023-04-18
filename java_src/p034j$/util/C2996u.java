package p034j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C2996u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1102a = false;

    /* renamed from: b */
    Object f1103b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2688s f1104c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2996u(InterfaceC2688s interfaceC2688s) {
        this.f1104c = interfaceC2688s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1102a = true;
        this.f1103b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1102a) {
            this.f1104c.mo108b(this);
        }
        return this.f1102a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1102a || hasNext()) {
            this.f1102a = false;
            return this.f1103b;
        }
        throw new NoSuchElementException();
    }
}
