package p034j$.util.stream;

import p034j$.util.function.InterfaceC2452d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2500B2 extends AbstractC2610U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2452d f690b;

    /* renamed from: c */
    final /* synthetic */ double f691c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2500B2(EnumC2667e4 enumC2667e4, InterfaceC2452d interfaceC2452d, double d) {
        super(enumC2667e4);
        this.f690b = interfaceC2452d;
        this.f691c = d;
    }

    @Override // p034j$.util.stream.AbstractC2610U2
    /* renamed from: a */
    public InterfaceC2600S2 mo290a() {
        return new C2506C2(this.f691c, this.f690b);
    }
}
