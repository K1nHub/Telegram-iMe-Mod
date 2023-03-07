package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2473y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2706l1 implements InterfaceC2574N4 {

    /* renamed from: a */
    private final EnumC2667e4 f979a;

    /* renamed from: b */
    final EnumC2700k1 f980b;

    /* renamed from: c */
    final InterfaceC2473y f981c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2706l1(EnumC2667e4 enumC2667e4, EnumC2700k1 enumC2700k1, InterfaceC2473y interfaceC2473y) {
        this.f979a = enumC2667e4;
        this.f980b = enumC2700k1;
        this.f981c = interfaceC2473y;
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: b */
    public int mo377b() {
        return EnumC2661d4.f915u | EnumC2661d4.f912r;
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: c */
    public Object mo376c(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        return (Boolean) new C2712m1(this, abstractC2785y2, interfaceC2487s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: d */
    public Object mo375d(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        AbstractC2694j1 abstractC2694j1 = (AbstractC2694j1) this.f981c.get();
        AbstractC2650c abstractC2650c = (AbstractC2650c) abstractC2785y2;
        Objects.requireNonNull(abstractC2694j1);
        abstractC2650c.mo310n0(abstractC2650c.mo302v0(abstractC2694j1), interfaceC2487s);
        return Boolean.valueOf(abstractC2694j1.f965b);
    }
}
