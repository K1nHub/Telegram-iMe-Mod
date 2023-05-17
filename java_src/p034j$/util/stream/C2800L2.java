package p034j$.util.stream;

import p034j$.util.function.InterfaceC2698j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2800L2 extends AbstractC2850U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2698j f786b;

    /* renamed from: c */
    final /* synthetic */ int f787c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2800L2(EnumC2907e4 enumC2907e4, InterfaceC2698j interfaceC2698j, int i) {
        super(enumC2907e4);
        this.f786b = interfaceC2698j;
        this.f787c = i;
    }

    @Override // p034j$.util.stream.AbstractC2850U2
    /* renamed from: a */
    public InterfaceC2840S2 mo275a() {
        return new C2806M2(this.f787c, this.f786b);
    }
}
