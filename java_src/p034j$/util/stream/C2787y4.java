package p034j$.util.stream;

import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C2787y4 extends AbstractC2793z4 implements InterfaceC2487s.InterfaceC2490c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2787y4(InterfaceC2487s.InterfaceC2490c interfaceC2490c, long j, long j2) {
        super(interfaceC2490c, j, j2);
    }

    C2787y4(InterfaceC2487s.InterfaceC2490c interfaceC2490c, long j, long j2, long j3, long j4) {
        super(interfaceC2490c, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2514D4
    /* renamed from: a */
    protected InterfaceC2487s mo296a(InterfaceC2487s interfaceC2487s, long j, long j2, long j3, long j4) {
        return new C2787y4((InterfaceC2487s.InterfaceC2490c) interfaceC2487s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m615l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2793z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo286f() {
        return C2781x4.f1084a;
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m623d(this, consumer);
    }
}
