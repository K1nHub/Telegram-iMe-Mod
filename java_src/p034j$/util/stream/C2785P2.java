package p034j$.util.stream;

import p034j$.util.function.InterfaceC2664o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2785P2 extends AbstractC2811U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2664o f814b;

    /* renamed from: c */
    final /* synthetic */ long f815c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785P2(EnumC2868e4 enumC2868e4, InterfaceC2664o interfaceC2664o, long j) {
        super(enumC2868e4);
        this.f814b = interfaceC2664o;
        this.f815c = j;
    }

    @Override // p034j$.util.stream.AbstractC2811U2
    /* renamed from: a */
    public InterfaceC2801S2 mo270a() {
        return new C2791Q2(this.f815c, this.f814b);
    }
}
