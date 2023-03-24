package p034j$.util.stream;

import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.h2 */
/* loaded from: classes2.dex */
final class C2821h2 extends AbstractC2827i2 implements InterfaceC2625s.InterfaceC2628c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2821h2(InterfaceC2922y1 interfaceC2922y1) {
        super(interfaceC2922y1);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m614l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m622d(this, consumer);
    }
}
