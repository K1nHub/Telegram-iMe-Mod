package p033j$.util.stream;

import p033j$.util.function.InterfaceC2813d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2857B2 extends AbstractC2967U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2813d f834b;

    /* renamed from: c */
    final /* synthetic */ double f835c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2857B2(EnumC3024e4 enumC3024e4, InterfaceC2813d interfaceC2813d, double d) {
        super(enumC3024e4);
        this.f834b = interfaceC2813d;
        this.f835c = d;
    }

    @Override // p033j$.util.stream.AbstractC2967U2
    /* renamed from: a */
    public InterfaceC2957S2 mo342a() {
        return new C2863C2(this.f835c, this.f834b);
    }
}
