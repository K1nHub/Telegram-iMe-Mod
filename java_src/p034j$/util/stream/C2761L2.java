package p034j$.util.stream;

import p034j$.util.function.InterfaceC2659j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2761L2 extends AbstractC2811U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2659j f783b;

    /* renamed from: c */
    final /* synthetic */ int f784c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2761L2(EnumC2868e4 enumC2868e4, InterfaceC2659j interfaceC2659j, int i) {
        super(enumC2868e4);
        this.f783b = interfaceC2659j;
        this.f784c = i;
    }

    @Override // p034j$.util.stream.AbstractC2811U2
    /* renamed from: a */
    public InterfaceC2801S2 mo270a() {
        return new C2767M2(this.f784c, this.f783b);
    }
}
