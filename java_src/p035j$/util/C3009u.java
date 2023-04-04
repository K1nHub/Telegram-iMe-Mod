package p035j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.u */
/* loaded from: classes2.dex */
class C3009u implements Iterator, Consumer {

    /* renamed from: a */
    boolean f1107a = false;

    /* renamed from: b */
    Object f1108b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2701s f1109c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3009u(InterfaceC2701s interfaceC2701s) {
        this.f1109c = interfaceC2701s;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1107a = true;
        this.f1108b = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f1107a) {
            this.f1109c.mo122b(this);
        }
        return this.f1107a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f1107a || hasNext()) {
            this.f1107a = false;
            return this.f1108b;
        }
        throw new NoSuchElementException();
    }
}
