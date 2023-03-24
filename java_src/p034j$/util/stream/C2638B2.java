package p034j$.util.stream;

import p034j$.util.function.InterfaceC2590d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2638B2 extends AbstractC2748U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2590d f696b;

    /* renamed from: c */
    final /* synthetic */ double f697c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2638B2(EnumC2805e4 enumC2805e4, InterfaceC2590d interfaceC2590d, double d) {
        super(enumC2805e4);
        this.f696b = interfaceC2590d;
        this.f697c = d;
    }

    @Override // p034j$.util.stream.AbstractC2748U2
    /* renamed from: a */
    public InterfaceC2738S2 mo289a() {
        return new C2644C2(this.f697c, this.f696b);
    }
}
