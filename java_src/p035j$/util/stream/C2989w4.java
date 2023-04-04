package p035j$.util.stream;

import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C2989w4 extends AbstractC3007z4 implements InterfaceC2701s.InterfaceC2703b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2989w4(InterfaceC2701s.InterfaceC2703b interfaceC2703b, long j, long j2) {
        super(interfaceC2703b, j, j2);
    }

    C2989w4(InterfaceC2701s.InterfaceC2703b interfaceC2703b, long j, long j2, long j3, long j4) {
        super(interfaceC2703b, j, j2, j3, j4, null);
    }

    @Override // p035j$.util.stream.AbstractC2728D4
    /* renamed from: a */
    protected InterfaceC2701s mo290a(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4) {
        return new C2989w4((InterfaceC2701s.InterfaceC2703b) interfaceC2701s, j, j2, j3, j4);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m610k(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC3007z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo280f() {
        return C2983v4.f1076a;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m618c(this, consumer);
    }
}
