package p034j$.util.stream;

import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3027y4 extends AbstractC3033z4 implements InterfaceC2727s.InterfaceC2730c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3027y4(InterfaceC2727s.InterfaceC2730c interfaceC2730c, long j, long j2) {
        super(interfaceC2730c, j, j2);
    }

    C3027y4(InterfaceC2727s.InterfaceC2730c interfaceC2730c, long j, long j2, long j3, long j4) {
        super(interfaceC2730c, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2754D4
    /* renamed from: a */
    protected InterfaceC2727s mo281a(InterfaceC2727s interfaceC2727s, long j, long j2, long j3, long j4) {
        return new C3027y4((InterfaceC2727s.InterfaceC2730c) interfaceC2727s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m599l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC3033z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo271f() {
        return C3021x4.f1093a;
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m607d(this, consumer);
    }
}
