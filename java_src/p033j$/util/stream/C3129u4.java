package p033j$.util.stream;

import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3129u4 extends AbstractC3159z4 implements InterfaceC2853s.InterfaceC2854a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3129u4(InterfaceC2853s.InterfaceC2854a interfaceC2854a, long j, long j2) {
        super(interfaceC2854a, j, j2);
    }

    C3129u4(InterfaceC2853s.InterfaceC2854a interfaceC2854a, long j, long j2, long j3, long j4) {
        super(interfaceC2854a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2880D4
    /* renamed from: a */
    protected InterfaceC2853s mo281a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        return new C3129u4((InterfaceC2853s.InterfaceC2854a) interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m601j(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3159z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo271f() {
        return C3123t4.f1143a;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m609b(this, consumer);
    }
}
