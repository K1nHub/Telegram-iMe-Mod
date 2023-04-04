package p035j$.util.stream;

import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C2977u4 extends AbstractC3007z4 implements InterfaceC2701s.InterfaceC2702a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2977u4(InterfaceC2701s.InterfaceC2702a interfaceC2702a, long j, long j2) {
        super(interfaceC2702a, j, j2);
    }

    C2977u4(InterfaceC2701s.InterfaceC2702a interfaceC2702a, long j, long j2, long j3, long j4) {
        super(interfaceC2702a, j, j2, j3, j4, null);
    }

    @Override // p035j$.util.stream.AbstractC2728D4
    /* renamed from: a */
    protected InterfaceC2701s mo290a(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4) {
        return new C2977u4((InterfaceC2701s.InterfaceC2702a) interfaceC2701s, j, j2, j3, j4);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC3007z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo280f() {
        return C2971t4.f1063a;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
    }
}
