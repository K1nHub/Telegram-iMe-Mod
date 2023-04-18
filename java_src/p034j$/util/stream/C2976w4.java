package p034j$.util.stream;

import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C2976w4 extends AbstractC2994z4 implements InterfaceC2688s.InterfaceC2690b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2976w4(InterfaceC2688s.InterfaceC2690b interfaceC2690b, long j, long j2) {
        super(interfaceC2690b, j, j2);
    }

    C2976w4(InterfaceC2688s.InterfaceC2690b interfaceC2690b, long j, long j2, long j3, long j4) {
        super(interfaceC2690b, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2715D4
    /* renamed from: a */
    protected InterfaceC2688s mo276a(InterfaceC2688s interfaceC2688s, long j, long j2, long j3, long j4) {
        return new C2976w4((InterfaceC2688s.InterfaceC2690b) interfaceC2688s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m596k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2994z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo266f() {
        return C2970v4.f1071a;
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m604c(this, consumer);
    }
}
