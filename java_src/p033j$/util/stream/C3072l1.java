package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2839y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3072l1 implements InterfaceC2940N4 {

    /* renamed from: a */
    private final EnumC3033e4 f1070a;

    /* renamed from: b */
    final EnumC3066k1 f1071b;

    /* renamed from: c */
    final InterfaceC2839y f1072c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3072l1(EnumC3033e4 enumC3033e4, EnumC3066k1 enumC3066k1, InterfaceC2839y interfaceC2839y) {
        this.f1070a = enumC3033e4;
        this.f1071b = enumC3066k1;
        this.f1072c = interfaceC2839y;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo362b() {
        return EnumC3027d4.f1006u | EnumC3027d4.f1003r;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: c */
    public Object mo361c(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return (Boolean) new C3078m1(this, abstractC3151y2, interfaceC2853s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: d */
    public Object mo360d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        AbstractC3060j1 abstractC3060j1 = (AbstractC3060j1) this.f1072c.get();
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
        Objects.requireNonNull(abstractC3060j1);
        abstractC3016c.mo295n0(abstractC3016c.mo287v0(abstractC3060j1), interfaceC2853s);
        return Boolean.valueOf(abstractC3060j1.f1056b);
    }
}
