package p034j$.util.stream;

import p034j$.util.function.InterfaceC2576d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2624B2 extends AbstractC2734U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2576d f695b;

    /* renamed from: c */
    final /* synthetic */ double f696c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2624B2(EnumC2791e4 enumC2791e4, InterfaceC2576d interfaceC2576d, double d) {
        super(enumC2791e4);
        this.f695b = interfaceC2576d;
        this.f696c = d;
    }

    @Override // p034j$.util.stream.AbstractC2734U2
    /* renamed from: a */
    public InterfaceC2724S2 mo290a() {
        return new C2630C2(this.f696c, this.f695b);
    }
}
