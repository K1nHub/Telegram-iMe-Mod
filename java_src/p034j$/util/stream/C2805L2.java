package p034j$.util.stream;

import p034j$.util.function.InterfaceC2703j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2805L2 extends AbstractC2855U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2703j f786b;

    /* renamed from: c */
    final /* synthetic */ int f787c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2805L2(EnumC2912e4 enumC2912e4, InterfaceC2703j interfaceC2703j, int i) {
        super(enumC2912e4);
        this.f786b = interfaceC2703j;
        this.f787c = i;
    }

    @Override // p034j$.util.stream.AbstractC2855U2
    /* renamed from: a */
    public InterfaceC2845S2 mo275a() {
        return new C2811M2(this.f787c, this.f786b);
    }
}
