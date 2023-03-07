package p034j$.util.stream;

import p034j$.util.function.InterfaceC2458j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2560L2 extends AbstractC2610U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2458j f777b;

    /* renamed from: c */
    final /* synthetic */ int f778c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2560L2(EnumC2667e4 enumC2667e4, InterfaceC2458j interfaceC2458j, int i) {
        super(enumC2667e4);
        this.f777b = interfaceC2458j;
        this.f778c = i;
    }

    @Override // p034j$.util.stream.AbstractC2610U2
    /* renamed from: a */
    public InterfaceC2600S2 mo290a() {
        return new C2566M2(this.f778c, this.f777b);
    }
}
