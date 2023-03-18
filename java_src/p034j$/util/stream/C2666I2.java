package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2942I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2666I2 extends AbstractC2734U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2574b f755b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f756c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2597y f757d;

    /* renamed from: e */
    final /* synthetic */ C2942I0 f758e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2666I2(EnumC2791e4 enumC2791e4, InterfaceC2574b interfaceC2574b, BiConsumer biConsumer, InterfaceC2597y interfaceC2597y, C2942I0 c2942i0) {
        super(enumC2791e4);
        this.f755b = interfaceC2574b;
        this.f756c = biConsumer;
        this.f757d = interfaceC2597y;
        this.f758e = c2942i0;
    }

    @Override // p034j$.util.stream.AbstractC2734U2
    /* renamed from: a */
    public InterfaceC2724S2 mo290a() {
        return new C2672J2(this.f757d, this.f756c, this.f755b);
    }

    @Override // p034j$.util.stream.AbstractC2734U2, p034j$.util.stream.InterfaceC2698N4
    /* renamed from: b */
    public int mo377b() {
        if (this.f758e.m228b().contains(EnumC2804h.UNORDERED)) {
            return EnumC2785d4.f917r;
        }
        return 0;
    }
}
