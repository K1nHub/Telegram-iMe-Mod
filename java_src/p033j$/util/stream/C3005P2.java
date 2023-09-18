package p033j$.util.stream;

import p033j$.util.function.InterfaceC2884o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C3005P2 extends AbstractC3031U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2884o f903b;

    /* renamed from: c */
    final /* synthetic */ long f904c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005P2(EnumC3088e4 enumC3088e4, InterfaceC2884o interfaceC2884o, long j) {
        super(enumC3088e4);
        this.f903b = interfaceC2884o;
        this.f904c = j;
    }

    @Override // p033j$.util.stream.AbstractC3031U2
    /* renamed from: a */
    public InterfaceC3021S2 mo293a() {
        return new C3011Q2(this.f904c, this.f903b);
    }
}
