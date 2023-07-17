package p033j$.util.stream;

import p033j$.util.function.InterfaceC2824j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2926L2 extends AbstractC2976U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2824j f868b;

    /* renamed from: c */
    final /* synthetic */ int f869c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926L2(EnumC3033e4 enumC3033e4, InterfaceC2824j interfaceC2824j, int i) {
        super(enumC3033e4);
        this.f868b = interfaceC2824j;
        this.f869c = i;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo275a() {
        return new C2932M2(this.f869c, this.f868b);
    }
}
