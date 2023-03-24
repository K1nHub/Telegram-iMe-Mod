package p034j$.util.stream;

import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C2901u4 extends AbstractC2931z4 implements InterfaceC2625s.InterfaceC2626a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2901u4(InterfaceC2625s.InterfaceC2626a interfaceC2626a, long j, long j2) {
        super(interfaceC2626a, j, j2);
    }

    C2901u4(InterfaceC2625s.InterfaceC2626a interfaceC2626a, long j, long j2, long j3, long j4) {
        super(interfaceC2626a, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2652D4
    /* renamed from: a */
    protected InterfaceC2625s mo295a(InterfaceC2625s interfaceC2625s, long j, long j2, long j3, long j4) {
        return new C2901u4((InterfaceC2625s.InterfaceC2626a) interfaceC2625s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2931z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo285f() {
        return C2895t4.f1058a;
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
    }
}
