package p033j$.util.stream;

import p033j$.util.function.InterfaceC2879j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2981L2 extends AbstractC3031U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2879j f872b;

    /* renamed from: c */
    final /* synthetic */ int f873c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981L2(EnumC3088e4 enumC3088e4, InterfaceC2879j interfaceC2879j, int i) {
        super(enumC3088e4);
        this.f872b = interfaceC2879j;
        this.f873c = i;
    }

    @Override // p033j$.util.stream.AbstractC3031U2
    /* renamed from: a */
    public InterfaceC3021S2 mo293a() {
        return new C2987M2(this.f873c, this.f872b);
    }
}
