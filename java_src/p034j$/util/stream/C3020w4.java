package p034j$.util.stream;

import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3020w4 extends AbstractC3038z4 implements InterfaceC2732s.InterfaceC2734b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3020w4(InterfaceC2732s.InterfaceC2734b interfaceC2734b, long j, long j2) {
        super(interfaceC2734b, j, j2);
    }

    C3020w4(InterfaceC2732s.InterfaceC2734b interfaceC2734b, long j, long j2, long j3, long j4) {
        super(interfaceC2734b, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2759D4
    /* renamed from: a */
    protected InterfaceC2732s mo281a(InterfaceC2732s interfaceC2732s, long j, long j2, long j3, long j4) {
        return new C3020w4((InterfaceC2732s.InterfaceC2734b) interfaceC2732s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m600k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC3038z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo271f() {
        return C3014v4.f1074a;
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m608c(this, consumer);
    }
}
