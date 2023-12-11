package p033j$.util.stream;

import p033j$.util.function.InterfaceC2815d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2859B2 extends AbstractC2969U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2815d f834b;

    /* renamed from: c */
    final /* synthetic */ double f835c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2859B2(EnumC3026e4 enumC3026e4, InterfaceC2815d interfaceC2815d, double d) {
        super(enumC3026e4);
        this.f834b = interfaceC2815d;
        this.f835c = d;
    }

    @Override // p033j$.util.stream.AbstractC2969U2
    /* renamed from: a */
    public InterfaceC2959S2 mo339a() {
        return new C2865C2(this.f835c, this.f834b);
    }
}
