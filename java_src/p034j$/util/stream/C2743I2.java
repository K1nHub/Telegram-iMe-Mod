package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3019I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2743I2 extends AbstractC2811U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2651b f756b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f757c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2674y f758d;

    /* renamed from: e */
    final /* synthetic */ C3019I0 f759e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2743I2(EnumC2868e4 enumC2868e4, InterfaceC2651b interfaceC2651b, BiConsumer biConsumer, InterfaceC2674y interfaceC2674y, C3019I0 c3019i0) {
        super(enumC2868e4);
        this.f756b = interfaceC2651b;
        this.f757c = biConsumer;
        this.f758d = interfaceC2674y;
        this.f759e = c3019i0;
    }

    @Override // p034j$.util.stream.AbstractC2811U2
    /* renamed from: a */
    public InterfaceC2801S2 mo270a() {
        return new C2749J2(this.f758d, this.f757c, this.f756b);
    }

    @Override // p034j$.util.stream.AbstractC2811U2, p034j$.util.stream.InterfaceC2775N4
    /* renamed from: b */
    public int mo357b() {
        if (this.f759e.m208b().contains(EnumC2881h.UNORDERED)) {
            return EnumC2862d4.f918r;
        }
        return 0;
    }
}
