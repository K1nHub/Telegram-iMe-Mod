package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2978y;
import p033j$.wrappers.C3323I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C3047I2 extends AbstractC3115U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2955b f854b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f855c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2978y f856d;

    /* renamed from: e */
    final /* synthetic */ C3323I0 f857e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3047I2(EnumC3172e4 enumC3172e4, InterfaceC2955b interfaceC2955b, BiConsumer biConsumer, InterfaceC2978y interfaceC2978y, C3323I0 c3323i0) {
        super(enumC3172e4);
        this.f854b = interfaceC2955b;
        this.f855c = biConsumer;
        this.f856d = interfaceC2978y;
        this.f857e = c3323i0;
    }

    @Override // p033j$.util.stream.AbstractC3115U2
    /* renamed from: a */
    public InterfaceC3105S2 mo293a() {
        return new C3053J2(this.f856d, this.f855c, this.f854b);
    }

    @Override // p033j$.util.stream.AbstractC3115U2, p033j$.util.stream.InterfaceC3079N4
    /* renamed from: b */
    public int mo380b() {
        if (this.f857e.m231b().contains(EnumC3185h.UNORDERED)) {
            return EnumC3166d4.f1016r;
        }
        return 0;
    }
}
