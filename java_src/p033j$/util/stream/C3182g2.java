package p033j$.util.stream;

import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C3182g2 extends AbstractC3194i2 implements InterfaceC2992s.InterfaceC2994b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3182g2(InterfaceC3277w1 interfaceC3277w1) {
        super(interfaceC3277w1);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }
}
