package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2748U2 implements InterfaceC2712N4 {

    /* renamed from: a */
    private final EnumC2805e4 f845a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2748U2(EnumC2805e4 enumC2805e4) {
        this.f845a = enumC2805e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2738S2 mo289a();

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: b */
    public /* synthetic */ int mo376b() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: c */
    public Object mo375c(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        return ((InterfaceC2738S2) new C2753V2(this, abstractC2923y2, interfaceC2625s).invoke()).get();
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: d */
    public Object mo374d(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        InterfaceC2738S2 mo289a = mo289a();
        AbstractC2788c abstractC2788c = (AbstractC2788c) abstractC2923y2;
        Objects.requireNonNull(mo289a);
        abstractC2788c.mo309n0(abstractC2788c.mo301v0(mo289a), interfaceC2625s);
        return mo289a.get();
    }
}
