package p034j$.util.stream;

import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C2964u4 extends AbstractC2994z4 implements InterfaceC2688s.InterfaceC2689a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2964u4(InterfaceC2688s.InterfaceC2689a interfaceC2689a, long j, long j2) {
        super(interfaceC2689a, j, j2);
    }

    C2964u4(InterfaceC2688s.InterfaceC2689a interfaceC2689a, long j, long j2, long j3, long j4) {
        super(interfaceC2689a, j, j2, j3, j4, null);
    }

    @Override // p034j$.util.stream.AbstractC2715D4
    /* renamed from: a */
    protected InterfaceC2688s mo276a(InterfaceC2688s interfaceC2688s, long j, long j2, long j3, long j4) {
        return new C2964u4((InterfaceC2688s.InterfaceC2689a) interfaceC2688s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m597j(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2994z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo266f() {
        return C2958t4.f1058a;
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m605b(this, consumer);
    }
}
