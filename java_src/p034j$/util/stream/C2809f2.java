package p034j$.util.stream;

import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C2809f2 extends AbstractC2827i2 implements InterfaceC2625s.InterfaceC2626a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2809f2(InterfaceC2898u1 interfaceC2898u1) {
        super(interfaceC2898u1);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
    }
}
