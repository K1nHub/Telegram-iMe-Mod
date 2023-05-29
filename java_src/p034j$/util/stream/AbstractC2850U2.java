package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2850U2 implements InterfaceC2814N4 {

    /* renamed from: a */
    private final EnumC2907e4 f848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2850U2(EnumC2907e4 enumC2907e4) {
        this.f848a = enumC2907e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2840S2 mo275a();

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: b */
    public /* synthetic */ int mo362b() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: c */
    public Object mo361c(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        return ((InterfaceC2840S2) new C2855V2(this, abstractC3025y2, interfaceC2727s).invoke()).get();
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: d */
    public Object mo360d(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        InterfaceC2840S2 mo275a = mo275a();
        AbstractC2890c abstractC2890c = (AbstractC2890c) abstractC3025y2;
        Objects.requireNonNull(mo275a);
        abstractC2890c.mo295n0(abstractC2890c.mo287v0(mo275a), interfaceC2727s);
        return mo275a.get();
    }
}
