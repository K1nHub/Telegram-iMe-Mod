package p034j$.util.stream;

import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C2872f2 extends AbstractC2890i2 implements InterfaceC2688s.InterfaceC2689a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2872f2(InterfaceC2961u1 interfaceC2961u1) {
        super(interfaceC2961u1);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m597j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m605b(this, consumer);
    }
}
