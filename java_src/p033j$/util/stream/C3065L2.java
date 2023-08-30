package p033j$.util.stream;

import p033j$.util.function.InterfaceC2963j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C3065L2 extends AbstractC3115U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2963j f881b;

    /* renamed from: c */
    final /* synthetic */ int f882c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3065L2(EnumC3172e4 enumC3172e4, InterfaceC2963j interfaceC2963j, int i) {
        super(enumC3172e4);
        this.f881b = interfaceC2963j;
        this.f882c = i;
    }

    @Override // p033j$.util.stream.AbstractC3115U2
    /* renamed from: a */
    public InterfaceC3105S2 mo293a() {
        return new C3071M2(this.f882c, this.f881b);
    }
}
