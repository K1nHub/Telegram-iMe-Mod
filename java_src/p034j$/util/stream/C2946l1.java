package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2713y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2946l1 implements InterfaceC2814N4 {

    /* renamed from: a */
    private final EnumC2907e4 f988a;

    /* renamed from: b */
    final EnumC2940k1 f989b;

    /* renamed from: c */
    final InterfaceC2713y f990c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2946l1(EnumC2907e4 enumC2907e4, EnumC2940k1 enumC2940k1, InterfaceC2713y interfaceC2713y) {
        this.f988a = enumC2907e4;
        this.f989b = enumC2940k1;
        this.f990c = interfaceC2713y;
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: b */
    public int mo362b() {
        return EnumC2901d4.f924u | EnumC2901d4.f921r;
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: c */
    public Object mo361c(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        return (Boolean) new C2952m1(this, abstractC3025y2, interfaceC2727s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: d */
    public Object mo360d(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        AbstractC2934j1 abstractC2934j1 = (AbstractC2934j1) this.f990c.get();
        AbstractC2890c abstractC2890c = (AbstractC2890c) abstractC3025y2;
        Objects.requireNonNull(abstractC2934j1);
        abstractC2890c.mo295n0(abstractC2890c.mo287v0(abstractC2934j1), interfaceC2727s);
        return Boolean.valueOf(abstractC2934j1.f974b);
    }
}
