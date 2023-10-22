package p033j$.util.stream;

import p033j$.util.function.InterfaceC2814d;
/* renamed from: j$.util.stream.B2 */
/* loaded from: classes2.dex */
class C2858B2 extends AbstractC2968U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2814d f834b;

    /* renamed from: c */
    final /* synthetic */ double f835c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2858B2(EnumC3025e4 enumC3025e4, InterfaceC2814d interfaceC2814d, double d) {
        super(enumC3025e4);
        this.f834b = interfaceC2814d;
        this.f835c = d;
    }

    @Override // p033j$.util.stream.AbstractC2968U2
    /* renamed from: a */
    public InterfaceC2958S2 mo338a() {
        return new C2864C2(this.f835c, this.f834b);
    }
}
