package p033j$.util.stream;

import p033j$.util.function.InterfaceC2957d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C3005B2 extends AbstractC3115U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2957d f794b;

    /* renamed from: c */
    final /* synthetic */ double f795c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005B2(EnumC3172e4 enumC3172e4, InterfaceC2957d interfaceC2957d, double d) {
        super(enumC3172e4);
        this.f794b = interfaceC2957d;
        this.f795c = d;
    }

    @Override // p033j$.util.stream.AbstractC3115U2
    /* renamed from: a */
    public InterfaceC3105S2 mo293a() {
        return new C3011C2(this.f795c, this.f794b);
    }
}
