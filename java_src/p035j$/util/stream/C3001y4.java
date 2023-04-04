package p035j$.util.stream;

import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3001y4 extends AbstractC3007z4 implements InterfaceC2701s.InterfaceC2704c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3001y4(InterfaceC2701s.InterfaceC2704c interfaceC2704c, long j, long j2) {
        super(interfaceC2704c, j, j2);
    }

    C3001y4(InterfaceC2701s.InterfaceC2704c interfaceC2704c, long j, long j2, long j3, long j4) {
        super(interfaceC2704c, j, j2, j3, j4, null);
    }

    @Override // p035j$.util.stream.AbstractC2728D4
    /* renamed from: a */
    protected InterfaceC2701s mo290a(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4) {
        return new C3001y4((InterfaceC2701s.InterfaceC2704c) interfaceC2701s, j, j2, j3, j4);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m609l(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC3007z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo280f() {
        return C2995x4.f1095a;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m617d(this, consumer);
    }
}
