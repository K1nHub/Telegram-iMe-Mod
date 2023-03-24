package p034j$.util.stream;

import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C2815g2 extends AbstractC2827i2 implements InterfaceC2625s.InterfaceC2627b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2815g2(InterfaceC2910w1 interfaceC2910w1) {
        super(interfaceC2910w1);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m615k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m623c(this, consumer);
    }
}
