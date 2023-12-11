package p033j$.util.stream;

import p033j$.util.function.InterfaceC2821j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2919L2 extends AbstractC2969U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2821j f921b;

    /* renamed from: c */
    final /* synthetic */ int f922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2919L2(EnumC3026e4 enumC3026e4, InterfaceC2821j interfaceC2821j, int i) {
        super(enumC3026e4);
        this.f921b = interfaceC2821j;
        this.f922c = i;
    }

    @Override // p033j$.util.stream.AbstractC2969U2
    /* renamed from: a */
    public InterfaceC2959S2 mo339a() {
        return new C2925M2(this.f922c, this.f921b);
    }
}
