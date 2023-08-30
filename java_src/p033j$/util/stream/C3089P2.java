package p033j$.util.stream;

import p033j$.util.function.InterfaceC2968o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C3089P2 extends AbstractC3115U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2968o f912b;

    /* renamed from: c */
    final /* synthetic */ long f913c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3089P2(EnumC3172e4 enumC3172e4, InterfaceC2968o interfaceC2968o, long j) {
        super(enumC3172e4);
        this.f912b = interfaceC2968o;
        this.f913c = j;
    }

    @Override // p033j$.util.stream.AbstractC3115U2
    /* renamed from: a */
    public InterfaceC3105S2 mo293a() {
        return new C3095Q2(this.f913c, this.f912b);
    }
}
