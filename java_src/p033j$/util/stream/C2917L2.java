package p033j$.util.stream;

import p033j$.util.function.InterfaceC2819j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2917L2 extends AbstractC2967U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2819j f921b;

    /* renamed from: c */
    final /* synthetic */ int f922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917L2(EnumC3024e4 enumC3024e4, InterfaceC2819j interfaceC2819j, int i) {
        super(enumC3024e4);
        this.f921b = interfaceC2819j;
        this.f922c = i;
    }

    @Override // p033j$.util.stream.AbstractC2967U2
    /* renamed from: a */
    public InterfaceC2957S2 mo342a() {
        return new C2923M2(this.f922c, this.f921b);
    }
}
