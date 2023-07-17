package p033j$.util.stream;

import p033j$.util.function.InterfaceC2818d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2866B2 extends AbstractC2976U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2818d f781b;

    /* renamed from: c */
    final /* synthetic */ double f782c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2866B2(EnumC3033e4 enumC3033e4, InterfaceC2818d interfaceC2818d, double d) {
        super(enumC3033e4);
        this.f781b = interfaceC2818d;
        this.f782c = d;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo275a() {
        return new C2872C2(this.f782c, this.f781b);
    }
}
