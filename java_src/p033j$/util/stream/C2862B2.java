package p033j$.util.stream;

import p033j$.util.function.InterfaceC2818d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2862B2 extends AbstractC2972U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2818d f834b;

    /* renamed from: c */
    final /* synthetic */ double f835c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2862B2(EnumC3029e4 enumC3029e4, InterfaceC2818d interfaceC2818d, double d) {
        super(enumC3029e4);
        this.f834b = interfaceC2818d;
        this.f835c = d;
    }

    @Override // p033j$.util.stream.AbstractC2972U2
    /* renamed from: a */
    public InterfaceC2962S2 mo339a() {
        return new C2868C2(this.f835c, this.f834b);
    }
}
