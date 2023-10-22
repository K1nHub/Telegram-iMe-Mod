package p033j$.util.stream;

import p033j$.util.function.InterfaceC2820j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2918L2 extends AbstractC2968U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2820j f921b;

    /* renamed from: c */
    final /* synthetic */ int f922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2918L2(EnumC3025e4 enumC3025e4, InterfaceC2820j interfaceC2820j, int i) {
        super(enumC3025e4);
        this.f921b = interfaceC2820j;
        this.f922c = i;
    }

    @Override // p033j$.util.stream.AbstractC2968U2
    /* renamed from: a */
    public InterfaceC2958S2 mo338a() {
        return new C2924M2(this.f922c, this.f921b);
    }
}
