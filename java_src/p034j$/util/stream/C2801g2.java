package p034j$.util.stream;

import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C2801g2 extends AbstractC2813i2 implements InterfaceC2611s.InterfaceC2613b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2801g2(InterfaceC2896w1 interfaceC2896w1) {
        super(interfaceC2896w1);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }
}
