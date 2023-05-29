package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2855U2 implements InterfaceC2819N4 {

    /* renamed from: a */
    private final EnumC2912e4 f848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2855U2(EnumC2912e4 enumC2912e4) {
        this.f848a = enumC2912e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2845S2 mo275a();

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: b */
    public /* synthetic */ int mo362b() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: c */
    public Object mo361c(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        return ((InterfaceC2845S2) new C2860V2(this, abstractC3030y2, interfaceC2732s).invoke()).get();
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: d */
    public Object mo360d(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        InterfaceC2845S2 mo275a = mo275a();
        AbstractC2895c abstractC2895c = (AbstractC2895c) abstractC3030y2;
        Objects.requireNonNull(mo275a);
        abstractC2895c.mo295n0(abstractC2895c.mo287v0(mo275a), interfaceC2732s);
        return mo275a.get();
    }
}
