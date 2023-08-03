package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2839y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3072l1 implements InterfaceC2940N4 {

    /* renamed from: a */
    private final EnumC3033e4 f1073a;

    /* renamed from: b */
    final EnumC3066k1 f1074b;

    /* renamed from: c */
    final InterfaceC2839y f1075c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3072l1(EnumC3033e4 enumC3033e4, EnumC3066k1 enumC3066k1, InterfaceC2839y interfaceC2839y) {
        this.f1073a = enumC3033e4;
        this.f1074b = enumC3066k1;
        this.f1075c = interfaceC2839y;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo380b() {
        return EnumC3027d4.f1009u | EnumC3027d4.f1006r;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: c */
    public Object mo379c(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return (Boolean) new C3078m1(this, abstractC3151y2, interfaceC2853s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: d */
    public Object mo378d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        AbstractC3060j1 abstractC3060j1 = (AbstractC3060j1) this.f1075c.get();
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
        Objects.requireNonNull(abstractC3060j1);
        abstractC3016c.mo313n0(abstractC3016c.mo305v0(abstractC3060j1), interfaceC2853s);
        return Boolean.valueOf(abstractC3060j1.f1059b);
    }
}
