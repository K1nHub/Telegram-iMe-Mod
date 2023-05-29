package p034j$.util.stream;

import p034j$.util.function.InterfaceC2697d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2745B2 extends AbstractC2855U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2697d f699b;

    /* renamed from: c */
    final /* synthetic */ double f700c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2745B2(EnumC2912e4 enumC2912e4, InterfaceC2697d interfaceC2697d, double d) {
        super(enumC2912e4);
        this.f699b = interfaceC2697d;
        this.f700c = d;
    }

    @Override // p034j$.util.stream.AbstractC2855U2
    /* renamed from: a */
    public InterfaceC2845S2 mo275a() {
        return new C2751C2(this.f700c, this.f699b);
    }
}
