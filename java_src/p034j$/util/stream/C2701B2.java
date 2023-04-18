package p034j$.util.stream;

import p034j$.util.function.InterfaceC2653d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2701B2 extends AbstractC2811U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2653d f696b;

    /* renamed from: c */
    final /* synthetic */ double f697c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701B2(EnumC2868e4 enumC2868e4, InterfaceC2653d interfaceC2653d, double d) {
        super(enumC2868e4);
        this.f696b = interfaceC2653d;
        this.f697c = d;
    }

    @Override // p034j$.util.stream.AbstractC2811U2
    /* renamed from: a */
    public InterfaceC2801S2 mo270a() {
        return new C2707C2(this.f697c, this.f696b);
    }
}
