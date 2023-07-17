package p033j$.util.stream;

import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3141w4 extends AbstractC3159z4 implements InterfaceC2853s.InterfaceC2855b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3141w4(InterfaceC2853s.InterfaceC2855b interfaceC2855b, long j, long j2) {
        super(interfaceC2855b, j, j2);
    }

    C3141w4(InterfaceC2853s.InterfaceC2855b interfaceC2855b, long j, long j2, long j3, long j4) {
        super(interfaceC2855b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2880D4
    /* renamed from: a */
    protected InterfaceC2853s mo281a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        return new C3141w4((InterfaceC2853s.InterfaceC2855b) interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m600k(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3159z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo271f() {
        return C3135v4.f1156a;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m608c(this, consumer);
    }
}
