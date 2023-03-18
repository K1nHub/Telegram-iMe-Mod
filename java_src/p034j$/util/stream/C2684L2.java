package p034j$.util.stream;

import p034j$.util.function.InterfaceC2582j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2684L2 extends AbstractC2734U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2582j f782b;

    /* renamed from: c */
    final /* synthetic */ int f783c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2684L2(EnumC2791e4 enumC2791e4, InterfaceC2582j interfaceC2582j, int i) {
        super(enumC2791e4);
        this.f782b = interfaceC2582j;
        this.f783c = i;
    }

    @Override // p034j$.util.stream.AbstractC2734U2
    /* renamed from: a */
    public InterfaceC2724S2 mo290a() {
        return new C2690M2(this.f783c, this.f782b);
    }
}
