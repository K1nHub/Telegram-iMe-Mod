package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2611y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2844l1 implements InterfaceC2712N4 {

    /* renamed from: a */
    private final EnumC2805e4 f985a;

    /* renamed from: b */
    final EnumC2838k1 f986b;

    /* renamed from: c */
    final InterfaceC2611y f987c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2844l1(EnumC2805e4 enumC2805e4, EnumC2838k1 enumC2838k1, InterfaceC2611y interfaceC2611y) {
        this.f985a = enumC2805e4;
        this.f986b = enumC2838k1;
        this.f987c = interfaceC2611y;
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: b */
    public int mo376b() {
        return EnumC2799d4.f921u | EnumC2799d4.f918r;
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: c */
    public Object mo375c(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        return (Boolean) new C2850m1(this, abstractC2923y2, interfaceC2625s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: d */
    public Object mo374d(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        AbstractC2832j1 abstractC2832j1 = (AbstractC2832j1) this.f987c.get();
        AbstractC2788c abstractC2788c = (AbstractC2788c) abstractC2923y2;
        Objects.requireNonNull(abstractC2832j1);
        abstractC2788c.mo309n0(abstractC2788c.mo301v0(abstractC2832j1), interfaceC2625s);
        return Boolean.valueOf(abstractC2832j1.f971b);
    }
}
