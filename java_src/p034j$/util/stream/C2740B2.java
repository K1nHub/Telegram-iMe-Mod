package p034j$.util.stream;

import p034j$.util.function.InterfaceC2692d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2740B2 extends AbstractC2850U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2692d f699b;

    /* renamed from: c */
    final /* synthetic */ double f700c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2740B2(EnumC2907e4 enumC2907e4, InterfaceC2692d interfaceC2692d, double d) {
        super(enumC2907e4);
        this.f699b = interfaceC2692d;
        this.f700c = d;
    }

    @Override // p034j$.util.stream.AbstractC2850U2
    /* renamed from: a */
    public InterfaceC2840S2 mo275a() {
        return new C2746C2(this.f700c, this.f699b);
    }
}
