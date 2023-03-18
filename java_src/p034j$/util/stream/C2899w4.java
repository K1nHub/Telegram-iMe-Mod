package p034j$.util.stream;

import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C2899w4 extends AbstractC2917z4 implements InterfaceC2611s.InterfaceC2613b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2899w4(InterfaceC2611s.InterfaceC2613b interfaceC2613b, long j, long j2) {
        super(interfaceC2613b, j, j2);
    }

    C2899w4(InterfaceC2611s.InterfaceC2613b interfaceC2613b, long j, long j2, long j3, long j4) {
        super(interfaceC2613b, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2638D4
    /* renamed from: a */
    protected InterfaceC2611s mo296a(InterfaceC2611s interfaceC2611s, long j, long j2, long j3, long j4) {
        return new C2899w4((InterfaceC2611s.InterfaceC2613b) interfaceC2611s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2917z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo286f() {
        return C2893v4.f1070a;
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }
}
