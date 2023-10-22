package p033j$.util.stream;

import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.h2 */
/* loaded from: classes2.dex */
final class C3041h2 extends AbstractC3047i2 implements Spliterator.InterfaceC2774c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3041h2(InterfaceC3142y1 interfaceC3142y1) {
        super(interfaceC3142y1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m597h(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m602c(this, consumer);
    }
}
