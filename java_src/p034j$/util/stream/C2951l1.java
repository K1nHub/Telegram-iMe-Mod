package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2718y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2951l1 implements InterfaceC2819N4 {

    /* renamed from: a */
    private final EnumC2912e4 f988a;

    /* renamed from: b */
    final EnumC2945k1 f989b;

    /* renamed from: c */
    final InterfaceC2718y f990c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951l1(EnumC2912e4 enumC2912e4, EnumC2945k1 enumC2945k1, InterfaceC2718y interfaceC2718y) {
        this.f988a = enumC2912e4;
        this.f989b = enumC2945k1;
        this.f990c = interfaceC2718y;
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: b */
    public int mo362b() {
        return EnumC2906d4.f924u | EnumC2906d4.f921r;
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: c */
    public Object mo361c(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        return (Boolean) new C2957m1(this, abstractC3030y2, interfaceC2732s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: d */
    public Object mo360d(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        AbstractC2939j1 abstractC2939j1 = (AbstractC2939j1) this.f990c.get();
        AbstractC2895c abstractC2895c = (AbstractC2895c) abstractC3030y2;
        Objects.requireNonNull(abstractC2939j1);
        abstractC2895c.mo295n0(abstractC2895c.mo287v0(abstractC2939j1), interfaceC2732s);
        return Boolean.valueOf(abstractC2939j1.f974b);
    }
}
