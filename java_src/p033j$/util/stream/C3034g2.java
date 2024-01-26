package p033j$.util.stream;

import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C3034g2 extends AbstractC3046i2 implements Spliterator.InterfaceC2772b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3034g2(InterfaceC3129w1 interfaceC3129w1) {
        super(interfaceC3129w1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }
}
