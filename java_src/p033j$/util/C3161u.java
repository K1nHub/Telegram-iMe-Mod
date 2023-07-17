package p033j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3161u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1187a = false;

    /* renamed from: b */
    Object f1188b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2853s f1189c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3161u(InterfaceC2853s interfaceC2853s) {
        this.f1189c = interfaceC2853s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1187a = true;
        this.f1188b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1187a) {
            this.f1189c.mo113b(this);
        }
        return this.f1187a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1187a || hasNext()) {
            this.f1187a = false;
            return this.f1188b;
        }
        throw new NoSuchElementException();
    }
}
