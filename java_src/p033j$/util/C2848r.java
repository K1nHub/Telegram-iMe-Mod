package p033j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.r */
/* loaded from: classes2.dex */
class C2848r implements Iterator, Consumer {

    /* renamed from: a */
    boolean f812a = false;

    /* renamed from: b */
    Object f813b;

    /* renamed from: c */
    final /* synthetic */ Spliterator f814c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2848r(Spliterator spliterator) {
        this.f814c = spliterator;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f812a = true;
        this.f813b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f812a) {
            this.f814c.mo179b(this);
        }
        return this.f812a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f812a || hasNext()) {
            this.f812a = false;
            return this.f813b;
        }
        throw new NoSuchElementException();
    }
}
