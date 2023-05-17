package p034j$.util.stream;

import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C2911f2 extends AbstractC2929i2 implements InterfaceC2727s.InterfaceC2728a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2911f2(InterfaceC3000u1 interfaceC3000u1) {
        super(interfaceC3000u1);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m609b(this, consumer);
    }
}
