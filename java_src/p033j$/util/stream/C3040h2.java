package p033j$.util.stream;

import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.h2 */
/* loaded from: classes2.dex */
final class C3040h2 extends AbstractC3046i2 implements Spliterator.InterfaceC2773c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3040h2(InterfaceC3141y1 interfaceC3141y1) {
        super(interfaceC3141y1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m601h(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m606c(this, consumer);
    }
}
