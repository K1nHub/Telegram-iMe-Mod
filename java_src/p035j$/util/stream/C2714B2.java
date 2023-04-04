package p035j$.util.stream;

import p035j$.util.function.InterfaceC2666d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2714B2 extends AbstractC2824U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2666d f701b;

    /* renamed from: c */
    final /* synthetic */ double f702c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2714B2(EnumC2881e4 enumC2881e4, InterfaceC2666d interfaceC2666d, double d) {
        super(enumC2881e4);
        this.f701b = interfaceC2666d;
        this.f702c = d;
    }

    @Override // p035j$.util.stream.AbstractC2824U2
    /* renamed from: a */
    public InterfaceC2814S2 mo284a() {
        return new C2720C2(this.f702c, this.f701b);
    }
}
