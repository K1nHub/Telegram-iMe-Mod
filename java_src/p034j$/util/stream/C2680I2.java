package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2956I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2680I2 extends AbstractC2748U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2588b f756b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f757c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2611y f758d;

    /* renamed from: e */
    final /* synthetic */ C2956I0 f759e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2680I2(EnumC2805e4 enumC2805e4, InterfaceC2588b interfaceC2588b, BiConsumer biConsumer, InterfaceC2611y interfaceC2611y, C2956I0 c2956i0) {
        super(enumC2805e4);
        this.f756b = interfaceC2588b;
        this.f757c = biConsumer;
        this.f758d = interfaceC2611y;
        this.f759e = c2956i0;
    }

    @Override // p034j$.util.stream.AbstractC2748U2
    /* renamed from: a */
    public InterfaceC2738S2 mo289a() {
        return new C2686J2(this.f758d, this.f757c, this.f756b);
    }

    @Override // p034j$.util.stream.AbstractC2748U2, p034j$.util.stream.InterfaceC2712N4
    /* renamed from: b */
    public int mo376b() {
        if (this.f759e.m227b().contains(EnumC2818h.UNORDERED)) {
            return EnumC2799d4.f918r;
        }
        return 0;
    }
}
