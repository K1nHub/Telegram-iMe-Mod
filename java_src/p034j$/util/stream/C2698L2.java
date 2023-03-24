package p034j$.util.stream;

import p034j$.util.function.InterfaceC2596j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2698L2 extends AbstractC2748U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2596j f783b;

    /* renamed from: c */
    final /* synthetic */ int f784c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2698L2(EnumC2805e4 enumC2805e4, InterfaceC2596j interfaceC2596j, int i) {
        super(enumC2805e4);
        this.f783b = interfaceC2596j;
        this.f784c = i;
    }

    @Override // p034j$.util.stream.AbstractC2748U2
    /* renamed from: a */
    public InterfaceC2738S2 mo289a() {
        return new C2704M2(this.f784c, this.f783b);
    }
}
