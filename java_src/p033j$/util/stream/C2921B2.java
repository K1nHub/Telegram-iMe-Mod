package p033j$.util.stream;

import p033j$.util.function.InterfaceC2873d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2921B2 extends AbstractC3031U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2873d f785b;

    /* renamed from: c */
    final /* synthetic */ double f786c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921B2(EnumC3088e4 enumC3088e4, InterfaceC2873d interfaceC2873d, double d) {
        super(enumC3088e4);
        this.f785b = interfaceC2873d;
        this.f786c = d;
    }

    @Override // p033j$.util.stream.AbstractC3031U2
    /* renamed from: a */
    public InterfaceC3021S2 mo293a() {
        return new C2927C2(this.f786c, this.f785b);
    }
}
