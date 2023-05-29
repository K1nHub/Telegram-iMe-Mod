package p034j$.util.stream;

import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3032y4 extends AbstractC3038z4 implements InterfaceC2732s.InterfaceC2735c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3032y4(InterfaceC2732s.InterfaceC2735c interfaceC2735c, long j, long j2) {
        super(interfaceC2735c, j, j2);
    }

    C3032y4(InterfaceC2732s.InterfaceC2735c interfaceC2735c, long j, long j2, long j3, long j4) {
        super(interfaceC2735c, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2759D4
    /* renamed from: a */
    protected InterfaceC2732s mo281a(InterfaceC2732s interfaceC2732s, long j, long j2, long j3, long j4) {
        return new C3032y4((InterfaceC2732s.InterfaceC2735c) interfaceC2732s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m599l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC3038z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo271f() {
        return C3026x4.f1093a;
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m607d(this, consumer);
    }
}
