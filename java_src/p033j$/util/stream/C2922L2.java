package p033j$.util.stream;

import p033j$.util.function.InterfaceC2824j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2922L2 extends AbstractC2972U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2824j f921b;

    /* renamed from: c */
    final /* synthetic */ int f922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922L2(EnumC3029e4 enumC3029e4, InterfaceC2824j interfaceC2824j, int i) {
        super(enumC3029e4);
        this.f921b = interfaceC2824j;
        this.f922c = i;
    }

    @Override // p033j$.util.stream.AbstractC2972U2
    /* renamed from: a */
    public InterfaceC2962S2 mo339a() {
        return new C2928M2(this.f922c, this.f921b);
    }
}
