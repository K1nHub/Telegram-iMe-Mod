package p035j$.util.stream;

import p035j$.util.function.InterfaceC2677o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2798P2 extends AbstractC2824U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2677o f819b;

    /* renamed from: c */
    final /* synthetic */ long f820c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2798P2(EnumC2881e4 enumC2881e4, InterfaceC2677o interfaceC2677o, long j) {
        super(enumC2881e4);
        this.f819b = interfaceC2677o;
        this.f820c = j;
    }

    @Override // p035j$.util.stream.AbstractC2824U2
    /* renamed from: a */
    public InterfaceC2814S2 mo284a() {
        return new C2804Q2(this.f820c, this.f819b);
    }
}
