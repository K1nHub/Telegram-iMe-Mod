package p033j$.util.stream;

import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C3035g2 extends AbstractC3047i2 implements Spliterator.InterfaceC2773b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3035g2(InterfaceC3130w1 interfaceC3130w1) {
        super(interfaceC3130w1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }
}
