package p033j$.util.stream;

import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.h2 */
/* loaded from: classes2.dex */
final class C3045h2 extends AbstractC3051i2 implements Spliterator.InterfaceC2778c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3045h2(InterfaceC3146y1 interfaceC3146y1) {
        super(interfaceC3146y1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m598h(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m603c(this, consumer);
    }
}
