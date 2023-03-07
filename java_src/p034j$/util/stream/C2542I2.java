package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2818I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2542I2 extends AbstractC2610U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2450b f750b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f751c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2473y f752d;

    /* renamed from: e */
    final /* synthetic */ C2818I0 f753e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2542I2(EnumC2667e4 enumC2667e4, InterfaceC2450b interfaceC2450b, BiConsumer biConsumer, InterfaceC2473y interfaceC2473y, C2818I0 c2818i0) {
        super(enumC2667e4);
        this.f750b = interfaceC2450b;
        this.f751c = biConsumer;
        this.f752d = interfaceC2473y;
        this.f753e = c2818i0;
    }

    @Override // p034j$.util.stream.AbstractC2610U2
    /* renamed from: a */
    public InterfaceC2600S2 mo290a() {
        return new C2548J2(this.f752d, this.f751c, this.f750b);
    }

    @Override // p034j$.util.stream.AbstractC2610U2, p034j$.util.stream.InterfaceC2574N4
    /* renamed from: b */
    public int mo377b() {
        if (this.f753e.m228b().contains(EnumC2680h.UNORDERED)) {
            return EnumC2661d4.f912r;
        }
        return 0;
    }
}
